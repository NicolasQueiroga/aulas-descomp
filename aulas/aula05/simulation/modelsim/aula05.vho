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

-- DATE "09/06/2022 13:50:39"

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

ENTITY 	Aula05 IS
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
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula05;

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
-- PC_OUT[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula05 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal5~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[3]~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal5~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~1_combout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~33feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~28feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;

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
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\MUX2|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX2|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\MUX2|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX2|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\MUX2|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX2|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\MUX2|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX2|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\MUX2|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX2|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\MUX2|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX2|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\MUX2|ALT_INV_saida_MUX[21]~13_combout\ <= NOT \MUX2|saida_MUX[21]~13_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DECODER_INSTRU|ALT_INV_Equal5~0_combout\ <= NOT \DECODER_INSTRU|Equal5~0_combout\;
\MUX2|ALT_INV_saida_MUX[20]~12_combout\ <= NOT \MUX2|saida_MUX[20]~12_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ <= NOT \DECODER_INSTRU|saida[3]~0_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[6]~7_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\;
\MUX2|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX2|saida_MUX[7]~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\MUX2|ALT_INV_saida_MUX[17]~9_combout\ <= NOT \MUX2|saida_MUX[17]~9_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\MUX2|ALT_INV_saida_MUX[16]~8_combout\ <= NOT \MUX2|saida_MUX[16]~8_combout\;
\MUX2|ALT_INV_saida_MUX[19]~11_combout\ <= NOT \MUX2|saida_MUX[19]~11_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~0_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\;
\MUX2|ALT_INV_saida_MUX[23]~15_combout\ <= NOT \MUX2|saida_MUX[23]~15_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~1_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\;
\MUX2|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX2|saida_MUX[6]~6_combout\;
\MUX2|ALT_INV_saida_MUX[18]~10_combout\ <= NOT \MUX2|saida_MUX[18]~10_combout\;
\MUX2|ALT_INV_saida_MUX[22]~14_combout\ <= NOT \MUX2|saida_MUX[22]~14_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REGA|DOUT[2]~DUPLICATE_q\;
\DECODER_INSTRU|ALT_INV_Equal5~2_combout\ <= NOT \DECODER_INSTRU|Equal5~2_combout\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REGA|DOUT[3]~DUPLICATE_q\;
\DECODER_INSTRU|ALT_INV_Equal5~1_combout\ <= NOT \DECODER_INSTRU|Equal5~1_combout\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;

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
	i => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~1_combout\,
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
	i => \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\,
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
	i => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\,
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
	i => \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\,
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
	i => \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\,
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
	i => \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\,
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
	i => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[6]~7_combout\,
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

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X40_Y45_N76
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X43_Y45_N2
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

-- Location: IOOBUF_X54_Y15_N56
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: LABCELL_X10_Y1_N54
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

-- Location: FF_X10_Y1_N55
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

-- Location: LABCELL_X41_Y3_N18
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

-- Location: LABCELL_X41_Y4_N36
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

-- Location: FF_X40_Y3_N32
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

-- Location: LABCELL_X39_Y3_N30
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X40_Y3_N26
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \incrementaPC|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X39_Y3_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X40_Y3_N5
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

-- Location: LABCELL_X39_Y3_N36
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X40_Y3_N59
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

-- Location: LABCELL_X39_Y3_N39
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X40_Y3_N56
\PC|DOUT[4]\ : dffeas
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
	q => \PC|DOUT\(4));

-- Location: LABCELL_X39_Y3_N42
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X40_Y3_N35
\PC|DOUT[5]\ : dffeas
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
	q => \PC|DOUT\(5));

-- Location: LABCELL_X39_Y3_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X40_Y3_N2
\PC|DOUT[6]\ : dffeas
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
	q => \PC|DOUT\(6));

-- Location: LABCELL_X39_Y3_N48
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X40_Y3_N28
\PC|DOUT[7]\ : dffeas
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
	q => \PC|DOUT\(7));

-- Location: LABCELL_X39_Y3_N51
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~13_sumout\);

-- Location: FF_X40_Y3_N14
\PC|DOUT[8]\ : dffeas
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
	q => \PC|DOUT\(8));

-- Location: LABCELL_X40_Y3_N42
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X40_Y3_N9
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \RAM1|process_0~0_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X40_Y3_N21
\DECODER_INSTRU|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal5~2_combout\ = ( \RAM1|process_0~0_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \DECODER_INSTRU|Equal5~2_combout\);

-- Location: LABCELL_X39_Y3_N12
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & \PC|DOUT\(2))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & \PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X40_Y3_N48
\DECODER_INSTRU|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal5~0_combout\ = ( \RAM1|process_0~0_combout\ & ( ((!\PC|DOUT\(2) & !\PC|DOUT\(3))) # (\ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \DECODER_INSTRU|Equal5~0_combout\);

-- Location: LABCELL_X39_Y3_N3
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(2)) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & (\PC|DOUT\(1) & \PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X40_Y3_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \RAM1|process_0~0_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X41_Y3_N51
\DECODER_INSTRU|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[3]~0_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\DECODER_INSTRU|Equal5~0_combout\) # (\DECODER_INSTRU|Equal5~2_combout\) ) ) # ( !\ROM1|memROM~10_combout\ & ( (\DECODER_INSTRU|Equal5~2_combout\ & \DECODER_INSTRU|Equal5~0_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \DECODER_INSTRU|saida[3]~0_combout\);

-- Location: LABCELL_X41_Y3_N54
\DECODER_INSTRU|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal5~1_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(3) & \RAM1|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \DECODER_INSTRU|Equal5~1_combout\);

-- Location: LABCELL_X41_Y3_N9
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & \RAM1|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X40_Y3_N6
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & !\PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X40_Y3_N51
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X40_Y3_N54
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & !\PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X40_Y3_N36
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & !\PC|DOUT\(4))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (\PC|DOUT\(2) & !\PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X40_Y3_N13
\PC|DOUT[8]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N18
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X42_Y3_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECODER_INSTRU|Equal5~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: MLABCELL_X42_Y3_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~151_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~151_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~3_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X41_Y3_N33
\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~5_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (((\RAM1|ram~151_combout\)) # (\DECODER_INSTRU|Equal5~2_combout\))) ) ) # ( 
-- !\ROM1|memROM~3_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~5_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (!\DECODER_INSTRU|Equal5~2_combout\ & (\RAM1|ram~151_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ULA1|saida[0]~1_combout\);

-- Location: LABCELL_X39_Y3_N9
\DECODER_INSTRU|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~1_combout\ = ( \RAM1|process_0~0_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) $ (((\ROM1|memROM~8_combout\) # (\ROM1|memROM~9_combout\))))) # (\PC|DOUT\(2) & (((\ROM1|memROM~8_combout\)) # (\ROM1|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010101001111111001010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \DECODER_INSTRU|saida~1_combout\);

-- Location: FF_X41_Y3_N34
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

-- Location: LABCELL_X40_Y3_N57
\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \RAM1|process_0~0_combout\ & ( (!\PC|DOUT\(2) & (\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|process_0~1_combout\);

-- Location: LABCELL_X40_Y3_N33
\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\RAM1|process_0~1_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~170_combout\);

-- Location: FF_X41_Y3_N53
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X40_Y3_N45
\RAM1|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~33feeder_combout\ = \REGA|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~33feeder_combout\);

-- Location: LABCELL_X40_Y3_N39
\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~0_combout\ & \RAM1|process_0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~172_combout\);

-- Location: FF_X40_Y3_N46
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~33feeder_combout\,
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X40_Y3_N0
\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \ROM1|memROM~3_combout\ & ( (\RAM1|process_0~1_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~173_combout\);

-- Location: FF_X40_Y3_N11
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: LABCELL_X40_Y3_N3
\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \ROM1|memROM~3_combout\ & ( (\RAM1|process_0~1_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~171_combout\);

-- Location: FF_X41_Y3_N44
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X41_Y3_N42
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~25_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~33_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~41_q\))) ) ) ) # ( !\RAM1|ram~25_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~3_combout\ & (\RAM1|ram~33_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~41_q\))) ) ) ) # ( \RAM1|ram~25_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~3_combout\) # (\RAM1|ram~17_q\) ) ) ) # ( !\RAM1|ram~25_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~17_q\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \RAM1|ALT_INV_ram~41_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X41_Y3_N6
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~150_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: MLABCELL_X42_Y3_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~153_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~153_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X41_Y3_N30
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~9_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (((\RAM1|ram~153_combout\)) # (\DECODER_INSTRU|Equal5~2_combout\))) ) ) # ( 
-- !\ROM1|memROM~5_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~9_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (!\DECODER_INSTRU|Equal5~2_combout\ & (\RAM1|ram~153_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~153_combout\,
	datad => \ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: FF_X41_Y3_N31
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

-- Location: FF_X41_Y3_N2
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: FF_X40_Y3_N22
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
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X40_Y3_N52
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: FF_X41_Y3_N38
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
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X41_Y3_N36
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~26_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~34_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~42_q\))) ) ) ) # ( !\RAM1|ram~26_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~3_combout\ & (\RAM1|ram~34_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~42_q\))) ) ) ) # ( \RAM1|ram~26_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~3_combout\) # (\RAM1|ram~18_q\) ) ) ) # ( !\RAM1|ram~26_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~34_q\,
	datac => \RAM1|ALT_INV_ram~42_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~26_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: MLABCELL_X42_Y3_N27
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \RAM1|ram~152_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: MLABCELL_X42_Y3_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~155_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~11_combout\)))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~155_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~11_combout\)))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: MLABCELL_X42_Y3_N9
\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~13_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (((\RAM1|ram~155_combout\)) # (\DECODER_INSTRU|Equal5~2_combout\))) ) ) # ( 
-- !\ROM1|memROM~11_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & (((\ULA1|Add0~13_sumout\)))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~155_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ULA1|saida[2]~3_combout\);

-- Location: FF_X42_Y3_N10
\REGA|DOUT[2]~DUPLICATE\ : dffeas
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
	q => \REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X42_Y3_N29
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: FF_X42_Y3_N11
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

-- Location: FF_X41_Y3_N8
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X43_Y3_N49
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: FF_X41_Y3_N14
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
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X41_Y3_N12
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~27_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~35_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~43_q\))) ) ) ) # ( !\RAM1|ram~27_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~3_combout\ & (\RAM1|ram~35_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~43_q\))) ) ) ) # ( \RAM1|ram~27_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~3_combout\) # (\RAM1|ram~19_q\) ) ) ) # ( !\RAM1|ram~27_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~19_q\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~35_q\,
	datab => \RAM1|ALT_INV_ram~19_q\,
	datac => \RAM1|ALT_INV_ram~43_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X41_Y3_N48
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \RAM1|ram~154_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \RAM1|ram~155_combout\);

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

-- Location: LABCELL_X43_Y3_N39
\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT[2]~DUPLICATE_q\ ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~155_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datac => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N57
\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT\(0) ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~151_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~151_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X41_Y3_N3
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\PC|DOUT\(3) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) & \RAM1|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X43_Y3_N59
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: LABCELL_X43_Y3_N54
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~44_q\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~44_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: FF_X42_Y3_N8
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

-- Location: FF_X42_Y3_N4
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: MLABCELL_X42_Y3_N24
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~20_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: FF_X43_Y3_N14
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
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X43_Y3_N15
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~36_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~36_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X44_Y3_N0
\RAM1|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~28feeder_combout\ = ( \REGA|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~28feeder_combout\);

-- Location: FF_X44_Y3_N2
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM1|ram~28feeder_combout\,
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X43_Y3_N51
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~28_q\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: MLABCELL_X42_Y3_N3
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~147_combout\ & ( \RAM1|ram~146_combout\ & ( (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~145_combout\)) # (\ROM1|memROM~3_combout\))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~3_combout\) # ((\RAM1|ram~148_combout\)))) 
-- ) ) ) # ( !\RAM1|ram~147_combout\ & ( \RAM1|ram~146_combout\ & ( (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~145_combout\)) # (\ROM1|memROM~3_combout\))) # (\ROM1|memROM~5_combout\ & (\ROM1|memROM~3_combout\ & (\RAM1|ram~148_combout\))) ) ) ) # ( 
-- \RAM1|ram~147_combout\ & ( !\RAM1|ram~146_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~145_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~3_combout\) # ((\RAM1|ram~148_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~147_combout\ & ( !\RAM1|ram~146_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~145_combout\)))) # (\ROM1|memROM~5_combout\ & (\ROM1|memROM~3_combout\ & (\RAM1|ram~148_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \RAM1|ALT_INV_ram~145_combout\,
	datae => \RAM1|ALT_INV_ram~147_combout\,
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: MLABCELL_X42_Y3_N42
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: MLABCELL_X42_Y3_N6
\ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\) # ((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~7_combout\))) ) ) # ( 
-- !\ULA1|Add0~1_sumout\ & ( (\DECODER_INSTRU|saida[3]~0_combout\ & ((!\DECODER_INSTRU|Equal5~2_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal5~2_combout\ & (\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[3]~0_combout\);

-- Location: FF_X42_Y3_N7
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

-- Location: LABCELL_X41_Y3_N21
\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = (!\SW[9]~input_o\ & (\RAM1|ram~153_combout\)) # (\SW[9]~input_o\ & ((\REGA|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~153_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \REGA|ALT_INV_DOUT\(1),
	combout => \MUX2|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N42
\HEX0_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\) # (\REGA|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[0]~0_combout\ & (\SW[9]~input_o\ & \REGA|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( \RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[1]~1_combout\ & ( 
-- (!\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[0]~0_combout\ & (\SW[9]~input_o\ & !\REGA|DOUT[3]~DUPLICATE_q\))) # (\MUX2|saida_MUX[2]~2_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ $ (((!\SW[9]~input_o\) # (\REGA|DOUT[3]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\) # (!\REGA|DOUT[3]~DUPLICATE_q\)))) # (\MUX2|saida_MUX[2]~2_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ $ 
-- (((\SW[9]~input_o\ & \REGA|DOUT[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100001000101100001000100000000000000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N12
\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = ( \RAM1|ram~149_combout\ & ( \REGA|DOUT[3]~DUPLICATE_q\ ) ) # ( !\RAM1|ram~149_combout\ & ( \REGA|DOUT[3]~DUPLICATE_q\ & ( \SW[9]~input_o\ ) ) ) # ( \RAM1|ram~149_combout\ & ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( 
-- !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N39
\HEX0_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[0]~0_combout\ & (\MUX2|saida_MUX[2]~2_combout\)) # (\MUX2|saida_MUX[0]~0_combout\ & ((\MUX2|saida_MUX[3]~3_combout\))) ) ) # ( 
-- !\MUX2|saida_MUX[1]~1_combout\ & ( (\MUX2|saida_MUX[2]~2_combout\ & (!\MUX2|saida_MUX[3]~3_combout\ $ (!\MUX2|saida_MUX[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N54
\HEX0_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[3]~3_combout\ & (!\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[0]~0_combout\)) # (\MUX2|saida_MUX[3]~3_combout\ & (\MUX2|saida_MUX[2]~2_combout\)) ) ) # 
-- ( !\MUX2|saida_MUX[1]~1_combout\ & ( (\MUX2|saida_MUX[3]~3_combout\ & (\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N33
\HEX0_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[3]~3_combout\ & !\MUX2|saida_MUX[0]~0_combout\)) # (\MUX2|saida_MUX[2]~2_combout\ & ((\MUX2|saida_MUX[0]~0_combout\))) ) ) 
-- # ( !\MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[3]~3_combout\ & (!\MUX2|saida_MUX[2]~2_combout\ $ (!\MUX2|saida_MUX[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N18
\HEX0_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \REGA|DOUT\(0) & ( \SW[9]~input_o\ & ( (!\MUX2|saida_MUX[3]~3_combout\) # ((!\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[1]~1_combout\)) ) ) ) # ( !\REGA|DOUT\(0) & ( \SW[9]~input_o\ & ( 
-- (!\MUX2|saida_MUX[3]~3_combout\ & (\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[1]~1_combout\)) ) ) ) # ( \REGA|DOUT\(0) & ( !\SW[9]~input_o\ & ( (!\MUX2|saida_MUX[1]~1_combout\ & ((!\MUX2|saida_MUX[2]~2_combout\ & (\RAM1|ram~151_combout\)) # 
-- (\MUX2|saida_MUX[2]~2_combout\ & ((!\MUX2|saida_MUX[3]~3_combout\))))) # (\MUX2|saida_MUX[1]~1_combout\ & (\RAM1|ram~151_combout\ & (!\MUX2|saida_MUX[3]~3_combout\))) ) ) ) # ( !\REGA|DOUT\(0) & ( !\SW[9]~input_o\ & ( (!\MUX2|saida_MUX[1]~1_combout\ & 
-- ((!\MUX2|saida_MUX[2]~2_combout\ & (\RAM1|ram~151_combout\)) # (\MUX2|saida_MUX[2]~2_combout\ & ((!\MUX2|saida_MUX[3]~3_combout\))))) # (\MUX2|saida_MUX[1]~1_combout\ & (\RAM1|ram~151_combout\ & (!\MUX2|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001000100010111000100010000001100000000001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~151_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \REGA|ALT_INV_DOUT\(0),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N6
\HEX0_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[1]~1_combout\ & ( (\SW[9]~input_o\ & (!\REGA|DOUT[3]~DUPLICATE_q\ & ((!\MUX2|saida_MUX[2]~2_combout\) # (\MUX2|saida_MUX[0]~0_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( \MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ & (((!\SW[9]~input_o\) # (!\REGA|DOUT[3]~DUPLICATE_q\)))) # (\MUX2|saida_MUX[2]~2_combout\ & (\MUX2|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\) # 
-- (!\REGA|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( \RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[1]~1_combout\ & ( (\MUX2|saida_MUX[0]~0_combout\ & (!\MUX2|saida_MUX[2]~2_combout\ $ (((!\SW[9]~input_o\) # (\REGA|DOUT[3]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\RAM1|ram~149_combout\ & ( !\MUX2|saida_MUX[1]~1_combout\ & ( (\MUX2|saida_MUX[0]~0_combout\ & (!\MUX2|saida_MUX[2]~2_combout\ $ (((\SW[9]~input_o\ & \REGA|DOUT[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100001000100100001000110111011101100000000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N48
\HEX0_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX2|saida_MUX[1]~1_combout\ & ( (\MUX2|saida_MUX[0]~0_combout\ & (\MUX2|saida_MUX[2]~2_combout\ & !\MUX2|saida_MUX[3]~3_combout\)) ) ) # ( !\MUX2|saida_MUX[1]~1_combout\ & ( (!\MUX2|saida_MUX[2]~2_combout\ 
-- & ((!\MUX2|saida_MUX[3]~3_combout\))) # (\MUX2|saida_MUX[2]~2_combout\ & (!\MUX2|saida_MUX[0]~0_combout\ & \MUX2|saida_MUX[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001100111100000000110000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: FF_X40_Y3_N50
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: FF_X41_Y3_N46
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
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X42_Y3_N1
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X40_Y3_N47
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
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: LABCELL_X40_Y3_N15
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~37_q\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~45_q\)) ) ) ) # ( !\RAM1|ram~37_q\ & ( \ROM1|memROM~3_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~45_q\)) ) ) ) # ( \RAM1|ram~37_q\ & ( !\ROM1|memROM~3_combout\ & ( (\RAM1|ram~21_q\) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~37_q\ & ( 
-- !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~21_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~45_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	datae => \RAM1|ALT_INV_ram~37_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X41_Y3_N57
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \RAM1|ram~161_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: MLABCELL_X42_Y3_N45
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~162_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~22\ = CARRY(( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~162_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \REGA|ALT_INV_DOUT\(4),
	datad => \RAM1|ALT_INV_ram~162_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: MLABCELL_X42_Y3_N21
\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = ( \DECODER_INSTRU|Equal5~2_combout\ & ( (!\DECODER_INSTRU|Equal5~0_combout\ & ((!\ROM1|memROM~10_combout\ & ((\ULA1|Add0~21_sumout\))) # (\ROM1|memROM~10_combout\ & (\RAM1|ram~162_combout\)))) ) ) # ( 
-- !\DECODER_INSTRU|Equal5~2_combout\ & ( (!\ROM1|memROM~10_combout\ & (((\ULA1|Add0~21_sumout\)))) # (\ROM1|memROM~10_combout\ & ((!\DECODER_INSTRU|Equal5~0_combout\ & (\RAM1|ram~162_combout\)) # (\DECODER_INSTRU|Equal5~0_combout\ & 
-- ((\ULA1|Add0~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	datac => \RAM1|ALT_INV_ram~162_combout\,
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	combout => \ULA1|saida[4]~5_combout\);

-- Location: FF_X42_Y3_N22
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[4]~5_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: MLABCELL_X42_Y3_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~167_combout\))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~167_combout\))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~167_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: MLABCELL_X42_Y3_N12
\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = ( \ULA1|Add0~25_sumout\ & ( (!\DECODER_INSTRU|Equal5~0_combout\ & ((!\ROM1|memROM~10_combout\) # ((\RAM1|ram~167_combout\)))) # (\DECODER_INSTRU|Equal5~0_combout\ & (((!\DECODER_INSTRU|Equal5~2_combout\)))) ) ) # ( 
-- !\ULA1|Add0~25_sumout\ & ( (\ROM1|memROM~10_combout\ & (\RAM1|ram~167_combout\ & !\DECODER_INSTRU|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111110011001010111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~167_combout\,
	datad => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

-- Location: FF_X42_Y3_N13
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~6_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: FF_X43_Y3_N35
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X43_Y3_N30
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~22_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: FF_X43_Y3_N26
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: LABCELL_X43_Y3_N27
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~46_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~46_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X42_Y3_N25
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
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X43_Y3_N36
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~38_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~38_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X44_Y3_N29
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
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X44_Y3_N30
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~30_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X43_Y3_N45
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \RAM1|ram~165_combout\ & ( \RAM1|ram~164_combout\ & ( (!\ROM1|memROM~3_combout\ & (((\RAM1|ram~163_combout\)) # (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~5_combout\) # ((\RAM1|ram~166_combout\)))) 
-- ) ) ) # ( !\RAM1|ram~165_combout\ & ( \RAM1|ram~164_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & (\RAM1|ram~163_combout\))) # (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~5_combout\) # ((\RAM1|ram~166_combout\)))) ) ) ) # ( 
-- \RAM1|ram~165_combout\ & ( !\RAM1|ram~164_combout\ & ( (!\ROM1|memROM~3_combout\ & (((\RAM1|ram~163_combout\)) # (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & ((\RAM1|ram~166_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~165_combout\ & ( !\RAM1|ram~164_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & (\RAM1|ram~163_combout\))) # (\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & ((\RAM1|ram~166_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \RAM1|ALT_INV_ram~166_combout\,
	datae => \RAM1|ALT_INV_ram~165_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: MLABCELL_X42_Y3_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~169_combout\))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( \REGA|DOUT\(6) ) + ( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~169_combout\))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~169_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: MLABCELL_X42_Y3_N15
\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = ( \ULA1|Add0~29_sumout\ & ( (!\DECODER_INSTRU|Equal5~0_combout\ & ((!\ROM1|memROM~10_combout\) # ((\RAM1|ram~169_combout\)))) # (\DECODER_INSTRU|Equal5~0_combout\ & (((!\DECODER_INSTRU|Equal5~2_combout\)))) ) ) # ( 
-- !\ULA1|Add0~29_sumout\ & ( (\ROM1|memROM~10_combout\ & (\RAM1|ram~169_combout\ & !\DECODER_INSTRU|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111110011001010111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~169_combout\,
	datad => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

-- Location: FF_X42_Y3_N16
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~7_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X42_Y3_N31
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X39_Y3_N29
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: FF_X41_Y3_N20
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X41_Y3_N26
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: LABCELL_X41_Y3_N24
\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \RAM1|ram~31_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~39_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\))) ) ) ) # ( !\RAM1|ram~31_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~3_combout\ & (\RAM1|ram~39_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\))) ) ) ) # ( \RAM1|ram~31_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~3_combout\) # (\RAM1|ram~23_q\) ) ) ) # ( !\RAM1|ram~31_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~39_q\,
	datab => \RAM1|ALT_INV_ram~47_q\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~31_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~168_combout\);

-- Location: LABCELL_X41_Y3_N0
\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \RAM1|ram~168_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~168_combout\,
	combout => \RAM1|ram~169_combout\);

-- Location: MLABCELL_X42_Y3_N54
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( !\DECODER_INSTRU|Equal5~1_combout\ $ (((!\DECODER_INSTRU|Equal5~2_combout\ & \RAM1|ram~160_combout\))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal5~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~17_sumout\);

-- Location: MLABCELL_X42_Y3_N18
\ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~4_combout\ = ( \ULA1|Add0~17_sumout\ & ( (!\DECODER_INSTRU|Equal5~0_combout\ & ((!\ROM1|memROM~10_combout\) # ((\RAM1|ram~160_combout\)))) # (\DECODER_INSTRU|Equal5~0_combout\ & (((!\DECODER_INSTRU|Equal5~2_combout\)))) ) ) # ( 
-- !\ULA1|Add0~17_sumout\ & ( (\ROM1|memROM~10_combout\ & (!\DECODER_INSTRU|Equal5~0_combout\ & \RAM1|ram~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111100011001011111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \DECODER_INSTRU|ALT_INV_Equal5~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[7]~4_combout\);

-- Location: FF_X42_Y3_N19
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~4_combout\,
	ena => \DECODER_INSTRU|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X43_Y3_N2
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: LABCELL_X43_Y3_N0
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~48_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~48_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: FF_X40_Y3_N44
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X43_Y3_N9
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~40_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: FF_X41_Y3_N49
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X43_Y3_N3
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~24_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: FF_X41_Y3_N40
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X43_Y3_N6
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~32_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~32_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X43_Y3_N21
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~156_combout\ & ( \RAM1|ram~157_combout\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~3_combout\ & (\RAM1|ram~159_combout\))) ) ) ) # ( 
-- !\RAM1|ram~156_combout\ & ( \RAM1|ram~157_combout\ & ( (!\ROM1|memROM~5_combout\ & (((\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~3_combout\ & 
-- (\RAM1|ram~159_combout\)))) ) ) ) # ( \RAM1|ram~156_combout\ & ( !\RAM1|ram~157_combout\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~158_combout\))) # 
-- (\ROM1|memROM~3_combout\ & (\RAM1|ram~159_combout\)))) ) ) ) # ( !\RAM1|ram~156_combout\ & ( !\RAM1|ram~157_combout\ & ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~3_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~3_combout\ & 
-- (\RAM1|ram~159_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~159_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X39_Y3_N21
\MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~6_combout\ = ( \REGA|DOUT\(6) & ( (\RAM1|ram~169_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT\(6) & ( (!\SW[9]~input_o\ & \RAM1|ram~169_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \RAM1|ALT_INV_ram~169_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	combout => \MUX2|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X44_Y3_N27
\MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~5_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT\(5) ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~167_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~167_combout\,
	datac => \REGA|ALT_INV_DOUT\(5),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X43_Y4_N3
\MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~4_combout\ = ( \RAM1|ram~162_combout\ & ( \REGA|DOUT\(4) ) ) # ( !\RAM1|ram~162_combout\ & ( \REGA|DOUT\(4) & ( \SW[9]~input_o\ ) ) ) # ( \RAM1|ram~162_combout\ & ( !\REGA|DOUT\(4) & ( !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datae => \RAM1|ALT_INV_ram~162_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \MUX2|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X43_Y4_N54
\HEX1_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( \SW[9]~input_o\ & ( (!\REGA|DOUT\(7) & (!\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) # (\REGA|DOUT\(7) & (!\MUX2|saida_MUX[6]~6_combout\ $ 
-- (!\MUX2|saida_MUX[5]~5_combout\))) ) ) ) # ( !\MUX2|saida_MUX[4]~4_combout\ & ( \SW[9]~input_o\ & ( (!\REGA|DOUT\(7) & (\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) ) ) ) # ( \MUX2|saida_MUX[4]~4_combout\ & ( !\SW[9]~input_o\ & ( 
-- (!\RAM1|ram~160_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) # (\RAM1|ram~160_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ $ (!\MUX2|saida_MUX[5]~5_combout\))) ) ) ) # ( !\MUX2|saida_MUX[4]~4_combout\ & ( !\SW[9]~input_o\ & 
-- ( (!\RAM1|ram~160_combout\ & (\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101001010101000000001100000000001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~160_combout\,
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y4_N12
\MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~7_combout\ = (!\SW[9]~input_o\ & (\RAM1|ram~160_combout\)) # (\SW[9]~input_o\ & ((\REGA|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	combout => \MUX2|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X43_Y4_N18
\HEX1_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[4]~4_combout\ & ((\MUX2|saida_MUX[6]~6_combout\))) # (\MUX2|saida_MUX[4]~4_combout\ & (\MUX2|saida_MUX[7]~7_combout\)) ) ) # ( 
-- !\MUX2|saida_MUX[5]~5_combout\ & ( (\MUX2|saida_MUX[6]~6_combout\ & (!\MUX2|saida_MUX[4]~4_combout\ $ (!\MUX2|saida_MUX[7]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y4_N21
\HEX1_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ & (!\MUX2|saida_MUX[4]~4_combout\ & !\MUX2|saida_MUX[6]~6_combout\)) # (\MUX2|saida_MUX[7]~7_combout\ & ((\MUX2|saida_MUX[6]~6_combout\))) ) ) 
-- # ( !\MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[4]~4_combout\ & (\MUX2|saida_MUX[7]~7_combout\ & \MUX2|saida_MUX[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y4_N48
\HEX1_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[6]~6_combout\ & (\MUX2|saida_MUX[7]~7_combout\ & !\MUX2|saida_MUX[4]~4_combout\)) # (\MUX2|saida_MUX[6]~6_combout\ & ((\MUX2|saida_MUX[4]~4_combout\))) ) ) 
-- # ( !\MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ $ (!\MUX2|saida_MUX[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y4_N6
\HEX1_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \MUX2|saida_MUX[6]~6_combout\ & ( \MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~162_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(4))))) ) ) ) # ( 
-- !\MUX2|saida_MUX[6]~6_combout\ & ( \MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~162_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(4))))) ) ) ) # ( \MUX2|saida_MUX[6]~6_combout\ & ( 
-- !\MUX2|saida_MUX[5]~5_combout\ & ( !\MUX2|saida_MUX[7]~7_combout\ ) ) ) # ( !\MUX2|saida_MUX[6]~6_combout\ & ( !\MUX2|saida_MUX[5]~5_combout\ & ( (!\SW[9]~input_o\ & ((\RAM1|ram~162_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101111111110000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(4),
	datab => \RAM1|ALT_INV_ram~162_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y4_N24
\HEX1_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( \SW[9]~input_o\ & ( !\REGA|DOUT\(7) $ (((\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\))) ) ) ) # ( !\MUX2|saida_MUX[4]~4_combout\ & ( \SW[9]~input_o\ & ( 
-- (!\REGA|DOUT\(7) & (!\MUX2|saida_MUX[6]~6_combout\ & \MUX2|saida_MUX[5]~5_combout\)) ) ) ) # ( \MUX2|saida_MUX[4]~4_combout\ & ( !\SW[9]~input_o\ & ( !\RAM1|ram~160_combout\ $ (((\MUX2|saida_MUX[6]~6_combout\ & !\MUX2|saida_MUX[5]~5_combout\))) ) ) ) # ( 
-- !\MUX2|saida_MUX[4]~4_combout\ & ( !\SW[9]~input_o\ & ( (!\RAM1|ram~160_combout\ & (!\MUX2|saida_MUX[6]~6_combout\ & \MUX2|saida_MUX[5]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000101001011010101000000000110000001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~160_combout\,
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y4_N51
\HEX1_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX2|saida_MUX[5]~5_combout\ & ( (\MUX2|saida_MUX[4]~4_combout\ & (!\MUX2|saida_MUX[7]~7_combout\ & \MUX2|saida_MUX[6]~6_combout\)) ) ) # ( !\MUX2|saida_MUX[5]~5_combout\ & ( (!\MUX2|saida_MUX[7]~7_combout\ 
-- & ((!\MUX2|saida_MUX[6]~6_combout\))) # (\MUX2|saida_MUX[7]~7_combout\ & (!\MUX2|saida_MUX[4]~4_combout\ & \MUX2|saida_MUX[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001010111100000000101000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[7]~7_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y4_N48
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~4_combout\ & ( !\PC|DOUT\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X40_Y4_N51
\HEX2_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y2_N0
\HEX2_SEVENSEG|rascSaida7seg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\ = ( \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~0_combout\) # (!\PC|DOUT\(1)) ) ) ) # ( !\HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( \ROM1|memROM~5_combout\ ) ) # 
-- ( \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\)) # (\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & !\PC|DOUT\(1))) ) ) ) # ( 
-- !\HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~0_combout\) # (\PC|DOUT\(1)))) # (\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101110011011100110001001100011111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(1),
	datae => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\);

-- Location: MLABCELL_X45_Y2_N33
\HEX2_SEVENSEG|rascSaida7seg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT\(1) & (!\ROM1|memROM~3_combout\ $ ((!\ROM1|memROM~5_combout\)))) # (\PC|DOUT\(1) & (((\HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110000011110110011000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~0_combout\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\);

-- Location: LABCELL_X39_Y3_N0
\HEX2_SEVENSEG|rascSaida7seg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~0_combout\) # (\ROM1|memROM~3_combout\) ) ) # ( !\ROM1|memROM~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\);

-- Location: MLABCELL_X45_Y2_N12
\HEX2_SEVENSEG|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(1) $ (!\ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~0_combout\ & ((\ROM1|memROM~3_combout\))) # 
-- (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(1) & !\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101001001010010010100100101000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\);

-- Location: LABCELL_X39_Y3_N24
\HEX2_SEVENSEG|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\PC|DOUT\(1) & !\ROM1|memROM~5_combout\)) # (\ROM1|memROM~3_combout\ & ((!\PC|DOUT\(1)) # (!\ROM1|memROM~5_combout\))) ) ) # ( 
-- !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110101001101010001010101010101011101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\);

-- Location: LABCELL_X40_Y3_N24
\HEX2_SEVENSEG|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\ = ( \PC|DOUT\(1) & ( !\PC|DOUT\(8) & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~6_combout\)))) ) ) ) # ( !\PC|DOUT\(1) & ( !\PC|DOUT\(8) & ( 
-- (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\)) # (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001101000001000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\);

-- Location: MLABCELL_X45_Y2_N54
\HEX2_SEVENSEG|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\ = ( \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( \ROM1|memROM~0_combout\ & ( \PC|DOUT\(1) ) ) ) # ( !\HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( 
-- \HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~5_combout\ ) ) ) # ( !\HEX2_SEVENSEG|rascSaida7seg[0]~0_combout\ & ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \PC|ALT_INV_DOUT\(1),
	datae => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[0]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\);

-- Location: LABCELL_X39_Y3_N6
\MUX2|saida_MUX[18]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[18]~10_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~155_combout\ ) ) # ( !\SW[9]~input_o\ & ( \PC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \RAM1|ALT_INV_ram~155_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[18]~10_combout\);

-- Location: LABCELL_X41_Y4_N3
\MUX2|saida_MUX[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[16]~8_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~151_combout\ ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~151_combout\ & ( \PC|DOUT\(0) ) ) ) # ( !\SW[9]~input_o\ & ( !\RAM1|ram~151_combout\ & ( \PC|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \MUX2|saida_MUX[16]~8_combout\);

-- Location: LABCELL_X41_Y4_N18
\MUX2|saida_MUX[17]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[17]~9_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~153_combout\ ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~153_combout\ & ( \PC|DOUT\(1) ) ) ) # ( !\SW[9]~input_o\ & ( !\RAM1|ram~153_combout\ & ( \PC|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(1),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \MUX2|saida_MUX[17]~9_combout\);

-- Location: LABCELL_X40_Y4_N42
\HEX4_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & ((!\SW[9]~input_o\ & (\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((\RAM1|ram~149_combout\))))) ) ) ) # ( 
-- \MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( !\MUX2|saida_MUX[18]~10_combout\ $ (((!\SW[9]~input_o\ & (\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((\RAM1|ram~149_combout\))))) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( 
-- !\MUX2|saida_MUX[17]~9_combout\ & ( (\MUX2|saida_MUX[18]~10_combout\ & ((!\SW[9]~input_o\ & (!\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((!\RAM1|ram~149_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100000100111001001001100000000000000000100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N24
\MUX2|saida_MUX[19]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[19]~11_combout\ = ( \PC|DOUT\(3) & ( (!\SW[9]~input_o\) # (\RAM1|ram~149_combout\) ) ) # ( !\PC|DOUT\(3) & ( (\RAM1|ram~149_combout\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \PC|ALT_INV_DOUT\(3),
	combout => \MUX2|saida_MUX[19]~11_combout\);

-- Location: LABCELL_X41_Y4_N51
\HEX4_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( \MUX2|saida_MUX[19]~11_combout\ ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( 
-- \MUX2|saida_MUX[18]~10_combout\ ) ) ) # ( \MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (\MUX2|saida_MUX[18]~10_combout\ & !\MUX2|saida_MUX[19]~11_combout\) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( 
-- !\MUX2|saida_MUX[17]~9_combout\ & ( (\MUX2|saida_MUX[18]~10_combout\ & \MUX2|saida_MUX[19]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y4_N42
\HEX4_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( (\MUX2|saida_MUX[17]~9_combout\ & (\MUX2|saida_MUX[19]~11_combout\ & \MUX2|saida_MUX[18]~10_combout\)) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( 
-- (!\MUX2|saida_MUX[19]~11_combout\ & (\MUX2|saida_MUX[17]~9_combout\ & !\MUX2|saida_MUX[18]~10_combout\)) # (\MUX2|saida_MUX[19]~11_combout\ & ((\MUX2|saida_MUX[18]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011000000000001000101000100001100110000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y4_N15
\HEX4_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( \MUX2|saida_MUX[18]~10_combout\ ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( 
-- (!\MUX2|saida_MUX[18]~10_combout\ & \MUX2|saida_MUX[19]~11_combout\) ) ) ) # ( \MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & !\MUX2|saida_MUX[19]~11_combout\) ) ) ) # ( 
-- !\MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (\MUX2|saida_MUX[18]~10_combout\ & !\MUX2|saida_MUX[19]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y4_N54
\HEX4_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \PC|DOUT\(0) & ( \MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[19]~11_combout\ & ((!\SW[9]~input_o\) # (\RAM1|ram~151_combout\))) ) ) ) # ( !\PC|DOUT\(0) & ( \MUX2|saida_MUX[17]~9_combout\ & ( 
-- (\RAM1|ram~151_combout\ & (!\MUX2|saida_MUX[19]~11_combout\ & \SW[9]~input_o\)) ) ) ) # ( \PC|DOUT\(0) & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & (((!\SW[9]~input_o\)) # (\RAM1|ram~151_combout\))) # 
-- (\MUX2|saida_MUX[18]~10_combout\ & (((!\MUX2|saida_MUX[19]~11_combout\)))) ) ) ) # ( !\PC|DOUT\(0) & ( !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & (\RAM1|ram~151_combout\ & ((\SW[9]~input_o\)))) # 
-- (\MUX2|saida_MUX[18]~10_combout\ & (((!\MUX2|saida_MUX[19]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110100111111000111010000000000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~151_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N6
\HEX4_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( (!\SW[9]~input_o\ & (!\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((!\RAM1|ram~149_combout\))) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( 
-- \MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[18]~10_combout\ & ((!\SW[9]~input_o\ & (!\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((!\RAM1|ram~149_combout\))))) ) ) ) # ( \MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( 
-- !\MUX2|saida_MUX[18]~10_combout\ $ (((!\SW[9]~input_o\ & (\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((\RAM1|ram~149_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111001001001110001100100000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y4_N12
\HEX4_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX2|saida_MUX[16]~8_combout\ & ( \MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[19]~11_combout\ & \MUX2|saida_MUX[18]~10_combout\) ) ) ) # ( \MUX2|saida_MUX[16]~8_combout\ & ( 
-- !\MUX2|saida_MUX[17]~9_combout\ & ( (!\MUX2|saida_MUX[19]~11_combout\ & !\MUX2|saida_MUX[18]~10_combout\) ) ) ) # ( !\MUX2|saida_MUX[16]~8_combout\ & ( !\MUX2|saida_MUX[17]~9_combout\ & ( !\MUX2|saida_MUX[19]~11_combout\ $ 
-- (\MUX2|saida_MUX[18]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100010001000100000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[19]~11_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[18]~10_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \MUX2|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y3_N15
\MUX2|saida_MUX[21]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[21]~13_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~167_combout\ ) ) # ( !\SW[9]~input_o\ & ( \PC|DOUT\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datac => \RAM1|ALT_INV_ram~167_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX2|saida_MUX[21]~13_combout\);

-- Location: LABCELL_X39_Y3_N18
\MUX2|saida_MUX[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[22]~14_combout\ = (!\SW[9]~input_o\ & ((\PC|DOUT\(6)))) # (\SW[9]~input_o\ & (\RAM1|ram~169_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \RAM1|ALT_INV_ram~169_combout\,
	datac => \PC|ALT_INV_DOUT\(6),
	combout => \MUX2|saida_MUX[22]~14_combout\);

-- Location: LABCELL_X43_Y4_N15
\MUX2|saida_MUX[20]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[20]~12_combout\ = ( \PC|DOUT\(4) & ( (!\SW[9]~input_o\) # (\RAM1|ram~162_combout\) ) ) # ( !\PC|DOUT\(4) & ( (\SW[9]~input_o\ & \RAM1|ram~162_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~162_combout\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \MUX2|saida_MUX[20]~12_combout\);

-- Location: LABCELL_X39_Y3_N57
\HEX5_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \MUX2|saida_MUX[20]~12_combout\ & ( \PC|DOUT\(7) & ( (!\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (((!\SW[9]~input_o\) # (\RAM1|ram~160_combout\))))) # 
-- (\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ & ((!\SW[9]~input_o\) # (\RAM1|ram~160_combout\)))) ) ) ) # ( !\MUX2|saida_MUX[20]~12_combout\ & ( \PC|DOUT\(7) & ( (\SW[9]~input_o\ & (!\MUX2|saida_MUX[21]~13_combout\ & 
-- (!\RAM1|ram~160_combout\ & \MUX2|saida_MUX[22]~14_combout\))) ) ) ) # ( \MUX2|saida_MUX[20]~12_combout\ & ( !\PC|DOUT\(7) & ( (!\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (((\SW[9]~input_o\ & \RAM1|ram~160_combout\))))) # 
-- (\MUX2|saida_MUX[21]~13_combout\ & (\SW[9]~input_o\ & (\RAM1|ram~160_combout\ & !\MUX2|saida_MUX[22]~14_combout\))) ) ) ) # ( !\MUX2|saida_MUX[20]~12_combout\ & ( !\PC|DOUT\(7) & ( (!\MUX2|saida_MUX[21]~13_combout\ & (\MUX2|saida_MUX[22]~14_combout\ & 
-- ((!\SW[9]~input_o\) # (!\RAM1|ram~160_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000110010010000010000000000010000000110001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N18
\MUX2|saida_MUX[23]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[23]~15_combout\ = ( \PC|DOUT\(7) & ( \RAM1|ram~160_combout\ ) ) # ( !\PC|DOUT\(7) & ( \RAM1|ram~160_combout\ & ( \SW[9]~input_o\ ) ) ) # ( \PC|DOUT\(7) & ( !\RAM1|ram~160_combout\ & ( !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX2|saida_MUX[23]~15_combout\);

-- Location: LABCELL_X43_Y4_N45
\HEX5_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ = (!\MUX2|saida_MUX[23]~15_combout\ & (\MUX2|saida_MUX[22]~14_combout\ & (!\MUX2|saida_MUX[20]~12_combout\ $ (!\MUX2|saida_MUX[21]~13_combout\)))) # (\MUX2|saida_MUX[23]~15_combout\ & 
-- ((!\MUX2|saida_MUX[20]~12_combout\ & (\MUX2|saida_MUX[22]~14_combout\)) # (\MUX2|saida_MUX[20]~12_combout\ & ((\MUX2|saida_MUX[21]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100111000100100010011100010010001001110001001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y4_N36
\HEX5_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ = (!\MUX2|saida_MUX[22]~14_combout\ & (!\MUX2|saida_MUX[20]~12_combout\ & (\MUX2|saida_MUX[21]~13_combout\ & !\MUX2|saida_MUX[23]~15_combout\))) # (\MUX2|saida_MUX[22]~14_combout\ & 
-- (\MUX2|saida_MUX[23]~15_combout\ & ((!\MUX2|saida_MUX[20]~12_combout\) # (\MUX2|saida_MUX[21]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y4_N39
\HEX5_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ = (!\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[23]~15_combout\ & (!\MUX2|saida_MUX[20]~12_combout\ $ (!\MUX2|saida_MUX[22]~14_combout\)))) # (\MUX2|saida_MUX[21]~13_combout\ & 
-- ((!\MUX2|saida_MUX[20]~12_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ & \MUX2|saida_MUX[23]~15_combout\)) # (\MUX2|saida_MUX[20]~12_combout\ & (\MUX2|saida_MUX[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000011001011000000001100101100000000110010110000000011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y4_N30
\HEX5_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \RAM1|ram~162_combout\ & ( \PC|DOUT\(4) & ( (!\MUX2|saida_MUX[23]~15_combout\) # ((!\MUX2|saida_MUX[21]~13_combout\ & !\MUX2|saida_MUX[22]~14_combout\)) ) ) ) # ( !\RAM1|ram~162_combout\ & ( \PC|DOUT\(4) & ( 
-- (!\MUX2|saida_MUX[21]~13_combout\ & ((!\MUX2|saida_MUX[22]~14_combout\ & ((!\SW[9]~input_o\))) # (\MUX2|saida_MUX[22]~14_combout\ & (!\MUX2|saida_MUX[23]~15_combout\)))) # (\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[23]~15_combout\ & 
-- (!\SW[9]~input_o\))) ) ) ) # ( \RAM1|ram~162_combout\ & ( !\PC|DOUT\(4) & ( (!\MUX2|saida_MUX[21]~13_combout\ & ((!\MUX2|saida_MUX[22]~14_combout\ & ((\SW[9]~input_o\))) # (\MUX2|saida_MUX[22]~14_combout\ & (!\MUX2|saida_MUX[23]~15_combout\)))) # 
-- (\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[23]~15_combout\ & (\SW[9]~input_o\))) ) ) ) # ( !\RAM1|ram~162_combout\ & ( !\PC|DOUT\(4) & ( (!\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[23]~15_combout\ & \MUX2|saida_MUX[22]~14_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000011101000110011100000110010001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datae => \RAM1|ALT_INV_ram~162_combout\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N39
\HEX5_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX2|saida_MUX[21]~13_combout\ & ( \RAM1|ram~160_combout\ & ( (!\SW[9]~input_o\ & (!\PC|DOUT\(7) & ((!\MUX2|saida_MUX[22]~14_combout\) # (\MUX2|saida_MUX[20]~12_combout\)))) ) ) ) # ( 
-- !\MUX2|saida_MUX[21]~13_combout\ & ( \RAM1|ram~160_combout\ & ( (\MUX2|saida_MUX[20]~12_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (((\PC|DOUT\(7)) # (\SW[9]~input_o\))))) ) ) ) # ( \MUX2|saida_MUX[21]~13_combout\ & ( !\RAM1|ram~160_combout\ & ( 
-- (!\SW[9]~input_o\ & (!\PC|DOUT\(7) & ((!\MUX2|saida_MUX[22]~14_combout\) # (\MUX2|saida_MUX[20]~12_combout\)))) # (\SW[9]~input_o\ & (((!\MUX2|saida_MUX[22]~14_combout\) # (\MUX2|saida_MUX[20]~12_combout\)))) ) ) ) # ( !\MUX2|saida_MUX[21]~13_combout\ & ( 
-- !\RAM1|ram~160_combout\ & ( (\MUX2|saida_MUX[20]~12_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (((!\SW[9]~input_o\ & \PC|DOUT\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010010110100001101110100000000100001111000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y4_N42
\HEX5_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ = (!\MUX2|saida_MUX[20]~12_combout\ & (!\MUX2|saida_MUX[21]~13_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (\MUX2|saida_MUX[23]~15_combout\)))) # (\MUX2|saida_MUX[20]~12_combout\ & 
-- (!\MUX2|saida_MUX[23]~15_combout\ & (!\MUX2|saida_MUX[22]~14_combout\ $ (\MUX2|saida_MUX[21]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100100000110000010010000011000001001000001100000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX2|ALT_INV_saida_MUX[21]~13_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[23]~15_combout\,
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

-- Location: LABCELL_X43_Y40_N0
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


