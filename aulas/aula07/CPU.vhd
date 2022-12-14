LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CPU IS
        GENERIC (
                larguraDados : NATURAL := 8;
                larguraEnderecos : NATURAL := 8
        );
        PORT (
                CLK : IN STD_LOGIC;
                -- Reset         : in std_logic;
                Data_IN       : in std_logic_vector(7 downto 0);
                INSTRUCTION : in std_logic_vector(12 downto 0);
                        
                ROM_Address   : out std_logic_vector(8 downto 0);
                Wr            : out std_logic;
                Rd            : out std_logic;
                Data_Address  : out std_logic_vector(5 downto 0);
                Data_OUT      : out std_logic_vector(7 downto 0);
					 decoder_out_debug : out std_logic_vector(11 downto 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF CPU IS

        -- signals
        SIGNAL proxPC : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL Endereco : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL MUX1_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MUX2_OUT : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL REGA_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL ALU_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL ALU_FLAG_EQ : STD_LOGIC;
        SIGNAL FLIPFLOP_OUT : STD_LOGIC;
--        SIGNAL MEM_OUT : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL DECODER_OUT : STD_LOGIC_VECTOR (11 DOWNTO 0);
        SIGNAL MUX2_7SEG : STD_LOGIC_VECTOR (23 DOWNTO 0);
        SIGNAL DESVIO1_OUT : STD_LOGIC_VECTOR (1 DOWNTO 0);
        SIGNAL END_RETORNO_OUT : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL MEM_ENABLE_READ : STD_LOGIC;
        SIGNAL MEM_ENABLE_WRITE : STD_LOGIC;

        -- aliases para facilitar a leitura do código
        ALIAS MUX1_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS Data_IN;
        ALIAS MUX1_B : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS INSTRUCTION(larguraDados - 1 DOWNTO 0);
        ALIAS MUX1_SELECTOR : STD_LOGIC IS DECODER_OUT(6);

        ALIAS MUX2_A : STD_LOGIC_VECTOR (8 DOWNTO 0) IS proxPC;
        ALIAS MUX2_B : STD_LOGIC_VECTOR (8 DOWNTO 0) IS INSTRUCTION(8 DOWNTO 0);
        ALIAS MUX2_C : STD_LOGIC_VECTOR (8 DOWNTO 0) IS END_RETORNO_OUT;
        ALIAS MUX2_SELECTOR : STD_LOGIC_VECTOR (1 DOWNTO 0) IS DESVIO1_OUT;

        ALIAS REGA_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS ALU_OUT;
        ALIAS REGA_ENABLE : STD_LOGIC IS DECODER_OUT(5);

        ALIAS ALU_A_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS REGA_OUT;
        ALIAS ALU_B_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS MUX1_OUT;
        ALIAS ALU_SELECTOR : STD_LOGIC_VECTOR (1 DOWNTO 0) IS DECODER_OUT(4 DOWNTO 3);

        ALIAS MEM_ADDRESS : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS INSTRUCTION(larguraDados - 1 DOWNTO 0);
        ALIAS MEM_ENABLE : STD_LOGIC IS INSTRUCTION(8);
        ALIAS MEM_IN : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0) IS REGA_OUT;

        ALIAS OP_CODE : STD_LOGIC_VECTOR (3 DOWNTO 0) IS INSTRUCTION(12 DOWNTO 9);

BEGIN

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

        END_RETORNO : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 9)
                PORT MAP(
                        DIN => proxPC,
                        DOUT => END_RETORNO_OUT,
                        ENABLE => DECODER_OUT(11),
                        CLK => CLK,
                        RST => '0'
                );

        DESVIO1 : ENTITY work.LogicaDesvio
                PORT MAP(
                        JMP => DECODER_OUT(10),
                        RET => DECODER_OUT(9),
                        JSR => DECODER_OUT(8),
                        JEQ => DECODER_OUT(7),
                        FLAG_EQ => FLIPFLOP_OUT,
                        Sel => DESVIO1_OUT
                );

        MUX2 : ENTITY work.muxGenerico4x1 GENERIC MAP (larguraDados => 9)
                PORT MAP(
                        E0 => MUX2_A,
                        E1 => MUX2_B,
                        E2 => MUX2_C,
                        E3 => b"0_0000_0000",
                        SEL_MUX => MUX2_SELECTOR,
                        MUX_OUT => MUX2_OUT
                );

        REGA : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        DIN => REGA_IN,
                        DOUT => REGA_OUT,
                        ENABLE => REGA_ENABLE,
                        CLK => CLK,
                        RST => '0'
                );

        ULA1 : ENTITY work.ULASomaSub GENERIC MAP(larguraDados => larguraDados)
                PORT MAP(
                        entradaA => ALU_A_IN,
                        entradaB => ALU_B_IN,
                        seletor => ALU_SELECTOR,
                        saida => ALU_OUT,
                        flagEqual => ALU_FLAG_EQ
                );

        FLIPFLOP1 : ENTITY work.flipFlopGenerico
                PORT MAP(
                        DIN => ALU_FLAG_EQ,
                        DOUT => FLIPFLOP_OUT,
                        ENABLE => DECODER_OUT(2),
                        CLK => CLK,
                        RST => '0'
                );

        -- ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 13, addrWidth => 9)
        --         PORT MAP(
        --                 Endereco => Endereco,
        --                 Dado => INSTRUCTION
        --         );

        DECODER_INSTRU : ENTITY work.decoderInstru
                PORT MAP(
                        opcode => OP_CODE,
                        saida => DECODER_OUT
                );

        -- RAM1 : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => larguraDados, addrWidth => larguraEnderecos)
        --         PORT MAP(
        --                 addr => MEM_ADDRESS,
        --                 we => MEM_ENABLE_WRITE,
        --                 re => MEM_ENABLE_READ,
        --                 habilita => MEM_ENABLE,
        --                 dado_in => MEM_IN,
        --                 dado_out => MEM_OUT,
        --                 clk => CLK
        --         );

        ROM_Address <= Endereco;
        Wr <= DECODER_OUT(0);
        Rd <= DECODER_OUT(1);
        Data_Address <= INSTRUCTION(5 DOWNTO 0);
        Data_OUT <= MEM_IN;
		  decoder_out_debug <= DECODER_OUT;

END ARCHITECTURE;