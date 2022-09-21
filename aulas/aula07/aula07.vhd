LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula07 IS
        GENERIC (
                larguraDados : NATURAL := 8;
                larguraEnderecos : NATURAL := 8;
                simulacao : BOOLEAN := FALSE
        );
        PORT (
                CLOCK_50 : IN STD_LOGIC;
                KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
                LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                LED8 : OUT STD_LOGIC;
                LED9 : OUT STD_LOGIC;
                saida_INST : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
                saida_RAM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                DEBUG_Data_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                DEBUG_Data_IN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF Aula07 IS

        -- signals
        -- aliases para facilitar a leitura do código
BEGIN
        -- gravar : IF simulacao GENERATE
        -- CLK <= KEY(0);
        -- ELSE
        --         GENERATE
        --                 detectorSub0 : work.edgeDetector(bordaSubida)
        --                 PORT MAP(
        --                         clk => CLOCK_50,
        --                         entrada => (NOT KEY(0)),
        --                         saida => CLK
        --                 );
        --         END GENERATE;

        CPU : ENTITY work.CPU GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        CLK => CLK,
                        Reset => Reset,
                        KEY => KEY,
                        Instuction_IN => INST,
                        Data_IN => Data_IN,
                        wr => wr,
                        rd => rd,
                        ROM_Address => ROM_Address,
                        Data_Address => Data_Address,
                        Data_OUT => Data_OUT
                );

        RAM1 : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => larguraDados, addrWidth => 6)
                PORT MAP(
                        addr => Data_Address(5 DOWNTO 0),
                        we => wr,
                        re => rd,
                        habilita => SELMEM_OUT(0),
                        clk => CLK
                        dado_in => Data_OUT,
                        dado_out => Data_IN,
                );

        ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 13, addrWidth => 9)
                PORT MAP(
                        Endereco => ROM_Address,
                        Dado => INST
                );

        DECODER_BLOCKS : ENTITY work.decoder3x8 GENERIC MAP (DATA_WIDTH => 3)
                PORT MAP(
                        entrada => Data_Address(8 DOWNTO 6),
                        saida => DECODER_BLOCKS_OUT
                );

        DECODER_ADDRS : ENTITY work.decoder3x8 GENERIC MAP (DATA_WIDTH => 3)
                PORT MAP(
                        entrada => Data_Address(2 DOWNTO 0),
                        saida => DECODER_ADDRS_OUT
                );

        REG_LED8 : ENTITY work.flipflopGenerico GENERIC MAP (larguraDados => 1)
                PORT MAP(
                        DIN => Data_OUT(0),
                        DOUT => REG_OUT_LED8,
                        ENABLE => ANDLED8,
                        CLK => CLK
                );

        REG_LED9 : ENTITY work.flipflopGenerico GENERIC MAP (larguraDados => 1)
                PORT MAP(
                        DIN => Data_OUT(0),
                        DOUT => REG_OUT_LED9,
                        ENABLE => ANDLED9,
                        CLK => CLK
                );

        REG_LEDR : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 8)
                PORT MAP(
                        DIN => Data_OUT,
                        DOUT => REG_OUT_LEDR,
                        ENABLE => ANDLEDR,
                        CLK => CLK
                );

END ARCHITECTURE;