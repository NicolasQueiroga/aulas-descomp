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
                
                PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
                DECODER_CMD : OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE arquitetura OF Aula07 IS

        -- signals
        SIGNAL CLK : STD_LOGIC;
        SIGNAL ROM_Address : STD_LOGIC_VECTOR(8 DOWNTO 0);
        SIGNAL INSTRUCTION : STD_LOGIC_VECTOR(12 DOWNTO 0);

        -- aliases para facilitar a leitura do código

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
                        ROM_Address => ROM_Address,
                        INSTRUCTION => INSTRUCTION
                );

        ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 13, addrWidth => 9)
                PORT MAP(
                        Endereco => ROM_Address,
                        Dado => INSTRUCTION
                );

        PC_OUT <= ROM_Address;
        DECODER_CMD <= INSTRUCTION;

END ARCHITECTURE;