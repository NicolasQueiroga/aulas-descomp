-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "09/02/2022 15:10:38"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula04;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PC_OUT[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal1~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[3]~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal1~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~4_combout\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[3]~2_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[5]~3_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[6]~4_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[6]~4_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\MUX2|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX2|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\MUX2|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX2|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\MUX2|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX2|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\MUX2|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX2|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\MUX2|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX2|saida_MUX[3]~3_combout\;
\MUX2|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX2|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\MUX2|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX2|saida_MUX[6]~6_combout\;
\MUX2|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX2|saida_MUX[7]~7_combout\;
\MUX2|ALT_INV_saida_MUX[17]~9_combout\ <= NOT \MUX2|saida_MUX[17]~9_combout\;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\MUX2|ALT_INV_saida_MUX[20]~12_combout\ <= NOT \MUX2|saida_MUX[20]~12_combout\;
\MUX2|ALT_INV_saida_MUX[22]~14_combout\ <= NOT \MUX2|saida_MUX[22]~14_combout\;
\MUX2|ALT_INV_saida_MUX[23]~15_combout\ <= NOT \MUX2|saida_MUX[23]~15_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\MUX2|ALT_INV_saida_MUX[21]~13_combout\ <= NOT \MUX2|saida_MUX[21]~13_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\DECODER_INSTRU|ALT_INV_Equal1~0_combout\ <= NOT \DECODER_INSTRU|Equal1~0_combout\;
\DECODER_INSTRU|ALT_INV_Equal1~1_combout\ <= NOT \DECODER_INSTRU|Equal1~1_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\MUX2|ALT_INV_saida_MUX[19]~11_combout\ <= NOT \MUX2|saida_MUX[19]~11_combout\;
\MUX2|ALT_INV_saida_MUX[18]~10_combout\ <= NOT \MUX2|saida_MUX[18]~10_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\MUX2|ALT_INV_saida_MUX[16]~8_combout\ <= NOT \MUX2|saida_MUX[16]~8_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[6]~4_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[6]~4_combout\;
\DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ <= NOT \DECODER_INSTRU|saida[3]~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REGA|DOUT[0]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \REGA|DOUT[6]~DUPLICATE_q\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REGA|DOUT[3]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA|DOUT[7]~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|rascSaida7seg[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|rascSaida7seg[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|rascSaida7seg[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X44_Y45_N36
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

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

-- Location: LABCELL_X10_Y1_N57
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y1_N58
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X43_Y3_N15
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X40_Y3_N6
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X41_Y3_N44
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X40_Y3_N30
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X41_Y3_N41
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X40_Y3_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X41_Y3_N35
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X40_Y3_N36
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X41_Y3_N53
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X41_Y3_N27
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(2) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT\(1) & ( (\PC|DOUT\(2) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X41_Y3_N0
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (\PC|DOUT\(2) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(1) & ( (\PC|DOUT\(2) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X41_Y3_N54
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X41_Y3_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT\(1) & ( (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X41_Y3_N18
\DECODER_INSTRU|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal1~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER_INSTRU|Equal1~0_combout\);

-- Location: LABCELL_X41_Y3_N33
\DECODER_INSTRU|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[3]~0_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~4_combout\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER_INSTRU|saida[3]~0_combout\);

-- Location: LABCELL_X41_Y3_N9
\DECODER_INSTRU|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal1~1_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER_INSTRU|Equal1~1_combout\);

-- Location: LABCELL_X41_Y3_N39
\DECODER_INSTRU|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~5_combout\) ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\) # (\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER_INSTRU|saida~1_combout\);

-- Location: FF_X42_Y3_N16
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[0]~1_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: MLABCELL_X42_Y3_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( !\DECODER_INSTRU|Equal1~1_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: MLABCELL_X42_Y3_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~0_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~0_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: MLABCELL_X42_Y3_N15
\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~5_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (((\RAM1|ram~149_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\))) ) ) # ( 
-- !\ROM1|memROM~0_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~5_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~149_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \RAM1|ALT_INV_ram~149_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ULA1|saida[0]~1_combout\);

-- Location: FF_X42_Y3_N17
\REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[0]~1_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N24
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \PC|DOUT\(0) & ( !\PC|DOUT\(2) & ( (\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X43_Y3_N56
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X43_Y3_N12
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~25_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~25_q\ & ((\PC|DOUT\(0)) # (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X40_Y3_N54
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \PC|DOUT\(0) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X42_Y3_N43
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X41_Y3_N57
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~33_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~33_q\ & ((\PC|DOUT\(0)) # (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \RAM1|ALT_INV_ram~33_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X41_Y3_N24
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(1) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(1) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X42_Y3_N27
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & \RAM1|ram~148_combout\) ) ) # ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & \RAM1|ram~147_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~147_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X43_Y3_N42
\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = ( \REGA|DOUT[0]~DUPLICATE_q\ & ( (\SW[9]~input_o\) # (\RAM1|ram~149_combout\) ) ) # ( !\REGA|DOUT[0]~DUPLICATE_q\ & ( (\RAM1|ram~149_combout\ & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X41_Y3_N36
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X41_Y3_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X43_Y3_N23
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: FF_X43_Y3_N38
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X43_Y3_N24
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~1_combout\ & ( (\RAM1|ram~36_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~1_combout\ & ( (\RAM1|ram~28_q\ & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~36_q\,
	datac => \RAM1|ALT_INV_ram~28_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X43_Y3_N3
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: FF_X42_Y3_N13
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[3]~0_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X43_Y3_N29
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X43_Y3_N27
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~27_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~27_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \RAM1|ALT_INV_ram~27_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~151_combout\);

-- Location: FF_X43_Y3_N50
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: LABCELL_X43_Y3_N30
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \PC|DOUT\(3) & ( \PC|DOUT\(2) & ( \RAM1|ram~35_q\ ) ) ) # ( !\PC|DOUT\(3) & ( \PC|DOUT\(2) & ( \RAM1|ram~35_q\ ) ) ) # ( \PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( \RAM1|ram~35_q\ ) ) ) # ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( 
-- (\RAM1|ram~35_q\ & \PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~35_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X43_Y3_N6
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \RAM1|ram~152_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & \RAM1|ram~151_combout\)) ) ) # ( !\RAM1|ram~152_combout\ & ( (\ROM1|memROM~0_combout\ & 
-- (!\ROM1|memROM~1_combout\ & \RAM1|ram~151_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001100001111000000110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: MLABCELL_X42_Y3_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~163_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~163_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: MLABCELL_X42_Y3_N0
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~9_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (((\RAM1|ram~163_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\))) ) ) # ( 
-- !\ROM1|memROM~1_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~9_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~163_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	datad => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: FF_X42_Y3_N1
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[1]~2_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X43_Y3_N40
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X41_Y3_N23
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X41_Y3_N48
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~1_combout\ & ( (\RAM1|ram~34_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~1_combout\ & ( (\RAM1|ram~26_q\ & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X41_Y3_N15
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \RAM1|ram~150_combout\ & ( (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: MLABCELL_X42_Y3_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(2) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~153_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(2) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~153_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \REGA|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: MLABCELL_X42_Y3_N3
\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~13_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (((\RAM1|ram~153_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\))) ) ) # ( 
-- !\ROM1|memROM~3_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~13_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~153_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ULA1|saida[2]~3_combout\);

-- Location: FF_X42_Y3_N5
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[2]~3_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: MLABCELL_X42_Y3_N42
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: MLABCELL_X42_Y3_N12
\ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\) # ((!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~146_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\ & ((\ROM1|memROM~2_combout\)))) ) ) # ( 
-- !\ULA1|Add0~1_sumout\ & ( (\DECODER_INSTRU|saida[3]~0_combout\ & ((!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~146_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\ & ((\ROM1|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[3]~0_combout\);

-- Location: FF_X42_Y3_N14
\REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[3]~0_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N0
\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT\(1) ) ) # ( !\SW[9]~input_o\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \RAM1|ram~150_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	datad => \REGA|ALT_INV_DOUT\(1),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X39_Y2_N3
\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = ( \REGA|DOUT\(2) & ( (\RAM1|ram~153_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT\(2) & ( (!\SW[9]~input_o\ & \RAM1|ram~153_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	combout => \MUX2|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X43_Y3_N51
\HEX0_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \RAM1|ram~146_combout\ & ( \MUX2|saida_MUX[2]~2_combout\ & ( (!\MUX2|saida_MUX[1]~1_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ $ (((!\SW[9]~input_o\) # (\REGA|DOUT[3]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\RAM1|ram~146_combout\ & ( \MUX2|saida_MUX[2]~2_combout\ & ( (!\MUX2|saida_MUX[1]~1_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ $ (((\SW[9]~input_o\ & \REGA|DOUT[3]~DUPLICATE_q\))))) ) ) ) # ( \RAM1|ram~146_combout\ & ( !\MUX2|saida_MUX[2]~2_combout\ & ( 
-- (\MUX2|saida_MUX[0]~0_combout\ & (!\MUX2|saida_MUX[1]~1_combout\ $ (((!\SW[9]~input_o\) # (\REGA|DOUT[3]~DUPLICATE_q\))))) ) ) ) # ( !\RAM1|ram~146_combout\ & ( !\MUX2|saida_MUX[2]~2_combout\ & ( (\MUX2|saida_MUX[0]~0_combout\ & 
-- (!\MUX2|saida_MUX[1]~1_combout\ $ (((\SW[9]~input_o\ & \REGA|DOUT[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000001000100000010001111001001000000000110001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N24
\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = ( \REGA|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~3_combout\ & ( \SW[9]~input_o\ ) ) ) # ( \REGA|DOUT[3]~DUPLICATE_q\ & ( !\ROM1|memROM~3_combout\ & ( ((!\ROM1|memROM~2_combout\ & \RAM1|ram~145_combout\)) # (\SW[9]~input_o\) ) 
-- ) ) # ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\SW[9]~input_o\ & \RAM1|ram~145_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000011111100111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~145_combout\,
	datae => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N36
\HEX0_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[0]~0_combout\ & ((\MUX2|saida_MUX[2]~2_combout\))) # (\MUX2|saida_MUX[0]~0_combout\ & (\MUX2|saida_MUX[3]~3_combout\)) ) ) # ( 
-- !\MUX2|saida_MUX[1]~1_combout\ & ( (\MUX2|saida_MUX[2]~2_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ $ (!\MUX2|saida_MUX[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N39
\HEX0_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[3]~3_combout\ & ( (\MUX2|saida_MUX[2]~2_combout\ & ((!\MUX2|saida_MUX[0]~0_combout\) # (\MUX2|saida_MUX[1]~1_combout\))) ) ) # ( !\MUX2|saida_MUX[3]~3_combout\ & ( 
-- (!\MUX2|saida_MUX[0]~0_combout\ & (\MUX2|saida_MUX[1]~1_combout\ & !\MUX2|saida_MUX[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y3_N54
\HEX0_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[3]~3_combout\ & ( (\MUX2|saida_MUX[1]~1_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ $ (\MUX2|saida_MUX[2]~2_combout\))) ) ) # ( !\MUX2|saida_MUX[3]~3_combout\ & ( 
-- (!\MUX2|saida_MUX[0]~0_combout\ & (!\MUX2|saida_MUX[1]~1_combout\ & \MUX2|saida_MUX[2]~2_combout\)) # (\MUX2|saida_MUX[0]~0_combout\ & (!\MUX2|saida_MUX[1]~1_combout\ $ (\MUX2|saida_MUX[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N36
\HEX0_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[2]~2_combout\ & ( (!\MUX2|saida_MUX[3]~3_combout\ & (((!\SW[9]~input_o\) # (!\MUX2|saida_MUX[1]~1_combout\)) # (\REGA|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[2]~2_combout\ & ( (!\MUX2|saida_MUX[3]~3_combout\ & ((!\MUX2|saida_MUX[1]~1_combout\) # ((\REGA|DOUT[0]~DUPLICATE_q\ & \SW[9]~input_o\)))) ) ) ) # ( \RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[2]~2_combout\ & ( 
-- (!\MUX2|saida_MUX[3]~3_combout\ & (((!\SW[9]~input_o\)) # (\REGA|DOUT[0]~DUPLICATE_q\))) # (\MUX2|saida_MUX[3]~3_combout\ & (!\MUX2|saida_MUX[1]~1_combout\ & ((!\SW[9]~input_o\) # (\REGA|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\RAM1|ram~149_combout\ & ( 
-- !\MUX2|saida_MUX[2]~2_combout\ & ( (\REGA|DOUT[0]~DUPLICATE_q\ & (\SW[9]~input_o\ & ((!\MUX2|saida_MUX[3]~3_combout\) # (!\MUX2|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010111100111010001010101010000000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y3_N54
\HEX0_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \RAM1|ram~146_combout\ & ( \MUX2|saida_MUX[0]~0_combout\ & ( (!\SW[9]~input_o\ & (((\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[1]~1_combout\)))) # (\SW[9]~input_o\ & (!\REGA|DOUT[3]~DUPLICATE_q\ $ 
-- (((\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[1]~1_combout\))))) ) ) ) # ( !\RAM1|ram~146_combout\ & ( \MUX2|saida_MUX[0]~0_combout\ & ( (!\SW[9]~input_o\ & (((!\MUX2|saida_MUX[2]~2_combout\) # (\MUX2|saida_MUX[1]~1_combout\)))) # (\SW[9]~input_o\ & 
-- (!\REGA|DOUT[3]~DUPLICATE_q\ $ (((\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[1]~1_combout\))))) ) ) ) # ( \RAM1|ram~146_combout\ & ( !\MUX2|saida_MUX[0]~0_combout\ & ( (\SW[9]~input_o\ & (!\REGA|DOUT[3]~DUPLICATE_q\ & (!\MUX2|saida_MUX[2]~2_combout\ 
-- & \MUX2|saida_MUX[1]~1_combout\))) ) ) ) # ( !\RAM1|ram~146_combout\ & ( !\MUX2|saida_MUX[0]~0_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[1]~1_combout\ & ((!\SW[9]~input_o\) # (!\REGA|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000100000011100001111011100100101101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N57
\HEX0_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX2|saida_MUX[3]~3_combout\ & ( (!\MUX2|saida_MUX[0]~0_combout\ & (!\MUX2|saida_MUX[1]~1_combout\ & \MUX2|saida_MUX[2]~2_combout\)) ) ) # ( !\MUX2|saida_MUX[3]~3_combout\ & ( (!\MUX2|saida_MUX[1]~1_combout\ 
-- & ((!\MUX2|saida_MUX[2]~2_combout\))) # (\MUX2|saida_MUX[1]~1_combout\ & (\MUX2|saida_MUX[0]~0_combout\ & \MUX2|saida_MUX[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000010001110011000001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: FF_X42_Y3_N11
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X42_Y3_N53
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: FF_X43_Y3_N58
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X43_Y3_N9
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~32_q\ & ( (!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~0_combout\))) # (\ROM1|memROM~1_combout\ & (\RAM1|ram~40_q\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\RAM1|ram~32_q\ & ( (\RAM1|ram~40_q\ & (\ROM1|memROM~1_combout\ & 
-- !\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101111100000000010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~40_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~32_q\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X43_Y3_N21
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~154_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: FF_X42_Y3_N20
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~4_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: MLABCELL_X42_Y3_N45
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~158_combout\))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(4) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~158_combout\))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: MLABCELL_X42_Y3_N21
\ULA1|saida[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~6_combout\ = ( \PC|DOUT\(3) & ( \ULA1|Add0~21_sumout\ ) ) # ( !\PC|DOUT\(3) & ( (\ULA1|Add0~21_sumout\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ULA1|saida[4]~6_combout\);

-- Location: FF_X42_Y3_N22
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[4]~6_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X43_Y3_N19
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: LABCELL_X43_Y3_N45
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~37_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~37_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~157_combout\);

-- Location: FF_X43_Y3_N44
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X41_Y3_N42
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~29_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~29_q\ & ((\PC|DOUT\(0)) # (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \RAM1|ALT_INV_ram~29_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~156_combout\);

-- Location: MLABCELL_X42_Y3_N6
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~156_combout\ & ( (!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~0_combout\))) # (\ROM1|memROM~1_combout\ & (\RAM1|ram~157_combout\ & !\ROM1|memROM~0_combout\)) ) ) # ( !\RAM1|ram~156_combout\ & ( (\RAM1|ram~157_combout\ & 
-- (\ROM1|memROM~1_combout\ & !\ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101111100000000010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~157_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~156_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: MLABCELL_X42_Y3_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~164_combout\))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~164_combout\))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \RAM1|ALT_INV_ram~164_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: MLABCELL_X42_Y3_N24
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add0~25_sumout\ & ( ((\PC|DOUT\(0)) # (\PC|DOUT\(3))) # (\PC|DOUT\(2)) ) )

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
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X42_Y3_N26
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: FF_X43_Y3_N53
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X43_Y3_N35
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X41_Y3_N45
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~1_combout\ & ( (\RAM1|ram~38_q\ & !\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~1_combout\ & ( (\RAM1|ram~30_q\ & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~38_q\,
	datac => \RAM1|ALT_INV_ram~30_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: LABCELL_X41_Y3_N30
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~159_combout\ & !\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~159_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: MLABCELL_X42_Y3_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~162_combout\))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( \REGA|DOUT\(6) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~162_combout\))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \RAM1|ALT_INV_ram~162_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: MLABCELL_X42_Y3_N18
\ULA1|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~4_combout\ = ( \ULA1|Add0~29_sumout\ & ( ((\PC|DOUT\(0)) # (\PC|DOUT\(3))) # (\PC|DOUT\(2)) ) )

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
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[6]~4_combout\);

-- Location: FF_X42_Y3_N19
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~4_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X41_Y3_N59
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: LABCELL_X41_Y3_N51
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~31_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~31_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~160_combout\);

-- Location: FF_X42_Y3_N50
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: LABCELL_X41_Y3_N6
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \PC|DOUT\(2) & ( \RAM1|ram~39_q\ ) ) # ( !\PC|DOUT\(2) & ( (\RAM1|ram~39_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \RAM1|ALT_INV_ram~39_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X41_Y3_N3
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \RAM1|ram~161_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~160_combout\ & \ROM1|memROM~0_combout\)) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~0_combout\))) ) ) # ( !\RAM1|ram~161_combout\ & ( (!\ROM1|memROM~1_combout\ 
-- & (\RAM1|ram~160_combout\ & \ROM1|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001010101000010100101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: MLABCELL_X42_Y3_N54
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~155_combout\))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~17_sumout\);

-- Location: MLABCELL_X42_Y3_N9
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add0~17_sumout\ & ( ((\PC|DOUT\(3)) # (\PC|DOUT\(2))) # (\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X42_Y3_N10
\REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N0
\MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~5_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~159_combout\ & ( \REGA|DOUT\(5) ) ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~159_combout\ & ( (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\) ) ) ) # ( \SW[9]~input_o\ & ( 
-- !\RAM1|ram~159_combout\ & ( \REGA|DOUT\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111110000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGA|ALT_INV_DOUT\(5),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \MUX2|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N30
\MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~6_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~162_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT[6]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~162_combout\,
	combout => \MUX2|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X44_Y3_N18
\MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~4_combout\ = ( \REGA|DOUT\(4) & ( (\RAM1|ram~158_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT\(4) & ( (!\SW[9]~input_o\ & \RAM1|ram~158_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \MUX2|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N12
\HEX1_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \RAM1|ram~155_combout\ & ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\MUX2|saida_MUX[5]~5_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ $ (((!\SW[9]~input_o\) # (\REGA|DOUT[7]~DUPLICATE_q\))))) # 
-- (\MUX2|saida_MUX[5]~5_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ & ((!\SW[9]~input_o\) # (\REGA|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( !\RAM1|ram~155_combout\ & ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\MUX2|saida_MUX[5]~5_combout\ & 
-- (!\MUX2|saida_MUX[6]~6_combout\ $ (((\REGA|DOUT[7]~DUPLICATE_q\ & \SW[9]~input_o\))))) # (\MUX2|saida_MUX[5]~5_combout\ & (\REGA|DOUT[7]~DUPLICATE_q\ & (\SW[9]~input_o\ & !\MUX2|saida_MUX[6]~6_combout\))) ) ) ) # ( \RAM1|ram~155_combout\ & ( 
-- !\MUX2|saida_MUX[4]~4_combout\ & ( (!\REGA|DOUT[7]~DUPLICATE_q\ & (\SW[9]~input_o\ & (!\MUX2|saida_MUX[5]~5_combout\ & \MUX2|saida_MUX[6]~6_combout\))) ) ) ) # ( !\RAM1|ram~155_combout\ & ( !\MUX2|saida_MUX[4]~4_combout\ & ( 
-- (!\MUX2|saida_MUX[5]~5_combout\ & (\MUX2|saida_MUX[6]~6_combout\ & ((!\REGA|DOUT[7]~DUPLICATE_q\) # (!\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000010000011100001000100000010110111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datae => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N42
\MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~7_combout\ = ( \RAM1|ram~154_combout\ & ( (!\SW[9]~input_o\ & (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\)))) # (\SW[9]~input_o\ & (((\REGA|DOUT[7]~DUPLICATE_q\)))) ) ) # ( !\RAM1|ram~154_combout\ & ( (\SW[9]~input_o\ & 
-- \REGA|DOUT[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110001101000001011000110100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX2|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X44_Y3_N51
\HEX1_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\MUX2|saida_MUX[5]~5_combout\ & (\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[7]~7_combout\)) # (\MUX2|saida_MUX[5]~5_combout\ & ((\MUX2|saida_MUX[7]~7_combout\))) ) ) 
-- # ( !\MUX2|saida_MUX[4]~4_combout\ & ( (\MUX2|saida_MUX[6]~6_combout\ & ((\MUX2|saida_MUX[7]~7_combout\) # (\MUX2|saida_MUX[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N21
\HEX1_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( (\MUX2|saida_MUX[5]~5_combout\ & (\MUX2|saida_MUX[7]~7_combout\ & \MUX2|saida_MUX[6]~6_combout\)) ) ) # ( !\MUX2|saida_MUX[4]~4_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ & 
-- (\MUX2|saida_MUX[5]~5_combout\ & !\MUX2|saida_MUX[6]~6_combout\)) # (\MUX2|saida_MUX[7]~7_combout\ & ((\MUX2|saida_MUX[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N54
\HEX1_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[6]~6_combout\ & ( (!\MUX2|saida_MUX[4]~4_combout\ & (!\MUX2|saida_MUX[7]~7_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) # (\MUX2|saida_MUX[4]~4_combout\ & ((\MUX2|saida_MUX[5]~5_combout\))) ) ) 
-- # ( !\MUX2|saida_MUX[6]~6_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ & (\MUX2|saida_MUX[4]~4_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) # (\MUX2|saida_MUX[7]~7_combout\ & (!\MUX2|saida_MUX[4]~4_combout\ & \MUX2|saida_MUX[5]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N36
\HEX1_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \RAM1|ram~158_combout\ & ( \REGA|DOUT\(4) & ( (!\MUX2|saida_MUX[7]~7_combout\) # ((!\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) ) ) ) # ( !\RAM1|ram~158_combout\ & ( \REGA|DOUT\(4) & ( 
-- (!\MUX2|saida_MUX[5]~5_combout\ & ((!\MUX2|saida_MUX[6]~6_combout\ & (\SW[9]~input_o\)) # (\MUX2|saida_MUX[6]~6_combout\ & ((!\MUX2|saida_MUX[7]~7_combout\))))) # (\MUX2|saida_MUX[5]~5_combout\ & (\SW[9]~input_o\ & ((!\MUX2|saida_MUX[7]~7_combout\)))) ) ) 
-- ) # ( \RAM1|ram~158_combout\ & ( !\REGA|DOUT\(4) & ( (!\MUX2|saida_MUX[5]~5_combout\ & ((!\MUX2|saida_MUX[6]~6_combout\ & (!\SW[9]~input_o\)) # (\MUX2|saida_MUX[6]~6_combout\ & ((!\MUX2|saida_MUX[7]~7_combout\))))) # (\MUX2|saida_MUX[5]~5_combout\ & 
-- (!\SW[9]~input_o\ & ((!\MUX2|saida_MUX[7]~7_combout\)))) ) ) ) # ( !\RAM1|ram~158_combout\ & ( !\REGA|DOUT\(4) & ( (\MUX2|saida_MUX[6]~6_combout\ & (!\MUX2|saida_MUX[5]~5_combout\ & !\MUX2|saida_MUX[7]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000101110101000000001110101010000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datae => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N6
\HEX1_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \RAM1|ram~155_combout\ & ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\REGA|DOUT[7]~DUPLICATE_q\ & (!\SW[9]~input_o\ $ (((!\MUX2|saida_MUX[6]~6_combout\) # (\MUX2|saida_MUX[5]~5_combout\))))) # 
-- (\REGA|DOUT[7]~DUPLICATE_q\ & (((!\MUX2|saida_MUX[5]~5_combout\ & \MUX2|saida_MUX[6]~6_combout\)))) ) ) ) # ( !\RAM1|ram~155_combout\ & ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\REGA|DOUT[7]~DUPLICATE_q\ & (((!\MUX2|saida_MUX[6]~6_combout\) # 
-- (\MUX2|saida_MUX[5]~5_combout\)))) # (\REGA|DOUT[7]~DUPLICATE_q\ & (!\SW[9]~input_o\ $ (((!\MUX2|saida_MUX[5]~5_combout\ & \MUX2|saida_MUX[6]~6_combout\))))) ) ) ) # ( \RAM1|ram~155_combout\ & ( !\MUX2|saida_MUX[4]~4_combout\ & ( 
-- (!\REGA|DOUT[7]~DUPLICATE_q\ & (\SW[9]~input_o\ & (\MUX2|saida_MUX[5]~5_combout\ & !\MUX2|saida_MUX[6]~6_combout\))) ) ) ) # ( !\RAM1|ram~155_combout\ & ( !\MUX2|saida_MUX[4]~4_combout\ & ( (\MUX2|saida_MUX[5]~5_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ 
-- & ((!\REGA|DOUT[7]~DUPLICATE_q\) # (!\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000000100000000011101110000111100010001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datae => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N27
\HEX1_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( !\MUX2|saida_MUX[7]~7_combout\ & ( \MUX2|saida_MUX[4]~4_combout\ & ( !\MUX2|saida_MUX[6]~6_combout\ $ (\MUX2|saida_MUX[5]~5_combout\) ) ) ) # ( \MUX2|saida_MUX[7]~7_combout\ & ( !\MUX2|saida_MUX[4]~4_combout\ 
-- & ( (\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\) ) ) ) # ( !\MUX2|saida_MUX[7]~7_combout\ & ( !\MUX2|saida_MUX[4]~4_combout\ & ( (!\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y3_N0
\HEX2_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(0)) # (\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y3_N3
\HEX2_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( !\PC|DOUT\(2) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \HEX2_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y3_N9
\HEX2_SEVENSEG|rascSaida7seg[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[2]~5_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(0) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \HEX2_SEVENSEG|rascSaida7seg[2]~5_combout\);

-- Location: LABCELL_X40_Y3_N18
\HEX2_SEVENSEG|rascSaida7seg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[3]~2_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(1) $ (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \HEX2_SEVENSEG|rascSaida7seg[3]~2_combout\);

-- Location: LABCELL_X40_Y3_N21
\HEX2_SEVENSEG|rascSaida7seg[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[5]~3_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(1)) # (!\PC|DOUT\(0)))) ) ) # ( !\PC|DOUT\(2) & ( (\PC|DOUT\(0) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \HEX2_SEVENSEG|rascSaida7seg[5]~3_combout\);

-- Location: LABCELL_X40_Y3_N15
\HEX2_SEVENSEG|rascSaida7seg[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[6]~4_combout\ = ( !\PC|DOUT\(0) & ( \PC|DOUT\(2) & ( (\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) ) # ( \PC|DOUT\(0) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & !\PC|DOUT\(3)) ) ) ) # ( !\PC|DOUT\(0) & ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \HEX2_SEVENSEG|rascSaida7seg[6]~4_combout\);

-- Location: MLABCELL_X45_Y3_N18
\MUX2|saida_MUX[17]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[17]~9_combout\ = ( \PC|DOUT\(1) & ( (!\SW[9]~input_o\) # ((\RAM1|ram~150_combout\ & ((!\ROM1|memROM~4_combout\) # (\PC|DOUT\(0))))) ) ) # ( !\PC|DOUT\(1) & ( (\SW[9]~input_o\ & (\RAM1|ram~150_combout\ & ((!\ROM1|memROM~4_combout\) # 
-- (\PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001000000000101000110101010111110111010101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \MUX2|saida_MUX[17]~9_combout\);

-- Location: MLABCELL_X45_Y3_N51
\MUX2|saida_MUX[18]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[18]~10_combout\ = ( \PC|DOUT\(2) & ( (!\SW[9]~input_o\) # (\RAM1|ram~153_combout\) ) ) # ( !\PC|DOUT\(2) & ( (\SW[9]~input_o\ & \RAM1|ram~153_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \MUX2|saida_MUX[18]~10_combout\);

-- Location: MLABCELL_X45_Y3_N21
\MUX2|saida_MUX[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[16]~8_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~149_combout\ ) ) # ( !\SW[9]~input_o\ & ( \PC|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[16]~8_combout\);

-- Location: MLABCELL_X45_Y3_N30
\HEX4_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \SW[9]~input_o\ & ( (!\MUX2|saida_MUX[17]~9_combout\ & (!\MUX2|saida_MUX[18]~10_combout\ $ (\RAM1|ram~146_combout\))) # (\MUX2|saida_MUX[17]~9_combout\ & 
-- (!\MUX2|saida_MUX[18]~10_combout\ & \RAM1|ram~146_combout\)) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( \SW[9]~input_o\ & ( (!\MUX2|saida_MUX[17]~9_combout\ & (\MUX2|saida_MUX[18]~10_combout\ & !\RAM1|ram~146_combout\)) ) ) ) # ( 
-- \MUX2|saida_MUX[16]~8_combout\ & ( !\SW[9]~input_o\ & ( (!\MUX2|saida_MUX[17]~9_combout\ & (!\PC|DOUT\(3) $ (\MUX2|saida_MUX[18]~10_combout\))) # (\MUX2|saida_MUX[17]~9_combout\ & (\PC|DOUT\(3) & !\MUX2|saida_MUX[18]~10_combout\)) ) ) ) # ( 
-- !\MUX2|saida_MUX[16]~8_combout\ & ( !\SW[9]~input_o\ & ( (!\MUX2|saida_MUX[17]~9_combout\ & (!\PC|DOUT\(3) & \MUX2|saida_MUX[18]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100100101001001000001010000000001010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N18
\MUX2|saida_MUX[19]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[19]~11_combout\ = ( \RAM1|ram~145_combout\ & ( (!\SW[9]~input_o\ & (((\PC|DOUT\(3))))) # (\SW[9]~input_o\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\))) ) ) # ( !\RAM1|ram~145_combout\ & ( (!\SW[9]~input_o\ & \PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001000111110000000100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \MUX2|saida_MUX[19]~11_combout\);

-- Location: MLABCELL_X45_Y3_N0
\HEX4_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ = (!\MUX2|saida_MUX[17]~9_combout\ & (\MUX2|saida_MUX[18]~10_combout\ & (!\MUX2|saida_MUX[19]~11_combout\ $ (!\MUX2|saida_MUX[16]~8_combout\)))) # (\MUX2|saida_MUX[17]~9_combout\ & 
-- ((!\MUX2|saida_MUX[16]~8_combout\ & ((\MUX2|saida_MUX[18]~10_combout\))) # (\MUX2|saida_MUX[16]~8_combout\ & (\MUX2|saida_MUX[19]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100011001000001110001100100000111000110010000011100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N3
\HEX4_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[18]~10_combout\ & ( (\MUX2|saida_MUX[19]~11_combout\ & ((!\MUX2|saida_MUX[16]~8_combout\) # (\MUX2|saida_MUX[17]~9_combout\))) ) ) # ( !\MUX2|saida_MUX[18]~10_combout\ & ( 
-- (\MUX2|saida_MUX[17]~9_combout\ & (!\MUX2|saida_MUX[19]~11_combout\ & !\MUX2|saida_MUX[16]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y3_N48
\HEX4_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & (\MUX2|saida_MUX[19]~11_combout\ & !\MUX2|saida_MUX[16]~8_combout\)) # (\MUX2|saida_MUX[18]~10_combout\ & 
-- ((\MUX2|saida_MUX[16]~8_combout\))) ) ) # ( !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[19]~11_combout\ & (!\MUX2|saida_MUX[18]~10_combout\ $ (!\MUX2|saida_MUX[16]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N6
\HEX4_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[19]~11_combout\ & ((\PC|DOUT\(0)) # (\SW[9]~input_o\))) ) ) ) # ( !\RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( 
-- (!\MUX2|saida_MUX[19]~11_combout\ & (!\SW[9]~input_o\ & \PC|DOUT\(0))) ) ) ) # ( \RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & (((\PC|DOUT\(0)) # (\SW[9]~input_o\)))) # (\MUX2|saida_MUX[18]~10_combout\ 
-- & (!\MUX2|saida_MUX[19]~11_combout\)) ) ) ) # ( !\RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & (((!\SW[9]~input_o\ & \PC|DOUT\(0))))) # (\MUX2|saida_MUX[18]~10_combout\ & 
-- (!\MUX2|saida_MUX[19]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011100100010011101110111000000000110000000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y3_N12
\HEX4_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \SW[9]~input_o\ & ( !\RAM1|ram~146_combout\ $ (((!\MUX2|saida_MUX[17]~9_combout\ & \MUX2|saida_MUX[18]~10_combout\))) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( 
-- \SW[9]~input_o\ & ( (\MUX2|saida_MUX[17]~9_combout\ & (!\MUX2|saida_MUX[18]~10_combout\ & !\RAM1|ram~146_combout\)) ) ) ) # ( \MUX2|saida_MUX[16]~8_combout\ & ( !\SW[9]~input_o\ & ( !\PC|DOUT\(3) $ (((!\MUX2|saida_MUX[17]~9_combout\ & 
-- \MUX2|saida_MUX[18]~10_combout\))) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( !\SW[9]~input_o\ & ( (\MUX2|saida_MUX[17]~9_combout\ & (!\PC|DOUT\(3) & !\MUX2|saida_MUX[18]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000110001101100011001010000000000001111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N45
\HEX4_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( (\MUX2|saida_MUX[18]~10_combout\ & !\MUX2|saida_MUX[19]~11_combout\) ) ) ) # ( \MUX2|saida_MUX[16]~8_combout\ & ( 
-- !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & !\MUX2|saida_MUX[19]~11_combout\) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( !\MUX2|saida_MUX[18]~10_combout\ $ 
-- (\MUX2|saida_MUX[19]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101000001010000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y3_N39
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X43_Y3_N14
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X42_Y2_N51
\MUX2|saida_MUX[20]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[20]~12_combout\ = ( \PC|DOUT\(4) & ( (!\SW[9]~input_o\) # (\RAM1|ram~158_combout\) ) ) # ( !\PC|DOUT\(4) & ( (\SW[9]~input_o\ & \RAM1|ram~158_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \MUX2|saida_MUX[20]~12_combout\);

-- Location: LABCELL_X40_Y3_N42
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X42_Y3_N59
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X40_Y3_N45
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X40_Y3_N32
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X44_Y3_N57
\MUX2|saida_MUX[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[22]~14_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~162_combout\ ) ) # ( !\SW[9]~input_o\ & ( \PC|DOUT\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~162_combout\,
	datac => \PC|ALT_INV_DOUT\(6),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[22]~14_combout\);

-- Location: LABCELL_X40_Y3_N48
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~13_sumout\);

-- Location: FF_X43_Y3_N17
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X44_Y3_N33
\MUX2|saida_MUX[21]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[21]~13_combout\ = ( \RAM1|ram~159_combout\ & ( (!\SW[9]~input_o\ & (((\PC|DOUT\(5))))) # (\SW[9]~input_o\ & (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\)))) ) ) # ( !\RAM1|ram~159_combout\ & ( (!\SW[9]~input_o\ & \PC|DOUT\(5)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110000010100100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \MUX2|saida_MUX[21]~13_combout\);

-- Location: MLABCELL_X42_Y2_N6
\HEX5_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \SW[9]~input_o\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[20]~12_combout\ & (\RAM1|ram~155_combout\ & !\MUX2|saida_MUX[22]~14_combout\)) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[20]~12_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ & \PC|DOUT\(7))) ) ) ) # ( \SW[9]~input_o\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[20]~12_combout\ & (!\RAM1|ram~155_combout\ & 
-- \MUX2|saida_MUX[22]~14_combout\)) # (\MUX2|saida_MUX[20]~12_combout\ & (!\RAM1|ram~155_combout\ $ (\MUX2|saida_MUX[22]~14_combout\))) ) ) ) # ( !\SW[9]~input_o\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[20]~12_combout\ & 
-- (\MUX2|saida_MUX[22]~14_combout\ & !\PC|DOUT\(7))) # (\MUX2|saida_MUX[20]~12_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010010010100100100000000010100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \RAM1|ALT_INV_ram~155_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N45
\MUX2|saida_MUX[23]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[23]~15_combout\ = ( \RAM1|ram~154_combout\ & ( (!\SW[9]~input_o\ & (((\PC|DOUT\(7))))) # (\SW[9]~input_o\ & (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\)))) ) ) # ( !\RAM1|ram~154_combout\ & ( (!\SW[9]~input_o\ & \PC|DOUT\(7)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001001110000010100100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX2|saida_MUX[23]~15_combout\);

-- Location: MLABCELL_X42_Y2_N24
\HEX5_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[20]~12_combout\) # (\MUX2|saida_MUX[23]~15_combout\) ) ) ) # ( !\MUX2|saida_MUX[22]~14_combout\ & ( 
-- \MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[23]~15_combout\ & \MUX2|saida_MUX[20]~12_combout\) ) ) ) # ( \MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( !\MUX2|saida_MUX[23]~15_combout\ $ 
-- (!\MUX2|saida_MUX[20]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N42
\HEX5_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( \MUX2|saida_MUX[23]~15_combout\ ) ) ) # ( !\MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( 
-- (!\MUX2|saida_MUX[23]~15_combout\ & !\MUX2|saida_MUX[20]~12_combout\) ) ) ) # ( \MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[23]~15_combout\ & !\MUX2|saida_MUX[20]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N12
\HEX5_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( \MUX2|saida_MUX[20]~12_combout\ ) ) ) # ( !\MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( 
-- (\MUX2|saida_MUX[23]~15_combout\ & !\MUX2|saida_MUX[20]~12_combout\) ) ) ) # ( \MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[23]~15_combout\ & !\MUX2|saida_MUX[20]~12_combout\) ) ) ) # ( 
-- !\MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[23]~15_combout\ & \MUX2|saida_MUX[20]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N33
\HEX5_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \SW[9]~input_o\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( (\RAM1|ram~158_combout\ & !\MUX2|saida_MUX[23]~15_combout\) ) ) ) # ( !\SW[9]~input_o\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( 
-- (!\MUX2|saida_MUX[23]~15_combout\ & \PC|DOUT\(4)) ) ) ) # ( \SW[9]~input_o\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[22]~14_combout\ & (\RAM1|ram~158_combout\)) # (\MUX2|saida_MUX[22]~14_combout\ & ((!\MUX2|saida_MUX[23]~15_combout\))) ) 
-- ) ) # ( !\SW[9]~input_o\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[22]~14_combout\ & ((\PC|DOUT\(4)))) # (\MUX2|saida_MUX[22]~14_combout\ & (!\MUX2|saida_MUX[23]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010011100100111001000000000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datab => \RAM1|ALT_INV_ram~158_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N39
\HEX5_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~155_combout\)))) ) ) ) # ( 
-- !\MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( (!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~155_combout\)) ) ) ) # ( \MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( 
-- (\MUX2|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (\RAM1|ram~155_combout\)))) ) ) ) # ( !\MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[20]~12_combout\ & 
-- ((!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~155_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000100000001010001000111110000110011000101000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \RAM1|ALT_INV_ram~155_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N57
\HEX5_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX2|saida_MUX[22]~14_combout\ & ( \MUX2|saida_MUX[21]~13_combout\ & ( (!\MUX2|saida_MUX[23]~15_combout\ & \MUX2|saida_MUX[20]~12_combout\) ) ) ) # ( \MUX2|saida_MUX[22]~14_combout\ & ( 
-- !\MUX2|saida_MUX[21]~13_combout\ & ( (\MUX2|saida_MUX[23]~15_combout\ & !\MUX2|saida_MUX[20]~12_combout\) ) ) ) # ( !\MUX2|saida_MUX[22]~14_combout\ & ( !\MUX2|saida_MUX[21]~13_combout\ & ( !\MUX2|saida_MUX[23]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\);

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

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X43_Y7_N3
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


