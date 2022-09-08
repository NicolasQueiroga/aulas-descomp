LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoriaROM IS
    GENERIC (
        dataWidth : NATURAL := 13;
        addrWidth : NATURAL := 4
    );
    PORT (
        Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
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

    TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);

    FUNCTION initMemory
        RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
    BEGIN
        -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
        -- Inicializa os endereços:
        tmp(0) := JMP & '0' & x"04";
        tmp(1) := JMP & '0' & x"05";
        tmp(2) := NOP & '0' & x"00";
        tmp(3) := NOP & '0' & x"00";
        tmp(4) := JMP & '0' & x"01";
        tmp(5) := NOP & '0' & x"00";
        tmp(6) := JMP & '0' & x"06";
		tmp(7) := NOP & '0' & x"00";
        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;