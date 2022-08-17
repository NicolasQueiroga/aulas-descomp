LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AulaDelta2 IS
    GENERIC (
        larguraDados : NATURAL := 8
    );
    PORT (
        din : IN STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        enable : IN STD_LOGIC;
        clk, rst : IN STD_LOGIC;
        LEDR : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE funcionamento OF AulaDelta2 IS
BEGIN

    REG1 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 7)
        PORT MAP(
            DIN => din(larguraDados - 1 DOWNTO 0),
            DOUT => dout(larguraDados - 1 DOWNTO 0),
            ENABLE => enable,
            CLK => clk,
            RST => rst
        );
    LEDR <= dout;
END ARCHITECTURE;