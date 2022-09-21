LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoriaRAM IS
    GENERIC (
        dataWidth : NATURAL := 8;
        addrWidth : NATURAL := 8
    );
    PORT (
        addr : IN STD_LOGIC_VECTOR(addrWidth - 1 DOWNTO 0);
        we, re : IN STD_LOGIC;
        habilita : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        dado_in : IN STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);
        dado_out : OUT STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE rtl OF memoriaRAM IS
    -- Build a 2-D array type for the RAM
    SUBTYPE word_t IS STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);
    TYPE memory_t IS ARRAY((2 ** addrWidth - 1) DOWNTO 0) OF word_t;

    -- Declare the RAM signal.
    SIGNAL ram : memory_t;
BEGIN
    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (we = '1' AND habilita = '1') THEN
                ram(to_integer(unsigned(addr))) <= dado_in;
            END IF;
        END IF;
    END PROCESS;

    -- A leitura é sempre assincrona e quando houver habilitacao:
    dado_out <= ram(to_integer(unsigned(addr))) WHEN (re = '1' AND habilita = '1') ELSE
        (OTHERS => 'Z');
END ARCHITECTURE;