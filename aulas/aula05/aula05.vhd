LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula05 IS
        GENERIC (
                larguraDados : NATURAL := 8;
                larguraEnderecos : NATURAL := 8;
                simulacao : BOOLEAN := FALSE
        );
        PORT (
                CLOCK_50 : IN STD_LOGIC;
                KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
                SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
                HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
                PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
                LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF Aula05 IS

        -- signals
        SIGNAL CLK : STD_LOGIC;
        SIGNAL proxPC : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL Endereco : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL REGA_RESET : STD_LOGIC;
        SIGNAL INSTRUCTION : STD_LOGIC_VECTOR (12 DOWNTO 0); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)
        SIGNAL MUX1_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MUX2_OUT : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL REGA_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL ALU_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MEM_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL DECODER_OUT : STD_LOGIC_VECTOR (8 DOWNTO 0); -- atualizar os decoder_out !!!!
        SIGNAL MUX2_7SEG : STD_LOGIC_VECTOR (23 DOWNTO 0);

        -- aliases para facilitar a leitura do código
        ALIAS MUX1_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS MEM_OUT;
        ALIAS MUX1_B : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS INSTRUCTION(larguraDados - 1 DOWNTO 0);
        ALIAS MUX1_SELECTOR : STD_LOGIC IS DECODER_OUT(5);

        ALIAS MUX2_A : STD_LOGIC_VECTOR (8 DOWNTO 0) IS proxPC;
        ALIAS MUX2_B : STD_LOGIC_VECTOR (8 DOWNTO 0) IS INSTRUCTION(8 DOWNTO 0);
        ALIAS MUX2_SELECTOR : STD_LOGIC IS DECODER_OUT(6);

        ALIAS REGA_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS ALU_OUT;
        ALIAS REGA_ENABLE : STD_LOGIC IS DECODER_OUT(4);

        ALIAS ALU_A_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS REGA_OUT;
        ALIAS ALU_B_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS MUX1_OUT;
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

        PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 9)
                PORT MAP(
                        DIN => MUX2_OUT,
                        DOUT => Endereco,
                        ENABLE => '1',
                        CLK => CLK,
                        RST => '0'
                );

        incrementaPC : ENTITY work.somaConstante GENERIC MAP (larguraDados => 9, constante => 1)
                PORT MAP(
                        entrada => Endereco,
                        saida => proxPC
                );

        MUX1 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        entradaA_MUX => MUX1_A,
                        entradaB_MUX => MUX1_B,
                        seletor_MUX => MUX1_SELECTOR,
                        saida_MUX => MUX1_OUT
                );

        MUX2 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 9)
                PORT MAP(
                        entradaA_MUX => MUX2_A,
                        entradaB_MUX => MUX2_B,
                        seletor_MUX => MUX2_SELECTOR,
                        saida_MUX => MUX2_OUT
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

        ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 13, addrWidth => 9)
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

        PC_OUT <= Endereco;
        LEDR(7 DOWNTO 0) <= REGA_OUT;
        LEDR(9 DOWNTO 8) <= "00";

        MUX_7SEG : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 24)
                PORT MAP(
                        entradaA_MUX => PC_OUT(7 DOWNTO 0) & MEM_ADDRESS & MEM_OUT,
                        entradaB_MUX => MUX1_A & MUX1_B & REGA_OUT,
                        seletor_MUX => SW(9),
                        saida_MUX => MUX2_7SEG
                );

        HEX5_SEVENSEG : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX2_7SEG(23 DOWNTO 20),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX5
                );

        HEX4_SEVENSEG : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX2_7SEG(19 DOWNTO 16),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX4
                );

        HEX3_SEVENSEG : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX2_7SEG(15 DOWNTO 12),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX3
                );

        HEX2_SEVENSEG : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX2_7SEG(11 DOWNTO 8),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX2
                );

        HEX1_SEVENSEG : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX2_7SEG(7 DOWNTO 4),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX1
                );

        HEX0_SEVENSEG : ENTITY work.conversorHex7Seg
                PORT MAP(
                        dadoHex => MUX2_7SEG(3 DOWNTO 0),
                        apaga => '0',
                        negativo => '0',
                        overFlow => '0',
                        saida7seg => HEX0
                );
                
END ARCHITECTURE;