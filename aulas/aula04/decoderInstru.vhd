LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoderInstru IS
  PORT (
    opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    saida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF decoderInstru IS

	CONSTANT NOP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	CONSTANT LDA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
	CONSTANT SOMA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
	CONSTANT SUB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011";
	CONSTANT LDI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100";
	CONSTANT SDA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101";

BEGIN
  saida <= "00000" WHEN opcode = NOP ELSE
    "010010" WHEN opcode = LDA ELSE
    "1101" WHEN opcode = SOMA ELSE
    "1100" WHEN opcode = SUB ELSE
    "XX1X" WHEN opcode = LDI ELSE
	 "XX1X" WHEN opcode = SDA ELSE
    "0000"; -- NOP para os opcodes Indefinidos
END ARCHITECTURE;