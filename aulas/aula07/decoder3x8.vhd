LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder3x8 IS
  PORT (
    entrada : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF decoder3x8 IS
BEGIN
  saida(7) <= '1' WHEN (entrada = "111") ELSE
  '0';
  saida(6) <= '1' WHEN (entrada = "110") ELSE
  '0';
  saida(5) <= '1' WHEN (entrada = "101") ELSE
  '0';
  saida(4) <= '1' WHEN (entrada = "100") ELSE
  '0';
  saida(3) <= '1' WHEN (entrada = "011") ELSE
  '0';
  saida(2) <= '1' WHEN (entrada = "010") ELSE
  '0';
  saida(1) <= '1' WHEN (entrada = "001") ELSE
  '0';
  saida(0) <= '1' WHEN (entrada = "000") ELSE
  '0';
END ARCHITECTURE;