LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoriaROM IS
    GENERIC (
        dataWidth : NATURAL := 8;
        addrWidth : NATURAL := 4
    );
    PORT (
        Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
        Dado : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE assincrona OF memoriaROM IS

    TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);

    FUNCTION initMemory
        RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
    BEGIN
        -- Inicializa os endereços: Falta preencher.
        tmp(0) := "1000000";
        tmp(1) := "0000000";
        tmp(2) := "0000000";
        tmp(3) := "0000000";
        tmp(4) := "0000000";
        tmp(5) := "0000000";
        tmp(6) := "0000000";
        tmp(7) := "0000000";
        tmp(8) := "0000000";
        tmp(9) := "0000000";
        tmp(10) := "0000000";
        tmp(11) := "0000000";
        tmp(12) := "0000000";
        tmp(13) := "0000000";
        tmp(14) := "0000000";
        tmp(15) := "0000000";
        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;