LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula04 IS
        GENERIC (
                larguraDados : NATURAL := 8;
                larguraEnderecos : NATURAL := 8;
                simulacao : BOOLEAN := TRUE -- para gravar na placa, altere de TRUE para FALSE
        );
        PORT (
                CLOCK_50 : IN STD_LOGIC;
                KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
                SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
                PC_OUT : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
                LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
                REG_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF Aula04 IS

        SIGNAL proxPC : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL Endereco : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);

        SIGNAL CLK : STD_LOGIC;

        SIGNAL INSTRUCTION : STD_LOGIC_VECTOR (12 DOWNTO 0); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)

        SIGNAL MUX_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MUX_B : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MUX_SELECTOR : STD_LOGIC;
        SIGNAL MUX_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);

        SIGNAL REGA_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL REGA_ENABLE : STD_LOGIC;
        SIGNAL REGA_RESET : STD_LOGIC;
        SIGNAL REGA_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);

        SIGNAL ALU_A_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL ALU_B_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL ALU_SELECTOR : STD_LOGIC_VECTOR (1 DOWNTO 0);
        SIGNAL ALU_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);

        SIGNAL MEM_ADDRESS : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MEM_ENABLE : STD_LOGIC;
        SIGNAL MEM_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MEM_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MEM_ENABLE_READ : STD_LOGIC;
        SIGNAL MEM_ENABLE_WRITE : STD_LOGIC;

        SIGNAL OP_CODE : STD_LOGIC_VECTOR (3 DOWNTO 0);
        SIGNAL DECODER_OUT : STD_LOGIC_VECTOR (5 DOWNTO 0);

BEGIN
        gravar : IF simulacao GENERATE
                CLK <= KEY(0);
        ELSE
                GENERATE
                        detectorSub0 : work.edgeDetector(bordaSubida)
                        PORT MAP(
                                clk => CLOCK_50,
                                entrada => (NOT KEY(0)),
                                saida => CLK
                        );
                END GENERATE;


        PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
                PORT MAP(
                        DIN => proxPC,
                        DOUT => Endereco,
                        ENABLE => '1',
                        CLK => CLK,
                        RST => '0'
                );

        incrementaPC : ENTITY work.somaConstante GENERIC MAP (larguraDados => larguraEnderecos, constante => 1)
                PORT MAP(
                        entrada => Endereco,
                        saida => proxPC
                );

        MUX_A <= MEM_OUT;
        MUX_B <= INSTRUCTION(larguraDados - 1 DOWNTO 0);
        MUX_SELECTOR <= DECODER_OUT(5);
        MUX1 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        entradaA_MUX => MUX_A,
                        entradaB_MUX => MUX_B,
                        seletor_MUX => MUX_SELECTOR,
                        saida_MUX => MUX_OUT
                );

        REGA_IN <= MUX_OUT;
        REGA_ENABLE <= DECODER_OUT(4);
        REGA : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        DIN => REGA_IN,
                        DOUT => REGA_OUT,
                        ENABLE => REGA_ENABLE,
                        CLK => CLK,
                        RST => REGA_RESET
                );

        ALU_A_IN <= REGA_OUT;
        ALU_B_IN <= MUX_OUT;
        ALU_SELECTOR <= DECODER_OUT(3 DOWNTO 2);
        ULA1 : ENTITY work.ULASomaSub GENERIC MAP(larguraDados => larguraDados)
                PORT MAP(
                        entradaA => ALU_A_IN,
                        entradaB => ALU_B_IN,
                        saida => ALU_OUT,
                        seletor => ALU_SELECTOR
                );

        ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 13, addrWidth => 4)
                PORT MAP(
                        Endereco => Endereco,
                        Dado => INSTRUCTION
                );

        OP_CODE <= INSTRUCTION(12 DOWNTO 9);
        DECODER_INSTRU : ENTITY work.decoderInstru
                PORT MAP(
                        opcode => OP_CODE,
                        saida => DECODER_OUT
                );

        MEM_ADDRESS <= INSTRUCTION(larguraDados - 1 DOWNTO 0);
        MEM_ENABLE <= INSTRUCTION(8);
        MEM_IN <= REGA_OUT;
        MEM_ENABLE_READ <= DECODER_OUT(1);
        MEM_ENABLE_WRITE <= DECODER_OUT(0);
        RAM1 : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => larguraDados, addrWidth => larguraEnderecos)
                PORT MAP(
                        addr => MEM_ADDRESS,
                        we => MEM_ENABLE_WRITE,
                        re => MEM_ENABLE_READ,
                        habilita => MEM_ENABLE,
                        dado_in => MEM_IN,
                        dado_out => MEM_OUT,
                        clk => CLK
                );

        REG_OUT <= ALU_OUT;
        PC_OUT <= Endereco;
        
END architecture;