LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula04 IS
        GENERIC (
                larguraDados : NATURAL := 8;
                larguraEnderecos : NATURAL := 8;
                simulacao : BOOLEAN := FALSE
        );
        PORT (
                CLOCK_50 : IN STD_LOGIC;
					 KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
                HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
                PC_OUT : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF Aula04 IS

        -- signals
        SIGNAL CLK : STD_LOGIC;
        SIGNAL proxPC : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL Endereco : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL REGA_RESET : STD_LOGIC;
        SIGNAL INSTRUCTION : STD_LOGIC_VECTOR (12 DOWNTO 0); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)
        SIGNAL MUX_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL REGA_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL ALU_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MEM_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL DECODER_OUT : STD_LOGIC_VECTOR (5 DOWNTO 0);

        -- aliases para facilitar a leitura do código
        ALIAS MUX_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS MEM_OUT;
        ALIAS MUX_B : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS INSTRUCTION(larguraDados - 1 DOWNTO 0);
        ALIAS MUX_SELECTOR : STD_LOGIC IS DECODER_OUT(5);

        ALIAS REGA_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS ALU_OUT;
        ALIAS REGA_ENABLE : STD_LOGIC IS DECODER_OUT(4);

        ALIAS ALU_A_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS REGA_OUT;
        ALIAS ALU_B_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS MUX_OUT;
        ALIAS ALU_SELECTOR : STD_LOGIC_VECTOR (1 DOWNTO 0) IS DECODER_OUT(3 DOWNTO 2);

        ALIAS MEM_ADDRESS : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS INSTRUCTION(larguraDados - 1 DOWNTO 0);
        ALIAS MEM_ENABLE : STD_LOGIC IS INSTRUCTION(8);
        ALIAS MEM_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS REGA_OUT;
        ALIAS MEM_ENABLE_READ : STD_LOGIC IS DECODER_OUT(1);
        ALIAS MEM_ENABLE_WRITE : STD_LOGIC IS DECODER_OUT(0);

        ALIAS OP_CODE : STD_LOGIC_VECTOR (3 DOWNTO 0) IS INSTRUCTION(12 DOWNTO 9);

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

        MUX1 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        entradaA_MUX => MUX_A,
                        entradaB_MUX => MUX_B,
                        seletor_MUX => MUX_SELECTOR,
                        saida_MUX => MUX_OUT
                );

        REGA : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        DIN => REGA_IN,
                        DOUT => REGA_OUT,
                        ENABLE => REGA_ENABLE,
                        CLK => CLK,
                        RST => REGA_RESET
                );

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

        DECODER_INSTRU : ENTITY work.decoderInstru
                PORT MAP(
                        opcode => OP_CODE,
                        saida => DECODER_OUT
                );

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

        ACUMULADOR_LO : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => REGA_OUT(3 DOWNTO 0),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX0
                );

        ACUMULADOR_HI : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => REGA_OUT(7 DOWNTO 4),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX1
                );

        MUX_A_LO : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX_A(3 DOWNTO 0),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX2
                );

        MUX_A_HI : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX_A(7 DOWNTO 4),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX3
                );

        MUX_B_LO : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX_B(3 DOWNTO 0),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX4
                );

        MUX_B_HI : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX_B(7 DOWNTO 4),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX5
                );

        PC_OUT <= Endereco;

END ARCHITECTURE;