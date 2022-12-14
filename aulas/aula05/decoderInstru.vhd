LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoderInstru IS
  PORT (
    opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    saida : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF decoderInstru IS

  CONSTANT NOP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
  CONSTANT LDA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
  CONSTANT SOMA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
  CONSTANT SUB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011";
  CONSTANT LDI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100";
  CONSTANT STA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101";
  CONSTANT JMP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110";
  CONSTANT JEQ : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111";
  CONSTANT CEQ : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000";
  CONSTANT JSR : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
  CONSTANT RET : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010";

BEGIN

  -- MUX HABILITA OPERACAO // DECODER : LER ESCREVER
  saida <= "000000000000" WHEN opcode = NOP ELSE -- SelMUX HabilitaA Reset Operacao
    "000000110010" WHEN opcode = LDA ELSE -- operação final não importa/ carrega Y: A
    "000000101010" WHEN opcode = SOMA ELSE -- soma valor da mem com acumulador
    "000000100010" WHEN opcode = SUB ELSE
    "000001101000" WHEN opcode = LDI ELSE
    "000000001001" WHEN opcode = STA ELSE
    "010000001000" WHEN opcode = JMP ELSE
    "000010001000" WHEN opcode = JEQ ELSE
    "000000000110" WHEN opcode = CEQ ELSE
    "100100001000" WHEN opcode = JSR ELSE
    "001000001000" WHEN opcode = RET ELSE
    "000000000000"; -- NOP para os opcodes Indefinidos
END ARCHITECTURE;