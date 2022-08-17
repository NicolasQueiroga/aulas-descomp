LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AulaDelta1 IS
    GENERIC (
        dataWidth : NATURAL := 8;
        addrWidth : NATURAL := 4
    );
    PORT (
        SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
        LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE funcionamento OF AulaDelta1 IS
BEGIN

    ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 7, addrWidth => 4)
        PORT MAP(Endereco => SW(3 DOWNTO 0), Dado => HEX0);

    LEDR <= SW;
END ARCHITECTURE;