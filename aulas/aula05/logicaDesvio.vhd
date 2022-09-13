LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY logicaDesvio IS

  PORT (
    JMP : IN STD_LOGIC;
    JEQ : IN STD_LOGIC;
    JSR : IN STD_LOGIC;
    RET : IN STD_LOGIC;
    FLAG_EQ : IN STD_LOGIC;
    Sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF logicaDesvio IS

BEGIN
  Sel <= "00" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '0') ELSE
    "01" WHEN (JMP = '1' AND RET = '0' AND JSR = '0' AND JEQ = '0') ELSE
    "00" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '1' AND FLAG_EQ = '0') ELSE
    "01" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '1' AND FLAG_EQ = '1') ELSE
    "01" WHEN (JMP = '0' AND RET = '0' AND JSR = '1' AND JEQ = '0') ELSE
    "10" WHEN (JMP = '0' AND RET = '1' AND JSR = '0' AND JEQ = '0');
END ARCHITECTURE;