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

-- DATE "09/01/2022 15:15:52"

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

ENTITY 	Aula04 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REG_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula04;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_OUT[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula04 IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REG_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal1~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[4]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[3]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~5_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~32feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DECODER_INSTRU|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REG_OUT <= ww_REG_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\MUX1|ALT_INV_saida_MUX[0]~7_combout\ <= NOT \MUX1|saida_MUX[0]~7_combout\;
\MUX1|ALT_INV_saida_MUX[2]~6_combout\ <= NOT \MUX1|saida_MUX[2]~6_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\DECODER_INSTRU|ALT_INV_Equal1~1_combout\ <= NOT \DECODER_INSTRU|Equal1~1_combout\;
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\MUX1|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \MUX1|saida_MUX[3]~1_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \MUX1|saida_MUX[1]~0_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ <= NOT \DECODER_INSTRU|saida[3]~0_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\DECODER_INSTRU|ALT_INV_Equal1~0_combout\ <= NOT \DECODER_INSTRU|Equal1~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;

-- Location: IOOBUF_X0_Y21_N39
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X0_Y21_N5
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X0_Y21_N56
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X0_Y21_N22
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y20_N39
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y19_N39
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X0_Y20_N5
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X0_Y20_N22
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X29_Y0_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X24_Y0_N2
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X46_Y0_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X34_Y45_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X46_Y45_N93
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X23_Y0_N93
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X52_Y45_N53
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X40_Y45_N42
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X54_Y20_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X10_Y45_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X0_Y18_N96
\REG_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(0));

-- Location: IOOBUF_X0_Y19_N56
\REG_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(1));

-- Location: IOOBUF_X0_Y20_N56
\REG_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(2));

-- Location: IOOBUF_X0_Y19_N22
\REG_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(3));

-- Location: IOOBUF_X0_Y18_N62
\REG_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~7_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(4));

-- Location: IOOBUF_X0_Y19_N5
\REG_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(5));

-- Location: IOOBUF_X10_Y0_N59
\REG_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(6));

-- Location: IOOBUF_X8_Y45_N42
\REG_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_REG_OUT(7));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: MLABCELL_X4_Y26_N27
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( !\PC|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X5_Y26_N8
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X4_Y26_N32
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: MLABCELL_X4_Y26_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X4_Y26_N31
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y26_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X5_Y26_N5
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \incrementaPC|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: FF_X4_Y26_N38
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X4_Y26_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X4_Y26_N37
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y26_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X4_Y26_N40
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X4_Y26_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X4_Y26_N43
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X4_Y26_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X4_Y26_N46
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X4_Y26_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\);

-- Location: FF_X4_Y26_N49
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X5_Y26_N33
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(0) & ( (\PC|DOUT\(2) & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X5_Y26_N27
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT\(0) $ (!\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT\(0) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X5_Y26_N21
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X4_Y26_N3
\DECODER_INSTRU|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal1~1_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER_INSTRU|Equal1~1_combout\);

-- Location: LABCELL_X5_Y26_N15
\DECODER_INSTRU|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal1~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER_INSTRU|Equal1~0_combout\);

-- Location: LABCELL_X5_Y26_N45
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[1]~DUPLICATE_q\ $ (!\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X5_Y26_N42
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(3) & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X6_Y26_N31
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X6_Y26_N42
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \PC|DOUT\(1) & ( (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X6_Y26_N25
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X5_Y26_N36
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & ((\PC|DOUT[1]~DUPLICATE_q\))) # (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110000101100001011000010110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X6_Y26_N51
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & \RAM1|ram~33_q\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~3_combout\ & \RAM1|ram~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: LABCELL_X6_Y26_N21
\MUX1|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~7_combout\ = ( \RAM1|ram~162_combout\ & ( (((\PC|DOUT\(0)) # (\PC|DOUT\(1))) # (\PC|DOUT\(2))) # (\PC|DOUT\(3)) ) ) # ( !\RAM1|ram~162_combout\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~162_combout\,
	combout => \MUX1|saida_MUX[0]~7_combout\);

-- Location: LABCELL_X5_Y26_N48
\DECODER_INSTRU|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[4]~1_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\) # (\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER_INSTRU|saida[4]~1_combout\);

-- Location: FF_X5_Y26_N23
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX1|saida_MUX[0]~7_combout\,
	sload => VCC,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X7_Y26_N12
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT\(0) & ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X7_Y26_N6
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~162_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~162_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X7_Y26_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X7_Y26_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REGA|DOUT\(0) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~145_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \REGA|DOUT\(0) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~145_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: MLABCELL_X4_Y26_N15
\DECODER_INSTRU|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[3]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER_INSTRU|saida[3]~0_combout\);

-- Location: LABCELL_X6_Y26_N3
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\DECODER_INSTRU|saida[3]~0_combout\ & (\ULA1|Add0~1_sumout\)) # (\DECODER_INSTRU|saida[3]~0_combout\ & ((\MUX1|saida_MUX[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~1_sumout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~7_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X5_Y26_N54
\MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~0_combout\ = ( \DECODER_INSTRU|Equal1~0_combout\ & ( \ROM1|memROM~5_combout\ ) ) # ( !\DECODER_INSTRU|Equal1~0_combout\ & ( \RAM1|ram~148_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~148_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	combout => \MUX1|saida_MUX[1]~0_combout\);

-- Location: FF_X5_Y26_N56
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX1|saida_MUX[1]~0_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X5_Y26_N38
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X5_Y26_N6
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \RAM1|ram~34_q\ & ( ((\PC|DOUT\(0)) # (\PC|DOUT\(2))) # (\PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~34_q\,
	combout => \RAM1|ram~147_combout\);

-- Location: FF_X6_Y26_N29
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X6_Y26_N27
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = (\RAM1|ram~26_q\ & (((\PC|DOUT\(2)) # (\PC|DOUT\(0))) # (\PC|DOUT[3]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \RAM1|ALT_INV_ram~26_q\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X6_Y26_N57
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~146_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~147_combout\)) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\)) ) ) # ( !\RAM1|ram~146_combout\ & ( (!\ROM1|memROM~3_combout\ & 
-- (\ROM1|memROM~5_combout\ & \RAM1|ram~147_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001010000010110100101000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~147_combout\,
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X7_Y26_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~148_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~148_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X6_Y26_N54
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \MUX1|saida_MUX[1]~0_combout\ & ( (\ULA1|Add0~5_sumout\) # (\DECODER_INSTRU|saida[3]~0_combout\) ) ) # ( !\MUX1|saida_MUX[1]~0_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & \ULA1|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X5_Y26_N35
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX1|saida_MUX[2]~6_combout\,
	sload => VCC,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X5_Y26_N52
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: FF_X6_Y26_N44
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X5_Y26_N9
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \RAM1|ram~27_q\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~35_q\ & \ROM1|memROM~5_combout\)) # (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~5_combout\))) ) ) # ( !\RAM1|ram~27_q\ & ( (\RAM1|ram~35_q\ & (!\ROM1|memROM~3_combout\ & 
-- \ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001111001100000000111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~27_q\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X5_Y26_N0
\MUX1|saida_MUX[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~6_combout\ = ( \RAM1|ram~163_combout\ & ( (((!\PC|DOUT[1]~DUPLICATE_q\) # (\PC|DOUT\(2))) # (\PC|DOUT\(0))) # (\PC|DOUT[3]~DUPLICATE_q\) ) ) # ( !\RAM1|ram~163_combout\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT\(0) & 
-- (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000011110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~163_combout\,
	combout => \MUX1|saida_MUX[2]~6_combout\);

-- Location: LABCELL_X6_Y26_N15
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X6_Y26_N39
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = (\RAM1|ram~163_combout\ & !\ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~163_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X7_Y26_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REGA|DOUT\(2) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REGA|DOUT\(2) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \REGA|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: MLABCELL_X4_Y26_N54
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \MUX1|saida_MUX[2]~6_combout\ & ( \ULA1|Add0~9_sumout\ ) ) # ( !\MUX1|saida_MUX[2]~6_combout\ & ( \ULA1|Add0~9_sumout\ & ( !\DECODER_INSTRU|saida[3]~0_combout\ ) ) ) # ( \MUX1|saida_MUX[2]~6_combout\ & ( !\ULA1|Add0~9_sumout\ 
-- & ( \DECODER_INSTRU|saida[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datae => \MUX1|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: LABCELL_X6_Y26_N0
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(0) & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X6_Y26_N38
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUX1|saida_MUX[3]~1_combout\,
	sload => VCC,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X6_Y26_N17
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X6_Y26_N30
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \PC|DOUT\(3) & ( \RAM1|ram~28_q\ ) ) # ( !\PC|DOUT\(3) & ( (\RAM1|ram~28_q\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~28_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~150_combout\);

-- Location: FF_X6_Y26_N8
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X6_Y26_N45
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \PC|DOUT\(3) & ( \RAM1|ram~36_q\ ) ) # ( !\PC|DOUT\(3) & ( (\RAM1|ram~36_q\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \RAM1|ALT_INV_ram~36_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X6_Y26_N36
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & \RAM1|ram~151_combout\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~150_combout\ & \ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~150_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X6_Y26_N24
\MUX1|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~1_combout\ = ( \DECODER_INSTRU|Equal1~0_combout\ & ( \ROM1|memROM~7_combout\ ) ) # ( !\DECODER_INSTRU|Equal1~0_combout\ & ( \RAM1|ram~152_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	combout => \MUX1|saida_MUX[3]~1_combout\);

-- Location: LABCELL_X7_Y26_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X6_Y26_N48
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\DECODER_INSTRU|saida[3]~0_combout\ & ((\ULA1|Add0~13_sumout\))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (\MUX1|saida_MUX[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[3]~1_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: LABCELL_X6_Y26_N18
\MUX1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~5_combout\ = ( \RAM1|ram~153_combout\ & ( ((\PC|DOUT\(0)) # (\PC|DOUT\(3))) # (\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \MUX1|saida_MUX[4]~5_combout\);

-- Location: FF_X6_Y26_N19
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX1|saida_MUX[4]~5_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X6_Y26_N11
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X6_Y26_N14
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X6_Y26_N9
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \RAM1|ram~29_q\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~37_q\)) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\)) ) ) # ( !\RAM1|ram~29_q\ & ( (!\ROM1|memROM~3_combout\ & 
-- (\ROM1|memROM~5_combout\ & \RAM1|ram~37_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001000100011001100100010001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~37_q\,
	dataf => \RAM1|ALT_INV_ram~29_q\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X7_Y26_N3
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~153_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X7_Y26_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~154_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~154_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X7_Y26_N27
\ULA1|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~7_combout\ = (\ULA1|Add0~17_sumout\ & (((\PC|DOUT\(0)) # (\PC|DOUT\(2))) # (\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	datad => \PC|ALT_INV_DOUT\(0),
	combout => \ULA1|saida[4]~7_combout\);

-- Location: FF_X5_Y26_N14
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X5_Y26_N12
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \RAM1|ram~38_q\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (\RAM1|ram~38_q\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \RAM1|ALT_INV_ram~38_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~156_combout\);

-- Location: FF_X6_Y26_N46
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X7_Y26_N0
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \PC|DOUT\(3) & ( \RAM1|ram~30_q\ ) ) # ( !\PC|DOUT\(3) & ( (\RAM1|ram~30_q\ & ((\PC|DOUT\(0)) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \RAM1|ALT_INV_ram~30_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X5_Y26_N51
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \RAM1|ram~155_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~3_combout\)) # (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~3_combout\ & \RAM1|ram~156_combout\)) ) ) # ( !\RAM1|ram~155_combout\ & ( (\ROM1|memROM~5_combout\ & 
-- (!\ROM1|memROM~3_combout\ & \RAM1|ram~156_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000100110001001100010011000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X5_Y26_N30
\MUX1|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~2_combout\ = ( \RAM1|ram~157_combout\ & ( !\DECODER_INSTRU|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \MUX1|saida_MUX[5]~2_combout\);

-- Location: FF_X5_Y26_N31
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX1|saida_MUX[5]~2_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X7_Y26_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~157_combout\))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~157_combout\))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001100100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: MLABCELL_X4_Y26_N21
\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = ( \PC|DOUT\(3) & ( \ULA1|Add0~21_sumout\ ) ) # ( !\PC|DOUT\(3) & ( \ULA1|Add0~21_sumout\ & ( (\PC|DOUT\(0)) # (\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

-- Location: LABCELL_X5_Y26_N18
\MUX1|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~4_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( \RAM1|ram~164_combout\ ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (\RAM1|ram~164_combout\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \RAM1|ALT_INV_ram~164_combout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MUX1|saida_MUX[6]~4_combout\);

-- Location: FF_X5_Y26_N19
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX1|saida_MUX[6]~4_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X6_Y26_N1
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X6_Y26_N53
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: LABCELL_X6_Y26_N6
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \RAM1|ram~31_q\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~39_q\)) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\)) ) ) # ( !\RAM1|ram~31_q\ & ( (!\ROM1|memROM~3_combout\ & 
-- (\ROM1|memROM~5_combout\ & \RAM1|ram~39_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001000110010001100100011001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~39_q\,
	dataf => \RAM1|ALT_INV_ram~31_q\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X6_Y26_N33
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = (\RAM1|ram~164_combout\ & !\ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~164_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X7_Y26_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~158_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~158_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X7_Y26_N24
\ULA1|saida[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~5_combout\ = (\ULA1|Add0~25_sumout\ & (((\PC|DOUT\(0)) # (\PC|DOUT\(2))) # (\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \PC|ALT_INV_DOUT\(0),
	combout => \ULA1|saida[6]~5_combout\);

-- Location: LABCELL_X5_Y26_N57
\MUX1|saida_MUX[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~3_combout\ = ( \RAM1|ram~161_combout\ & ( !\DECODER_INSTRU|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX1|saida_MUX[7]~3_combout\);

-- Location: FF_X5_Y26_N59
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX1|saida_MUX[7]~3_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X5_Y26_N40
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X5_Y26_N3
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~40_q\ & ( ((\PC|DOUT\(2)) # (\PC|DOUT\(0))) # (\PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~40_q\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X7_Y26_N21
\RAM1|ram~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~32feeder_combout\ = ( \REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~32feeder_combout\);

-- Location: FF_X7_Y26_N22
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~32feeder_combout\,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X5_Y26_N39
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \RAM1|ram~32_q\ & ( ((\PC|DOUT\(3)) # (\PC|DOUT\(0))) # (\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~32_q\,
	combout => \RAM1|ram~159_combout\);

-- Location: LABCELL_X5_Y26_N24
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~159_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|ram~160_combout\)) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\)) ) ) # ( !\RAM1|ram~159_combout\ & ( (!\ROM1|memROM~3_combout\ & 
-- (\ROM1|memROM~5_combout\ & \RAM1|ram~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110000001111000011000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X7_Y26_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((\RAM1|ram~161_combout\ & !\DECODER_INSTRU|Equal1~0_combout\))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~161_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X7_Y26_N9
\ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~4_combout\ = ( \PC|DOUT\(3) & ( \ULA1|Add0~29_sumout\ ) ) # ( !\PC|DOUT\(3) & ( (\ULA1|Add0~29_sumout\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ULA1|saida[7]~4_combout\);

-- Location: IOIBUF_X34_Y0_N35
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X20_Y45_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X54_Y19_N38
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X38_Y45_N52
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X10_Y45_N1
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X42_Y13_N3
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


