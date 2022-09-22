-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/21/2022 22:33:22"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula07 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	DECODER_CMD : OUT std_logic_vector(12 DOWNTO 0)
	);
END Aula07;

ARCHITECTURE structure OF Aula07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_DECODER_CMD : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[0]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[1]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[2]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[3]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[4]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[5]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[6]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[7]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[8]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[9]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[10]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[11]~output_o\ : std_logic;
SIGNAL \DECODER_CMD[12]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|Sel[1]~0_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~3_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~161_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~21_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~146_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~4_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~17_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~153_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~154_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~5_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~18_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~155_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~156_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~6_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~19_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~157_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~158_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~20_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~159_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~160_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~1_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~22_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~147_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~148_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~2_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~23_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~149_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~150_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~3_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~24_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~151_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~152_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~1_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DESVIO1|Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CPU|FLIPFLOP1|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_Sel[1]~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
DECODER_CMD <= ww_DECODER_CMD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|DESVIO1|ALT_INV_Sel\(1) <= NOT \CPU|DESVIO1|Sel\(1);
\CPU|DESVIO1|ALT_INV_Sel\(0) <= NOT \CPU|DESVIO1|Sel\(0);
\CPU|FLIPFLOP1|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLIPFLOP1|DOUT~2_combout\;
\CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLIPFLOP1|DOUT~1_combout\;
\CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\ <= NOT \CPU|DECODER_INSTRU|saida~1_combout\;
\CPU|RAM1|ALT_INV_ram~160_combout\ <= NOT \CPU|RAM1|ram~160_combout\;
\CPU|RAM1|ALT_INV_ram~159_combout\ <= NOT \CPU|RAM1|ram~159_combout\;
\CPU|RAM1|ALT_INV_ram~20_q\ <= NOT \CPU|RAM1|ram~20_q\;
\CPU|RAM1|ALT_INV_ram~158_combout\ <= NOT \CPU|RAM1|ram~158_combout\;
\CPU|RAM1|ALT_INV_ram~157_combout\ <= NOT \CPU|RAM1|ram~157_combout\;
\CPU|RAM1|ALT_INV_ram~19_q\ <= NOT \CPU|RAM1|ram~19_q\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\CPU|RAM1|ALT_INV_ram~156_combout\ <= NOT \CPU|RAM1|ram~156_combout\;
\CPU|RAM1|ALT_INV_ram~155_combout\ <= NOT \CPU|RAM1|ram~155_combout\;
\CPU|RAM1|ALT_INV_ram~18_q\ <= NOT \CPU|RAM1|ram~18_q\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\CPU|RAM1|ALT_INV_ram~154_combout\ <= NOT \CPU|RAM1|ram~154_combout\;
\CPU|RAM1|ALT_INV_ram~153_combout\ <= NOT \CPU|RAM1|ram~153_combout\;
\CPU|RAM1|ALT_INV_ram~17_q\ <= NOT \CPU|RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\CPU|RAM1|ALT_INV_ram~152_combout\ <= NOT \CPU|RAM1|ram~152_combout\;
\CPU|RAM1|ALT_INV_ram~151_combout\ <= NOT \CPU|RAM1|ram~151_combout\;
\CPU|RAM1|ALT_INV_ram~24_q\ <= NOT \CPU|RAM1|ram~24_q\;
\CPU|RAM1|ALT_INV_ram~150_combout\ <= NOT \CPU|RAM1|ram~150_combout\;
\CPU|RAM1|ALT_INV_ram~149_combout\ <= NOT \CPU|RAM1|ram~149_combout\;
\CPU|RAM1|ALT_INV_ram~23_q\ <= NOT \CPU|RAM1|ram~23_q\;
\CPU|RAM1|ALT_INV_ram~148_combout\ <= NOT \CPU|RAM1|ram~148_combout\;
\CPU|RAM1|ALT_INV_ram~147_combout\ <= NOT \CPU|RAM1|ram~147_combout\;
\CPU|RAM1|ALT_INV_ram~22_q\ <= NOT \CPU|RAM1|ram~22_q\;
\CPU|RAM1|ALT_INV_ram~146_combout\ <= NOT \CPU|RAM1|ram~146_combout\;
\CPU|RAM1|ALT_INV_ram~145_combout\ <= NOT \CPU|RAM1|ram~145_combout\;
\CPU|RAM1|ALT_INV_ram~21_q\ <= NOT \CPU|RAM1|ram~21_q\;
\CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER_INSTRU|saida~0_combout\;
\CPU|DESVIO1|ALT_INV_comb~3_combout\ <= NOT \CPU|DESVIO1|comb~3_combout\;
\CPU|DESVIO1|ALT_INV_comb~2_combout\ <= NOT \CPU|DESVIO1|comb~2_combout\;
\CPU|DESVIO1|ALT_INV_comb~1_combout\ <= NOT \CPU|DESVIO1|comb~1_combout\;
\CPU|DESVIO1|ALT_INV_comb~0_combout\ <= NOT \CPU|DESVIO1|comb~0_combout\;
\CPU|FLIPFLOP1|ALT_INV_DOUT~q\ <= NOT \CPU|FLIPFLOP1|DOUT~q\;
\CPU|DESVIO1|ALT_INV_Sel[1]~0_combout\ <= NOT \CPU|DESVIO1|Sel[1]~0_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\DECODER_CMD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[0]~output_o\);

\DECODER_CMD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[1]~output_o\);

\DECODER_CMD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[2]~output_o\);

\DECODER_CMD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[3]~output_o\);

\DECODER_CMD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODER_CMD[4]~output_o\);

\DECODER_CMD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODER_CMD[5]~output_o\);

\DECODER_CMD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODER_CMD[6]~output_o\);

\DECODER_CMD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODER_CMD[7]~output_o\);

\DECODER_CMD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~11_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[8]~output_o\);

\DECODER_CMD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~13_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[9]~output_o\);

\DECODER_CMD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~15_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[10]~output_o\);

\DECODER_CMD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[11]~output_o\);

\DECODER_CMD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~19_combout\,
	devoe => ww_devoe,
	o => \DECODER_CMD[12]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ ((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~18_combout\);

\CPU|DECODER_INSTRU|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal10~0_combout\ = ( \ROM1|memROM~18_combout\ & ( (\ROM1|memROM~10_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|DECODER_INSTRU|Equal10~0_combout\);

\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

\CPU|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[3]~3_combout\ = ( \CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|DESVIO1|Sel\(0) & (((\CPU|incrementaPC|Add0~13_sumout\) # (\CPU|DESVIO1|Sel\(1))))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~8_combout\ & (!\CPU|DESVIO1|Sel\(1)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|DESVIO1|Sel\(1) & ((!\CPU|DESVIO1|Sel\(0) & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010000110100000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datac => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|MUX2|MUX_OUT[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

\CPU|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[2]~2_combout\ = ( \CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|DESVIO1|Sel\(0) & (((\CPU|incrementaPC|Add0~9_sumout\) # (\CPU|DESVIO1|Sel\(1))))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~6_combout\ & (!\CPU|DESVIO1|Sel\(1)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|DESVIO1|Sel\(1) & ((!\CPU|DESVIO1|Sel\(0) & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010000110100000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datac => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	combout => \CPU|MUX2|MUX_OUT[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (\ROM1|memROM~10_combout\ & \ROM1|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~10_combout\ & \ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (\ROM1|memROM~10_combout\ & \ROM1|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~19_combout\);

\CPU|DESVIO1|Sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel[1]~0_combout\ = (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~19_combout\ & (\ROM1|memROM~17_combout\ & \ROM1|memROM~15_combout\)) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000010000000000100001000000000010000100000000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DESVIO1|Sel[1]~0_combout\);

\CPU|DESVIO1|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~3_combout\ = ( !\CPU|DESVIO1|Sel[1]~0_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|DESVIO1|ALT_INV_Sel[1]~0_combout\,
	combout => \CPU|DESVIO1|comb~3_combout\);

\CPU|DESVIO1|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~2_combout\ = ((!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~19_combout\) # (\ROM1|memROM~17_combout\))) # (\ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111101111111111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \CPU|DESVIO1|comb~2_combout\);

\CPU|DESVIO1|Sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel\(1) = ( \CPU|DESVIO1|comb~3_combout\ & ( !\CPU|DESVIO1|comb~2_combout\ ) ) # ( !\CPU|DESVIO1|comb~3_combout\ & ( !\CPU|DESVIO1|comb~2_combout\ & ( \CPU|DESVIO1|Sel\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datae => \CPU|DESVIO1|ALT_INV_comb~3_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_comb~2_combout\,
	combout => \CPU|DESVIO1|Sel\(1));

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

\CPU|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[5]~5_combout\ = (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~21_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|MUX_OUT[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

\CPU|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[6]~6_combout\ = (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~25_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|MUX_OUT[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

\CPU|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[7]~7_combout\ = (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~29_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|MUX_OUT[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\ROM1|memROM~10_combout\ & \ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~13_combout\);

\CPU|DECODER_INSTRU|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida~0_combout\ = ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~16_combout\ & \ROM1|memROM~14_combout\))) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~10_combout\ & 
-- (!\ROM1|memROM~18_combout\ & (\ROM1|memROM~16_combout\ & !\ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000100000000000100000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER_INSTRU|saida~0_combout\);

\CPU|DECODER_INSTRU|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida~1_combout\ = (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\ $ (!\ROM1|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER_INSTRU|saida~1_combout\);

\CPU|ULA1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~0_combout\ = (\CPU|ULA1|Add1~1_sumout\ & !\CPU|DECODER_INSTRU|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[4]~0_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[4]~0_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\CPU|RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~161_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~161_combout\);

\CPU|RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~21_q\);

\CPU|RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~145_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~145_combout\);

\CPU|RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~146_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~146_combout\);

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~22_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~21_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~20_combout\);

\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~154_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~154_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~154_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~4_combout\ = ( \CPU|DECODER_INSTRU|saida~1_combout\ & ( (!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~154_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~2_combout\)) ) ) # ( 
-- !\CPU|DECODER_INSTRU|saida~1_combout\ & ( \CPU|ULA1|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~154_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[0]~4_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[0]~4_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\CPU|RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~17_q\);

\CPU|RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~153_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~153_combout\);

\CPU|RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~154_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~153_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~154_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~156_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~18\ 
-- ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~156_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~156_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~5_combout\ = ( \CPU|DECODER_INSTRU|saida~1_combout\ & ( (!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~156_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~4_combout\)) ) ) # ( 
-- !\CPU|DECODER_INSTRU|saida~1_combout\ & ( \CPU|ULA1|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~156_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[1]~5_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[1]~5_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\CPU|RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~18_q\);

\CPU|RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~155_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~155_combout\);

\CPU|RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~156_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~156_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~158_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~22\ 
-- ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~158_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~158_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~6_combout\ = ( \CPU|DECODER_INSTRU|saida~1_combout\ & ( (!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~158_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~6_combout\)) ) ) # ( 
-- !\CPU|DECODER_INSTRU|saida~1_combout\ & ( \CPU|ULA1|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~158_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datae => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[2]~6_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[2]~6_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\CPU|RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~19_q\);

\CPU|RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~157_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~157_combout\);

\CPU|RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~158_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~158_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & ((!\CPU|RAM1|ram~160_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & ((!\CPU|RAM1|ram~160_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~160_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

\CPU|ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~7_combout\ = ( \CPU|DECODER_INSTRU|saida~1_combout\ & ( (!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~160_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~8_combout\)) ) ) # ( 
-- !\CPU|DECODER_INSTRU|saida~1_combout\ & ( \CPU|ULA1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~160_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[3]~7_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[3]~7_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\CPU|RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~20_q\);

\CPU|RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~159_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~159_combout\);

\CPU|RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~160_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~160_combout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|RAM1|ram~146_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|RAM1|ram~146_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~146_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~1_combout\ = (\CPU|ULA1|Add1~5_sumout\ & !\CPU|DECODER_INSTRU|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[5]~1_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[5]~1_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\CPU|RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~22_q\);

\CPU|RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~147_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~147_combout\);

\CPU|RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~148_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~147_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~148_combout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|RAM1|ram~148_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|RAM1|ram~148_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~148_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~2_combout\ = (\CPU|ULA1|Add1~9_sumout\ & !\CPU|DECODER_INSTRU|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[6]~2_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[6]~2_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\CPU|RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~23_q\);

\CPU|RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~149_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~149_combout\);

\CPU|RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~150_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~149_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~150_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|RAM1|ram~150_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|RAM1|ram~150_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~150_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~3_combout\ = (\CPU|ULA1|Add1~13_sumout\ & !\CPU|DECODER_INSTRU|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	combout => \CPU|ULA1|saida[7]~3_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[7]~3_combout\,
	sload => VCC,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\CPU|RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~24_q\);

\CPU|RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~151_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~151_combout\);

\CPU|RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~152_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \CPU|RAM1|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~151_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|RAM1|ram~152_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|RAM1|ram~152_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~152_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\);

\CPU|FLIPFLOP1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~1_combout\ = (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \CPU|FLIPFLOP1|DOUT~1_combout\);

\CPU|FLIPFLOP1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~2_combout\ = ( \CPU|FLIPFLOP1|DOUT~q\ & ( \CPU|FLIPFLOP1|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( !\CPU|FLIPFLOP1|DOUT~q\ & ( 
-- \CPU|FLIPFLOP1|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( \CPU|FLIPFLOP1|DOUT~q\ & ( !\CPU|FLIPFLOP1|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLIPFLOP1|DOUT~2_combout\);

\CPU|FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~0_combout\ = ( \CPU|FLIPFLOP1|DOUT~1_combout\ & ( \CPU|FLIPFLOP1|DOUT~2_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~13_sumout\))) ) ) ) # ( 
-- !\CPU|FLIPFLOP1|DOUT~1_combout\ & ( \CPU|FLIPFLOP1|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLIPFLOP1|DOUT~0_combout\);

\CPU|FLIPFLOP1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FLIPFLOP1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLIPFLOP1|DOUT~q\);

\CPU|DESVIO1|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~1_combout\ = ( \CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~17_combout\ & \ROM1|memROM~19_combout\))) # (\ROM1|memROM~15_combout\ & (((\ROM1|memROM~17_combout\ & 
-- !\ROM1|memROM~19_combout\)))) ) ) # ( !\CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & (\ROM1|memROM~17_combout\ & !\ROM1|memROM~19_combout\))) # (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & 
-- (!\ROM1|memROM~17_combout\ & \ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100000000000011010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	combout => \CPU|DESVIO1|comb~1_combout\);

\CPU|DESVIO1|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~0_combout\ = ( \CPU|DESVIO1|Sel[1]~0_combout\ & ( \CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~19_combout\) # (!\ROM1|memROM~13_combout\ $ (\ROM1|memROM~15_combout\)))) # (\ROM1|memROM~17_combout\ & 
-- (((!\ROM1|memROM~15_combout\) # (\ROM1|memROM~19_combout\)))) ) ) ) # ( !\CPU|DESVIO1|Sel[1]~0_combout\ & ( \CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~13_combout\) # ((!\ROM1|memROM~19_combout\) # (\ROM1|memROM~17_combout\)))) 
-- # (\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~17_combout\) # (\ROM1|memROM~19_combout\)))) ) ) ) # ( \CPU|DESVIO1|Sel[1]~0_combout\ & ( !\CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~15_combout\) # (!\ROM1|memROM~17_combout\ $ 
-- (\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\ROM1|memROM~19_combout\) # (\ROM1|memROM~17_combout\)) # (\ROM1|memROM~15_combout\))) ) ) ) # ( !\CPU|DESVIO1|Sel[1]~0_combout\ & ( !\CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & 
-- ((!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~17_combout\) # (\ROM1|memROM~19_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\ROM1|memROM~19_combout\) # (\ROM1|memROM~17_combout\)) # (\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110111111111111011001111111111100101111111111110010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|DESVIO1|ALT_INV_Sel[1]~0_combout\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	combout => \CPU|DESVIO1|comb~0_combout\);

\CPU|DESVIO1|Sel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel\(0) = ( \CPU|DESVIO1|comb~1_combout\ & ( !\CPU|DESVIO1|comb~0_combout\ ) ) # ( !\CPU|DESVIO1|comb~1_combout\ & ( !\CPU|DESVIO1|comb~0_combout\ & ( \CPU|DESVIO1|Sel\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datae => \CPU|DESVIO1|ALT_INV_comb~1_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_comb~0_combout\,
	combout => \CPU|DESVIO1|Sel\(0));

\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

\CPU|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[4]~4_combout\ = (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~17_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|MUX_OUT[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

\CPU|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[1]~1_combout\ = ( \CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|DESVIO1|Sel\(0) & (((\CPU|incrementaPC|Add0~5_sumout\) # (\CPU|DESVIO1|Sel\(1))))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~4_combout\ & (!\CPU|DESVIO1|Sel\(1)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|DESVIO1|Sel\(1) & ((!\CPU|DESVIO1|Sel\(0) & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010000110100000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datac => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|MUX_OUT[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000110001000000000011000100000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (\ROM1|memROM~9_combout\ & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

\CPU|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[8]~8_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & (((!\CPU|DESVIO1|Sel\(1)) # (\CPU|END_RETORNO|DOUT\(8))))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~11_combout\ & (!\CPU|DESVIO1|Sel\(1)))) ) ) # ( 
-- !\CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & (((\CPU|DESVIO1|Sel\(1) & \CPU|END_RETORNO|DOUT\(8))))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~11_combout\ & (!\CPU|DESVIO1|Sel\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010000000111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datac => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datae => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|MUX_OUT[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

\CPU|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[0]~0_combout\ = ( \CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|DESVIO1|Sel\(0) & (((\CPU|incrementaPC|Add0~1_sumout\) # (\CPU|DESVIO1|Sel\(1))))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~2_combout\ & (!\CPU|DESVIO1|Sel\(1)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|DESVIO1|Sel\(1) & ((!\CPU|DESVIO1|Sel\(0) & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|DESVIO1|Sel\(0) & (\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010000110100000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datac => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	combout => \CPU|MUX2|MUX_OUT[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_DECODER_CMD(0) <= \DECODER_CMD[0]~output_o\;

ww_DECODER_CMD(1) <= \DECODER_CMD[1]~output_o\;

ww_DECODER_CMD(2) <= \DECODER_CMD[2]~output_o\;

ww_DECODER_CMD(3) <= \DECODER_CMD[3]~output_o\;

ww_DECODER_CMD(4) <= \DECODER_CMD[4]~output_o\;

ww_DECODER_CMD(5) <= \DECODER_CMD[5]~output_o\;

ww_DECODER_CMD(6) <= \DECODER_CMD[6]~output_o\;

ww_DECODER_CMD(7) <= \DECODER_CMD[7]~output_o\;

ww_DECODER_CMD(8) <= \DECODER_CMD[8]~output_o\;

ww_DECODER_CMD(9) <= \DECODER_CMD[9]~output_o\;

ww_DECODER_CMD(10) <= \DECODER_CMD[10]~output_o\;

ww_DECODER_CMD(11) <= \DECODER_CMD[11]~output_o\;

ww_DECODER_CMD(12) <= \DECODER_CMD[12]~output_o\;
END structure;


