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

-- DATE "09/22/2022 00:46:06"

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

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[9]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[11]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[12]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal10~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|Sel[1]~0_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~3_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~1_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~161_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~22_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~147_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~148_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
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
SIGNAL \CPU|ULA1|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~21_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~146_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~2_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
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
SIGNAL \CPU|FLIPFLOP1|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~0_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|comb~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DESVIO1|Sel\ : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
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

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
DECODER_CMD <= ww_DECODER_CMD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
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
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[2]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[6]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[4]~DUPLICATE_q\;
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

-- Location: IOOBUF_X0_Y21_N56
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X0_Y19_N39
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X0_Y19_N5
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
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X8_Y45_N93
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
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y20_N22
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y21_N5
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
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X0_Y20_N39
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
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X0_Y20_N56
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
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X8_Y45_N42
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
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y19_N22
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
	o => ww_DECODER_CMD(0));

-- Location: IOOBUF_X54_Y21_N39
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
	o => ww_DECODER_CMD(1));

-- Location: IOOBUF_X0_Y21_N39
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
	o => ww_DECODER_CMD(2));

-- Location: IOOBUF_X0_Y21_N22
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
	o => ww_DECODER_CMD(3));

-- Location: IOOBUF_X34_Y0_N19
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
	o => ww_DECODER_CMD(4));

-- Location: IOOBUF_X44_Y0_N19
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
	o => ww_DECODER_CMD(5));

-- Location: IOOBUF_X20_Y45_N36
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
	o => ww_DECODER_CMD(6));

-- Location: IOOBUF_X34_Y45_N19
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
	o => ww_DECODER_CMD(7));

-- Location: IOOBUF_X0_Y20_N5
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
	o => ww_DECODER_CMD(8));

-- Location: IOOBUF_X0_Y18_N45
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
	o => ww_DECODER_CMD(9));

-- Location: IOOBUF_X0_Y18_N62
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
	o => ww_DECODER_CMD(10));

-- Location: IOOBUF_X0_Y19_N56
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
	o => ww_DECODER_CMD(11));

-- Location: IOOBUF_X0_Y18_N96
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
	o => ww_DECODER_CMD(12));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G5
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: FF_X2_Y28_N23
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y28_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X2_Y28_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X2_Y28_N24
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111010000011111111101011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X2_Y28_N27
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100000000011111010000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X2_Y28_N0
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (\CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X2_Y28_N15
\CPU|DECODER_INSTRU|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal10~0_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~18_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER_INSTRU|Equal10~0_combout\);

-- Location: FF_X2_Y28_N35
\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

-- Location: FF_X1_Y28_N29
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: FF_X1_Y28_N44
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X1_Y28_N21
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: FF_X1_Y28_N47
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y28_N33
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X1_Y28_N15
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X1_Y28_N42
\CPU|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[1]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(1))))) # (\CPU|DESVIO1|Sel\(0) & 
-- (!\CPU|DESVIO1|Sel\(1))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|MUX2|MUX_OUT[1]~1_combout\);

-- Location: FF_X1_Y28_N43
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y28_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: FF_X2_Y28_N37
\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

-- Location: LABCELL_X1_Y28_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000000110000111100000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X1_Y28_N54
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X2_Y28_N18
\CPU|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[2]~2_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(2))))) # (\CPU|DESVIO1|Sel\(0) & 
-- (!\CPU|DESVIO1|Sel\(1))) ) ) # ( !\ROM1|memROM~6_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X2_Y28_N20
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y28_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: LABCELL_X2_Y28_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: FF_X2_Y28_N44
\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

-- Location: LABCELL_X1_Y28_N45
\CPU|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[4]~4_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1)) # (\CPU|END_RETORNO|DOUT\(4)))) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & (\CPU|DESVIO1|Sel\(1) & 
-- \CPU|END_RETORNO|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|MUX_OUT[4]~4_combout\);

-- Location: FF_X1_Y28_N46
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X2_Y28_N45
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

-- Location: FF_X2_Y28_N46
\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

-- Location: LABCELL_X2_Y28_N6
\CPU|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[5]~5_combout\ = ( \CPU|DESVIO1|Sel\(1) & ( (\CPU|END_RETORNO|DOUT\(5) & !\CPU|DESVIO1|Sel\(0)) ) ) # ( !\CPU|DESVIO1|Sel\(1) & ( (!\CPU|DESVIO1|Sel\(0) & \CPU|incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datac => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|DESVIO1|ALT_INV_Sel\(1),
	combout => \CPU|MUX2|MUX_OUT[5]~5_combout\);

-- Location: FF_X1_Y28_N5
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|MUX_OUT[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X2_Y28_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X2_Y28_N49
\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

-- Location: LABCELL_X1_Y28_N24
\CPU|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[6]~6_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1)) # (\CPU|END_RETORNO|DOUT\(6)))) ) ) # ( !\CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & (\CPU|DESVIO1|Sel\(1) & 
-- \CPU|END_RETORNO|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X1_Y28_N26
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X2_Y28_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X2_Y28_N53
\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

-- Location: LABCELL_X1_Y28_N39
\CPU|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[7]~7_combout\ = ( \CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|DESVIO1|Sel\(0) & ((\CPU|incrementaPC|Add0~29_sumout\) # (\CPU|DESVIO1|Sel\(1)))) ) ) # ( !\CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|DESVIO1|Sel\(0) & (!\CPU|DESVIO1|Sel\(1) & 
-- \CPU|incrementaPC|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|MUX2|MUX_OUT[7]~7_combout\);

-- Location: FF_X1_Y28_N41
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X2_Y28_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: FF_X2_Y28_N55
\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

-- Location: FF_X2_Y28_N19
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X2_Y26_N0
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X2_Y26_N57
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X1_Y28_N36
\CPU|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[8]~8_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(8))))) # (\CPU|DESVIO1|Sel\(0) & 
-- (!\CPU|DESVIO1|Sel\(1))) ) ) # ( !\ROM1|memROM~11_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|MUX2|MUX_OUT[8]~8_combout\);

-- Location: FF_X1_Y28_N38
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X1_Y28_N3
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X2_Y26_N54
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X2_Y26_N30
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X2_Y26_N51
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X2_Y26_N15
\CPU|DESVIO1|Sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel[1]~0_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ & \ROM1|memROM~19_combout\)) # (\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & !\ROM1|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001100010000001000110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DESVIO1|Sel[1]~0_combout\);

-- Location: LABCELL_X2_Y26_N12
\CPU|DESVIO1|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~3_combout\ = ( !\CPU|DESVIO1|Sel[1]~0_combout\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_Sel[1]~0_combout\,
	combout => \CPU|DESVIO1|comb~3_combout\);

-- Location: LABCELL_X2_Y26_N36
\CPU|DESVIO1|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~2_combout\ = ( \ROM1|memROM~13_combout\ ) # ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~15_combout\) # ((!\ROM1|memROM~19_combout\) # (\ROM1|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111111111001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DESVIO1|comb~2_combout\);

-- Location: LABCELL_X2_Y26_N42
\CPU|DESVIO1|Sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel\(1) = ( !\CPU|DESVIO1|comb~2_combout\ & ( \CPU|DESVIO1|Sel\(1) ) ) # ( !\CPU|DESVIO1|comb~2_combout\ & ( !\CPU|DESVIO1|Sel\(1) & ( \CPU|DESVIO1|comb~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DESVIO1|ALT_INV_comb~3_combout\,
	datae => \CPU|DESVIO1|ALT_INV_comb~2_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_Sel\(1),
	combout => \CPU|DESVIO1|Sel\(1));

-- Location: FF_X2_Y28_N40
\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

-- Location: LABCELL_X1_Y28_N6
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X1_Y27_N3
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X2_Y28_N21
\CPU|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[3]~3_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1)) # ((\CPU|END_RETORNO|DOUT\(3))))) # (\CPU|DESVIO1|Sel\(0) & (!\CPU|DESVIO1|Sel\(1) & ((\ROM1|memROM~8_combout\)))) ) ) # ( 
-- !\CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DESVIO1|Sel\(0) & (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(3)))) # (\CPU|DESVIO1|Sel\(0) & (!\CPU|DESVIO1|Sel\(1) & ((\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX2|MUX_OUT[3]~3_combout\);

-- Location: FF_X2_Y28_N22
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X2_Y28_N9
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) # 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X2_Y26_N3
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: LABCELL_X2_Y28_N12
\CPU|DECODER_INSTRU|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida~0_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~18_combout\ & ((!\ROM1|memROM~16_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~14_combout\)) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~12_combout\ & 
-- !\ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER_INSTRU|saida~0_combout\);

-- Location: LABCELL_X2_Y26_N39
\CPU|DECODER_INSTRU|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida~1_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~15_combout\ & !\ROM1|memROM~17_combout\)) ) ) # ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~15_combout\ & 
-- \ROM1|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER_INSTRU|saida~1_combout\);

-- Location: LABCELL_X2_Y27_N27
\CPU|ULA1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( !\CPU|DECODER_INSTRU|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[5]~1_combout\);

-- Location: FF_X2_Y27_N29
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~1_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: LABCELL_X2_Y26_N48
\CPU|RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~161_combout\ = ( \CPU|PC|DOUT\(2) & ( (\ROM1|memROM~10_combout\ & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \CPU|RAM1|ram~161_combout\);

-- Location: FF_X2_Y27_N17
\CPU|RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~22_q\);

-- Location: LABCELL_X1_Y28_N48
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT\(0)))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(0)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X1_Y28_N18
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X2_Y27_N15
\CPU|RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~147_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & \CPU|RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|RAM1|ram~147_combout\);

-- Location: LABCELL_X2_Y27_N24
\CPU|RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~148_combout\ = ( \CPU|RAM1|ram~147_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~147_combout\,
	combout => \CPU|RAM1|ram~148_combout\);

-- Location: FF_X1_Y27_N7
\CPU|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y27_N0
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~22_combout\);

-- Location: FF_X1_Y27_N10
\CPU|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~6_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y28_N51
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: LABCELL_X1_Y28_N57
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~20_combout\);

-- Location: LABCELL_X2_Y27_N30
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

-- Location: LABCELL_X2_Y27_N33
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~154_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~154_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~154_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X1_Y27_N45
\CPU|ULA1|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~4_combout\ = ( \CPU|RAM1|ram~154_combout\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER_INSTRU|saida~1_combout\ & ((!\CPU|DECODER_INSTRU|saida~0_combout\) # ((\ROM1|memROM~2_combout\)))) ) 
-- ) # ( !\CPU|RAM1|ram~154_combout\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER_INSTRU|saida~1_combout\ & (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~154_combout\,
	combout => \CPU|ULA1|saida[0]~4_combout\);

-- Location: FF_X1_Y27_N46
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~4_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: FF_X1_Y27_N4
\CPU|RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~17_q\);

-- Location: LABCELL_X1_Y27_N15
\CPU|RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~153_combout\ = ( !\ROM1|memROM~6_combout\ & ( (\CPU|RAM1|ram~17_q\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~17_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|RAM1|ram~153_combout\);

-- Location: LABCELL_X1_Y27_N48
\CPU|RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~154_combout\ = ( !\ROM1|memROM~2_combout\ & ( \CPU|RAM1|ram~153_combout\ & ( !\ROM1|memROM~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~153_combout\,
	combout => \CPU|RAM1|ram~154_combout\);

-- Location: LABCELL_X2_Y27_N36
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~156_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~18\ 
-- ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~156_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~21_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~156_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X1_Y27_N24
\CPU|ULA1|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\) # ((!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~156_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~4_combout\))) ) ) # 
-- ( !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|DECODER_INSTRU|saida~1_combout\ & ((!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~156_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101111111111000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~156_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[1]~5_combout\);

-- Location: FF_X1_Y27_N25
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~5_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X1_Y28_N32
\CPU|RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~18_q\);

-- Location: LABCELL_X1_Y28_N30
\CPU|RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~155_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & \CPU|RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~155_combout\);

-- Location: LABCELL_X1_Y27_N27
\CPU|RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~156_combout\ = ( \CPU|RAM1|ram~155_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~155_combout\,
	combout => \CPU|RAM1|ram~156_combout\);

-- Location: LABCELL_X2_Y27_N39
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~158_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\CPU|RAM1|ram~158_combout\)))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (((!\ROM1|memROM~22_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~158_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X1_Y27_N9
\CPU|ULA1|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~6_combout\ = ( \CPU|RAM1|ram~158_combout\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\ & (\CPU|ULA1|Add1~25_sumout\)) # (\CPU|DECODER_INSTRU|saida~1_combout\ & (((!\CPU|DECODER_INSTRU|saida~0_combout\) # (\ROM1|memROM~6_combout\)))) ) ) # 
-- ( !\CPU|RAM1|ram~158_combout\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\ & (\CPU|ULA1|Add1~25_sumout\)) # (\CPU|DECODER_INSTRU|saida~1_combout\ & (((\ROM1|memROM~6_combout\ & \CPU|DECODER_INSTRU|saida~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~158_combout\,
	combout => \CPU|ULA1|saida[2]~6_combout\);

-- Location: FF_X1_Y27_N11
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~6_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: FF_X1_Y27_N59
\CPU|RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~19_q\);

-- Location: LABCELL_X1_Y27_N39
\CPU|RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~157_combout\ = ( !\ROM1|memROM~6_combout\ & ( (\CPU|RAM1|ram~19_q\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~19_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|RAM1|ram~157_combout\);

-- Location: LABCELL_X1_Y27_N42
\CPU|RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~158_combout\ = ( \CPU|RAM1|ram~157_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~157_combout\,
	combout => \CPU|RAM1|ram~158_combout\);

-- Location: LABCELL_X2_Y27_N42
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

-- Location: LABCELL_X1_Y27_N12
\CPU|ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\) # ((!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~160_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~8_combout\))) ) ) # 
-- ( !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|DECODER_INSTRU|saida~1_combout\ & ((!\CPU|DECODER_INSTRU|saida~0_combout\ & ((\CPU|RAM1|ram~160_combout\))) # (\CPU|DECODER_INSTRU|saida~0_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111111111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|RAM1|ALT_INV_ram~160_combout\,
	datac => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[3]~7_combout\);

-- Location: FF_X1_Y27_N14
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~7_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X1_Y28_N56
\CPU|RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~20_q\);

-- Location: LABCELL_X1_Y28_N0
\CPU|RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~159_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & \CPU|RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~159_combout\);

-- Location: LABCELL_X1_Y28_N9
\CPU|RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~160_combout\ = ( \CPU|RAM1|ram~159_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~159_combout\,
	combout => \CPU|RAM1|ram~160_combout\);

-- Location: LABCELL_X2_Y27_N45
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( (!\CPU|RAM1|ram~146_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( (!\CPU|RAM1|ram~146_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~146_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X1_Y27_N6
\CPU|ULA1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( !\CPU|DECODER_INSTRU|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[4]~0_combout\);

-- Location: FF_X1_Y27_N8
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X1_Y27_N38
\CPU|RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~21_q\);

-- Location: LABCELL_X1_Y27_N30
\CPU|RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~145_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~6_combout\ & ( \CPU|RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|RAM1|ram~145_combout\);

-- Location: LABCELL_X2_Y27_N12
\CPU|RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~146_combout\ = ( \CPU|RAM1|ram~145_combout\ & ( (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~145_combout\,
	combout => \CPU|RAM1|ram~146_combout\);

-- Location: LABCELL_X2_Y27_N48
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|RAM1|ram~148_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|RAM1|ram~148_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~148_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X2_Y26_N9
\CPU|FLIPFLOP1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~1_combout\ = ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~15_combout\ & \ROM1|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|FLIPFLOP1|DOUT~1_combout\);

-- Location: LABCELL_X2_Y27_N18
\CPU|ULA1|saida[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( !\CPU|DECODER_INSTRU|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[6]~2_combout\);

-- Location: FF_X2_Y27_N20
\CPU|REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~2_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X2_Y27_N19
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~2_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: FF_X1_Y27_N20
\CPU|RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~23_q\);

-- Location: LABCELL_X1_Y27_N18
\CPU|RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~149_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & \CPU|RAM1|ram~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|RAM1|ram~149_combout\);

-- Location: LABCELL_X1_Y27_N57
\CPU|RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~150_combout\ = ( !\ROM1|memROM~4_combout\ & ( \CPU|RAM1|ram~149_combout\ & ( !\ROM1|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~149_combout\,
	combout => \CPU|RAM1|ram~150_combout\);

-- Location: LABCELL_X2_Y27_N51
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|RAM1|ram~150_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|RAM1|ram~150_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT[6]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~150_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X2_Y27_N21
\CPU|ULA1|saida[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( !\CPU|DECODER_INSTRU|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[7]~3_combout\);

-- Location: FF_X2_Y27_N23
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~3_combout\,
	ena => \CPU|DECODER_INSTRU|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X1_Y27_N23
\CPU|RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \CPU|RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~24_q\);

-- Location: LABCELL_X1_Y27_N21
\CPU|RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~151_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & \CPU|RAM1|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|RAM1|ram~151_combout\);

-- Location: LABCELL_X1_Y27_N36
\CPU|RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~152_combout\ = ( \CPU|RAM1|ram~151_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~151_combout\,
	combout => \CPU|RAM1|ram~152_combout\);

-- Location: LABCELL_X2_Y27_N54
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|RAM1|ram~152_combout\) # (\CPU|DECODER_INSTRU|saida~0_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(7),
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida~0_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~152_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\);

-- Location: LABCELL_X2_Y27_N6
\CPU|FLIPFLOP1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~2_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLIPFLOP1|DOUT~1_combout\ & \CPU|FLIPFLOP1|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( \CPU|ULA1|Add1~29_sumout\ & ( 
-- (!\CPU|FLIPFLOP1|DOUT~1_combout\ & \CPU|FLIPFLOP1|DOUT~q\) ) ) ) # ( \CPU|ULA1|Add1~21_sumout\ & ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLIPFLOP1|DOUT~1_combout\ & \CPU|FLIPFLOP1|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLIPFLOP1|DOUT~1_combout\ & (\CPU|FLIPFLOP1|DOUT~q\)) # (\CPU|FLIPFLOP1|DOUT~1_combout\ & (((!\CPU|ULA1|Add1~17_sumout\ & !\CPU|ULA1|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	datab => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	datac => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|FLIPFLOP1|DOUT~2_combout\);

-- Location: LABCELL_X2_Y27_N0
\CPU|FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~0_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( \CPU|FLIPFLOP1|DOUT~2_combout\ & ( !\CPU|FLIPFLOP1|DOUT~1_combout\ ) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( \CPU|FLIPFLOP1|DOUT~2_combout\ & ( (!\CPU|FLIPFLOP1|DOUT~1_combout\) # 
-- ((!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datab => \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLIPFLOP1|DOUT~0_combout\);

-- Location: FF_X2_Y27_N1
\CPU|FLIPFLOP1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FLIPFLOP1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLIPFLOP1|DOUT~q\);

-- Location: LABCELL_X2_Y26_N18
\CPU|DESVIO1|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~0_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( ((!\CPU|FLIPFLOP1|DOUT~q\ & \ROM1|memROM~13_combout\)) # (\ROM1|memROM~19_combout\) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~15_combout\ & ( 
-- (!\ROM1|memROM~19_combout\) # ((!\CPU|DESVIO1|Sel[1]~0_combout\) # (\ROM1|memROM~13_combout\)) ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~19_combout\) 
-- # (!\ROM1|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111111111111111111111101011110101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \CPU|DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|DESVIO1|comb~0_combout\);

-- Location: LABCELL_X2_Y26_N33
\CPU|DESVIO1|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|comb~1_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~15_combout\ & \ROM1|memROM~19_combout\)))) # (\ROM1|memROM~17_combout\ & (\CPU|FLIPFLOP1|DOUT~q\ & (\ROM1|memROM~15_combout\ & 
-- !\ROM1|memROM~19_combout\))) ) ) # ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~17_combout\ & (\ROM1|memROM~15_combout\ & !\ROM1|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000001101000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DESVIO1|comb~1_combout\);

-- Location: LABCELL_X2_Y26_N24
\CPU|DESVIO1|Sel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel\(0) = ( \CPU|DESVIO1|Sel\(0) & ( !\CPU|DESVIO1|comb~0_combout\ ) ) # ( !\CPU|DESVIO1|Sel\(0) & ( (!\CPU|DESVIO1|comb~0_combout\ & \CPU|DESVIO1|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_comb~0_combout\,
	datac => \CPU|DESVIO1|ALT_INV_comb~1_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_Sel\(0),
	combout => \CPU|DESVIO1|Sel\(0));

-- Location: FF_X2_Y28_N31
\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DECODER_INSTRU|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

-- Location: LABCELL_X1_Y28_N27
\CPU|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[0]~0_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(0))))) # (\CPU|DESVIO1|Sel\(0) & 
-- (!\CPU|DESVIO1|Sel\(1))) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\CPU|DESVIO1|Sel\(0) & ((!\CPU|DESVIO1|Sel\(1) & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|DESVIO1|Sel\(1) & (\CPU|END_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datab => \CPU|DESVIO1|ALT_INV_Sel\(1),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|MUX2|MUX_OUT[0]~0_combout\);

-- Location: FF_X1_Y28_N28
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X50_Y20_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


