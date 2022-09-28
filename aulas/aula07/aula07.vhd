LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula07 IS
        GENERIC (
                larguraDados : NATURAL := 8;
                larguraEnderecos : NATURAL := 8;
                simulacao : BOOLEAN := TRUE
        );
        PORT (
                CLOCK_50 : IN STD_LOGIC;
                KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

                LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
                PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
                DECODER_CMD : OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF Aula07 IS

        -- signals
        SIGNAL CLK : STD_LOGIC;
        SIGNAL ROM_Address : STD_LOGIC_VECTOR(8 DOWNTO 0);
        SIGNAL INSTRUCTION : STD_LOGIC_VECTOR(12 DOWNTO 0);

        SIGNAL MEM_ENABLE_WRITE : STD_LOGIC;
        SIGNAL MEM_ENABLE_READ : STD_LOGIC;
        SIGNAL MEM_ADDRESS : STD_LOGIC_VECTOR(5 DOWNTO 0);
        SIGNAL MEM_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL MEM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);

        SIGNAL BLOCKS_DECODER_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL ADDRESS_DECODER_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- aliases para facilitar a leitura do código
        ALIAS MEM_ENABLE : STD_LOGIC IS BLOCKS_DECODER_OUT(0);

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

        CPU : ENTITY work.CPU GENERIC MAP(larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
                PORT MAP(
                        CLK => CLK,
                        Data_IN => MEM_IN,
                        INSTRUCTION => INSTRUCTION,

                        Data_OUT => MEM_OUT,
                        ROM_Address => ROM_Address,
                        Data_Address => MEM_ADDRESS,
                        Wr => MEM_ENABLE_WRITE,
                        Rd => MEM_ENABLE_READ,
                        decoder_out_debug => DECODER_CMD
                );

        ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 13, addrWidth => 4)
                PORT MAP(
                        Endereco => ROM_Address,
                        Dado => INSTRUCTION
                );

        RAM1 : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => larguraDados, addrWidth => 6)
                PORT MAP(
                        addr => MEM_ADDRESS,
                        we => MEM_ENABLE_WRITE,
                        re => MEM_ENABLE_READ,
                        habilita => MEM_ENABLE,
                        dado_in => MEM_OUT,
                        dado_out => MEM_IN,
                        clk => CLK
                );

        BLOCKS_DECODER : ENTITY work.decoder3x8
                PORT MAP(
                        entrada => INSTRUCTION(8 DOWNTO 6),
                        saida => BLOCKS_DECODER_OUT
                );

        ADDRESS_DECODER : ENTITY work.decoder3x8
                PORT MAP(
                        entrada => INSTRUCTION(2 DOWNTO 0),
                        saida => ADDRESS_DECODER_OUT
                );

        LED_LOGIC : ENTITY work.LedLogic
                PORT MAP(
                        CLK => CLK,
                        Wr => MEM_ENABLE_WRITE,
                        block_decoder => BLOCKS_DECODER_OUT(4),
                        address_decoder => ADDRESS_DECODER_OUT(2 DOWNTO 0),
                        data => MEM_OUT,
                        LEDR => LEDR(7 DOWNTO 0),
                        LED8 => LEDR(8),
                        LED9 => LEDR(9)
                );

        PC_OUT <= ROM_Address;

END ARCHITECTURE;