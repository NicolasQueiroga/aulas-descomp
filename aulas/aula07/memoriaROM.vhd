LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoriaROM IS
    GENERIC (
        dataWidth : NATURAL := 13;
        addrWidth : NATURAL := 4
    );
    PORT (
        Endereco : IN STD_LOGIC_VECTOR (9 - 1 DOWNTO 0);
        Dado : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE assincrona OF memoriaROM IS

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

    TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);

    FUNCTION initMemory
        RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
    BEGIN
        tmp(0) := LDI & '0' & x"01";
        tmp(1) := STA & '1' & x"00";
        tmp(2) := SOMA & '0' & x"00";
        tmp(3) := STA & '1' & x"01";
        tmp(4) := LDA & '0' & x"00";
        tmp(5) := STA & '1' & x"01";
        tmp(6) := STA & '1' & x"02";
        tmp(7) := LDI & '0' & x"55";
        tmp(8) := STA & '1' & x"00";
        tmp(9) := LDI & '0' & x"AA";
        tmp(10) := STA & '1' & x"00";
        tmp(11) := JMP & '0' & x"0B";

        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;