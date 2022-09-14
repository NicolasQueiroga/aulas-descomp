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

-- DATE "09/14/2022 10:17:32"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	DECODER_CMD : BUFFER std_logic_vector(11 DOWNTO 0)
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
-- PC_OUT[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- DECODER_CMD[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[8]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DECODER_CMD[11]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_DECODER_CMD : std_logic_vector(11 DOWNTO 0);
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
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~8_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[4]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[7]~5_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[8]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[1]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[2]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \DESVIO1|Sel[1]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[5]~10_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[5]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[4]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[3]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~3_combout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \DESVIO1|Sel[0]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[5]~7_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[1]~2_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[6]~7_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal3~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~9_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal4~0_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \FLIPFLOP1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_Sel[1]~0_combout\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_Sel[0]~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[6]~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FLIPFLOP1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;

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
DECODER_CMD <= ww_DECODER_CMD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX_7SEG|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX_7SEG|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX_7SEG|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX_7SEG|saida_MUX[7]~7_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_7SEG|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\DECODER_INSTRU|ALT_INV_saida[1]~0_combout\ <= NOT \DECODER_INSTRU|saida[1]~0_combout\;
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX_7SEG|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX_7SEG|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX_7SEG|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\END_RETORNO|ALT_INV_DOUT\(8) <= NOT \END_RETORNO|DOUT\(8);
\MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\ <= NOT \MUX_7SEG|saida_MUX[16]~8_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\FLIPFLOP1|ALT_INV_DOUT~q\ <= NOT \FLIPFLOP1|DOUT~q\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DECODER_INSTRU|ALT_INV_saida~3_combout\ <= NOT \DECODER_INSTRU|saida~3_combout\;
\END_RETORNO|ALT_INV_DOUT\(1) <= NOT \END_RETORNO|DOUT\(1);
\END_RETORNO|ALT_INV_DOUT\(0) <= NOT \END_RETORNO|DOUT\(0);
\DESVIO1|ALT_INV_Sel[1]~0_combout\ <= NOT \DESVIO1|Sel[1]~0_combout\;
\DESVIO1|ALT_INV_Sel[0]~1_combout\ <= NOT \DESVIO1|Sel[0]~1_combout\;
\DECODER_INSTRU|ALT_INV_saida[3]~4_combout\ <= NOT \DECODER_INSTRU|saida[3]~4_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\ <= NOT \MUX_7SEG|saida_MUX[18]~10_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\ <= NOT \MUX_7SEG|saida_MUX[20]~12_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\ <= NOT \MUX_7SEG|saida_MUX[19]~11_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\ <= NOT \MUX_7SEG|saida_MUX[22]~14_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\ <= NOT \MUX_7SEG|saida_MUX[17]~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\DECODER_INSTRU|ALT_INV_saida[1]~1_combout\ <= NOT \DECODER_INSTRU|saida[1]~1_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\DECODER_INSTRU|ALT_INV_saida[4]~5_combout\ <= NOT \DECODER_INSTRU|saida[4]~5_combout\;
\DECODER_INSTRU|ALT_INV_saida[6]~7_combout\ <= NOT \DECODER_INSTRU|saida[6]~7_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\DECODER_INSTRU|ALT_INV_saida[5]~6_combout\ <= NOT \DECODER_INSTRU|saida[5]~6_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\ <= NOT \MUX_7SEG|saida_MUX[23]~15_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\ <= NOT \MUX_7SEG|saida_MUX[21]~13_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\DECODER_INSTRU|ALT_INV_Equal5~0_combout\ <= NOT \DECODER_INSTRU|Equal5~0_combout\;
\REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA|DOUT[7]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \REGA|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REGA|DOUT[0]~DUPLICATE_q\;
\END_RETORNO|ALT_INV_DOUT\(6) <= NOT \END_RETORNO|DOUT\(6);
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\END_RETORNO|ALT_INV_DOUT\(4) <= NOT \END_RETORNO|DOUT\(4);
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\FLIPFLOP1|ALT_INV_DOUT~1_combout\ <= NOT \FLIPFLOP1|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\END_RETORNO|ALT_INV_DOUT\(2) <= NOT \END_RETORNO|DOUT\(2);
\END_RETORNO|ALT_INV_DOUT\(7) <= NOT \END_RETORNO|DOUT\(7);
\END_RETORNO|ALT_INV_DOUT\(3) <= NOT \END_RETORNO|DOUT\(3);
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\END_RETORNO|ALT_INV_DOUT\(5) <= NOT \END_RETORNO|DOUT\(5);
\DECODER_INSTRU|ALT_INV_saida[5]~10_combout\ <= NOT \DECODER_INSTRU|saida[5]~10_combout\;
\REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REGA|DOUT[3]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REGA|DOUT[1]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REGA|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;

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
	i => \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\,
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
	i => \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\,
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

-- Location: IOOBUF_X42_Y45_N36
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X42_Y45_N53
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X54_Y16_N39
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X54_Y14_N96
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X44_Y45_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
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
	i => \REGA|DOUT[1]~DUPLICATE_q\,
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
	i => \REGA|DOUT[2]~DUPLICATE_q\,
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
	i => \REGA|DOUT\(3),
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
	i => \REGA|DOUT[5]~DUPLICATE_q\,
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

-- Location: IOOBUF_X54_Y14_N62
\DECODER_CMD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(0));

-- Location: IOOBUF_X54_Y15_N39
\DECODER_CMD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(1));

-- Location: IOOBUF_X44_Y45_N36
\DECODER_CMD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida~3_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(2));

-- Location: IOOBUF_X54_Y14_N79
\DECODER_CMD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(3));

-- Location: IOOBUF_X44_Y45_N53
\DECODER_CMD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(4));

-- Location: IOOBUF_X44_Y45_N19
\DECODER_CMD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(5));

-- Location: IOOBUF_X43_Y45_N19
\DECODER_CMD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|ALT_INV_saida[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(6));

-- Location: IOOBUF_X43_Y45_N36
\DECODER_CMD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(7));

-- Location: IOOBUF_X34_Y45_N2
\DECODER_CMD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida~8_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(8));

-- Location: IOOBUF_X54_Y15_N56
\DECODER_CMD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida~9_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(9));

-- Location: IOOBUF_X43_Y45_N53
\DECODER_CMD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(10));

-- Location: IOOBUF_X34_Y45_N53
\DECODER_CMD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_INSTRU|saida~8_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(11));

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

-- Location: LABCELL_X10_Y2_N57
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

-- Location: FF_X10_Y2_N58
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

-- Location: MLABCELL_X42_Y2_N0
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\gravar:detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: FF_X43_Y2_N19
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: FF_X42_Y3_N58
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X43_Y2_N16
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N36
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: MLABCELL_X42_Y2_N39
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: MLABCELL_X42_Y2_N42
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

-- Location: FF_X42_Y3_N55
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X43_Y2_N23
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X43_Y2_N13
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X43_Y2_N54
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(0))) # (\PC|DOUT\(3) & (\PC|DOUT[2]~DUPLICATE_q\ & \PC|DOUT\(0))) ) ) # ( !\PC|DOUT\(1) & ( !\PC|DOUT\(3) $ (((!\PC|DOUT\(0)) # 
-- (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011001100111100001111000000000000111100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X43_Y2_N48
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(0) & ((!\PC|DOUT\(3)) # (!\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & ((\PC|DOUT\(0)))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0)) # (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111111111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X43_Y1_N3
\DECODER_INSTRU|saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~8_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~13_combout\ & ( (\DECODER_INSTRU|saida[1]~0_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DECODER_INSTRU|saida~8_combout\);

-- Location: FF_X42_Y2_N43
\END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(4));

-- Location: LABCELL_X41_Y3_N33
\MUX2|MUX_OUT[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[4]~8_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( !\DESVIO1|Sel[0]~1_combout\ & ( (!\DESVIO1|Sel[1]~0_combout\) # (\END_RETORNO|DOUT\(4)) ) ) ) # ( !\incrementaPC|Add0~33_sumout\ & ( !\DESVIO1|Sel[0]~1_combout\ & ( (\END_RETORNO|DOUT\(4) & 
-- \DESVIO1|Sel[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(4),
	datac => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datae => \incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	combout => \MUX2|MUX_OUT[4]~8_combout\);

-- Location: FF_X42_Y3_N38
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \MUX2|MUX_OUT[4]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X42_Y2_N45
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: MLABCELL_X42_Y2_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X42_Y2_N49
\END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(6));

-- Location: MLABCELL_X42_Y3_N27
\MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[6]~6_combout\ = ( \incrementaPC|Add0~25_sumout\ & ( (!\DESVIO1|Sel[0]~1_combout\ & ((!\DESVIO1|Sel[1]~0_combout\) # (\END_RETORNO|DOUT\(6)))) ) ) # ( !\incrementaPC|Add0~25_sumout\ & ( (\END_RETORNO|DOUT\(6) & (\DESVIO1|Sel[1]~0_combout\ & 
-- !\DESVIO1|Sel[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(6),
	datac => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datad => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX2|MUX_OUT[6]~6_combout\);

-- Location: FF_X42_Y3_N29
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N51
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X42_Y2_N53
\END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(7));

-- Location: MLABCELL_X42_Y2_N27
\MUX2|MUX_OUT[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[7]~5_combout\ = ( \END_RETORNO|DOUT\(7) & ( (!\DESVIO1|Sel[0]~1_combout\ & ((\incrementaPC|Add0~21_sumout\) # (\DESVIO1|Sel[1]~0_combout\))) ) ) # ( !\END_RETORNO|DOUT\(7) & ( (!\DESVIO1|Sel[1]~0_combout\ & (!\DESVIO1|Sel[0]~1_combout\ & 
-- \incrementaPC|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \END_RETORNO|ALT_INV_DOUT\(7),
	combout => \MUX2|MUX_OUT[7]~5_combout\);

-- Location: FF_X42_Y3_N47
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \MUX2|MUX_OUT[7]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X42_Y3_N45
\DECODER_INSTRU|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[1]~1_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \DECODER_INSTRU|saida[1]~1_combout\);

-- Location: MLABCELL_X42_Y1_N48
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \DECODER_INSTRU|saida[1]~1_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT\(3) & (\PC|DOUT\(2))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2) & \PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001001100000000000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: MLABCELL_X42_Y2_N54
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~1_sumout\);

-- Location: FF_X42_Y2_N55
\END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(8));

-- Location: MLABCELL_X42_Y3_N54
\MUX2|MUX_OUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[8]~0_combout\ = ( \incrementaPC|Add0~1_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & ((!\DESVIO1|Sel[0]~1_combout\) # ((\RAM1|process_0~0_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(8))))) ) ) # ( 
-- !\incrementaPC|Add0~1_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\DESVIO1|Sel[0]~1_combout\ & (\RAM1|process_0~0_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(8),
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUX2|MUX_OUT[8]~0_combout\);

-- Location: FF_X42_Y3_N56
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X42_Y3_N6
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & ((\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(3) & (\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~4_combout\);

-- Location: MLABCELL_X42_Y3_N3
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( (\DECODER_INSTRU|saida[1]~0_combout\ & !\PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X42_Y2_N30
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X42_Y2_N32
\END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(0));

-- Location: LABCELL_X43_Y2_N21
\MUX2|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[0]~1_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & ((!\DESVIO1|Sel[0]~1_combout\) # ((\ROM1|memROM~5_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(0))))) ) ) # ( 
-- !\incrementaPC|Add0~5_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\DESVIO1|Sel[0]~1_combout\ & (\ROM1|memROM~5_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(0),
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|MUX_OUT[0]~1_combout\);

-- Location: FF_X43_Y2_N22
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N33
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X42_Y2_N34
\END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(1));

-- Location: LABCELL_X43_Y2_N57
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(0))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X43_Y3_N9
\HEX2_SEVENSEG|rascSaida7seg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\);

-- Location: LABCELL_X43_Y2_N12
\MUX2|MUX_OUT[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[1]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & ((!\DESVIO1|Sel[0]~1_combout\) # ((\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(1))))) ) ) # ( 
-- !\incrementaPC|Add0~9_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\DESVIO1|Sel[0]~1_combout\ & ((\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(1),
	datad => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|MUX_OUT[1]~2_combout\);

-- Location: FF_X43_Y2_N14
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X42_Y2_N37
\END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(2));

-- Location: LABCELL_X43_Y2_N42
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(0)) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT[3]~DUPLICATE_q\ & 
-- !\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000000110000111100000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X42_Y3_N15
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \ROM1|memROM~2_combout\ & ( (\DECODER_INSTRU|saida[1]~0_combout\ & !\PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X43_Y2_N18
\MUX2|MUX_OUT[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[2]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & ((!\DESVIO1|Sel[0]~1_combout\) # ((\ROM1|memROM~3_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(2))))) ) ) # ( 
-- !\incrementaPC|Add0~13_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\DESVIO1|Sel[0]~1_combout\ & ((\ROM1|memROM~3_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(2),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|MUX_OUT[2]~3_combout\);

-- Location: FF_X43_Y2_N20
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N51
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT[2]~DUPLICATE_q\ $ (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~12_combout\);

-- Location: MLABCELL_X42_Y2_N9
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: MLABCELL_X42_Y2_N15
\DESVIO1|Sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel[1]~0_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & (\DECODER_INSTRU|saida[1]~1_combout\ & \ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \DESVIO1|Sel[1]~0_combout\);

-- Location: FF_X42_Y2_N40
\END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(3));

-- Location: LABCELL_X43_Y2_N15
\MUX2|MUX_OUT[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[3]~4_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & ((!\DESVIO1|Sel[0]~1_combout\) # ((!\ROM1|memROM~1_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(3))))) ) ) # ( 
-- !\incrementaPC|Add0~17_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\DESVIO1|Sel[0]~1_combout\ & ((!\ROM1|memROM~1_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001110000001111001111100010111100111110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX2|MUX_OUT[3]~4_combout\);

-- Location: FF_X43_Y2_N17
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X43_Y2_N0
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \PC|DOUT\(1) & ( (\PC|DOUT\(0) & ((\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT\(3)))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X43_Y1_N18
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~13_combout\ & ( !\DECODER_INSTRU|saida[1]~0_combout\ ) ) # ( !\ROM1|memROM~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X43_Y3_N12
\DECODER_INSTRU|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[5]~10_combout\ = ( \DECODER_INSTRU|saida[1]~1_combout\ & ( !\ROM1|memROM~14_combout\ $ (((!\ROM1|memROM~12_combout\ & !\ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100111100000011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	combout => \DECODER_INSTRU|saida[5]~10_combout\);

-- Location: LABCELL_X43_Y2_N33
\DECODER_INSTRU|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[5]~6_combout\ = ( !\PC|DOUT[8]~DUPLICATE_q\ & ( \DECODER_INSTRU|saida[1]~0_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~14_combout\ $ (((!\ROM1|memROM~12_combout\ & !\ROM1|memROM~11_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \DECODER_INSTRU|saida[5]~6_combout\);

-- Location: LABCELL_X43_Y2_N27
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & (!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(0))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X42_Y1_N33
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\DECODER_INSTRU|saida[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X43_Y2_N6
\DECODER_INSTRU|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[4]~5_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\PC|DOUT\(8) & (!\ROM1|memROM~11_combout\ & \DECODER_INSTRU|saida[1]~0_combout\))) ) ) ) # ( !\ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & (!\PC|DOUT\(8) & (!\ROM1|memROM~11_combout\ & \DECODER_INSTRU|saida[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \DECODER_INSTRU|saida[4]~5_combout\);

-- Location: MLABCELL_X42_Y1_N21
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( !\ROM1|memROM~2_combout\ ) ) # ( !\DECODER_INSTRU|saida[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X43_Y2_N24
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( !\ROM1|memROM~6_combout\ ) ) # ( !\DECODER_INSTRU|saida[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: MLABCELL_X42_Y3_N36
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~4_combout\ & ( \DECODER_INSTRU|saida[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X44_Y3_N30
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~7_combout\))) ) + ( \REGA|DOUT\(0) ) + ( !VCC ))
-- \ULA1|Add0~6\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~7_combout\))) ) + ( \REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X43_Y2_N45
\REGA|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[0]~feeder_combout\ = ( \ULA1|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \REGA|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X43_Y3_N30
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: LABCELL_X43_Y3_N33
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X43_Y2_N39
\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & (\RAM1|ram~148_combout\)) # (\DECODER_INSTRU|saida[5]~6_combout\ & ((\ROM1|memROM~5_combout\)))) ) ) # ( 
-- !\ULA1|Add1~5_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & (\RAM1|ram~148_combout\)) # (\DECODER_INSTRU|saida[5]~6_combout\ & ((\ROM1|memROM~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[0]~1_combout\);

-- Location: LABCELL_X44_Y2_N33
\DECODER_INSTRU|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[3]~4_combout\ = ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~15_combout\ & (\DECODER_INSTRU|saida[1]~1_combout\ & !\ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \DECODER_INSTRU|saida[3]~4_combout\);

-- Location: FF_X43_Y2_N47
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[0]~feeder_combout\,
	asdata => \ULA1|saida[0]~1_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X44_Y3_N33
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~10_combout\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~10_combout\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X43_Y2_N3
\REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[1]~feeder_combout\ = ( \ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \REGA|DOUT[1]~feeder_combout\);

-- Location: FF_X43_Y2_N4
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[1]~feeder_combout\,
	asdata => \ULA1|saida[1]~2_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N36
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~10_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add1~6\ 
-- ))
-- \ULA1|Add1~10\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~10_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X43_Y2_N36
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & (\RAM1|ram~150_combout\)) # (\DECODER_INSTRU|saida[5]~6_combout\ & ((\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\)))) ) 
-- ) # ( !\ULA1|Add1~9_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & (\RAM1|ram~150_combout\)) # (\DECODER_INSTRU|saida[5]~6_combout\ & ((\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	datad => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: FF_X43_Y2_N5
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[1]~feeder_combout\,
	asdata => \ULA1|saida[1]~2_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: LABCELL_X43_Y1_N0
\DECODER_INSTRU|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal5~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (\DECODER_INSTRU|saida[1]~0_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|Equal5~0_combout\);

-- Location: LABCELL_X43_Y1_N54
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|process_0~0_combout\ & ( !\ROM1|memROM~3_combout\ & ( (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & (!\ROM1|memROM~5_combout\ & (\DECODER_INSTRU|Equal5~0_combout\ & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X43_Y2_N32
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
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X42_Y3_N33
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: MLABCELL_X42_Y3_N12
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~149_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X43_Y3_N39
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~8_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add1~10\ 
-- ))
-- \ULA1|Add1~14\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~8_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X44_Y3_N21
\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\ROM1|memROM~3_combout\))) ) ) # ( 
-- !\ULA1|Add1~13_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101111110001111110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[2]~3_combout\);

-- Location: FF_X44_Y3_N20
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[2]~feeder_combout\,
	asdata => \ULA1|saida[2]~3_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: LABCELL_X44_Y3_N36
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM1|memROM~8_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM1|memROM~8_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X44_Y3_N18
\REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[2]~feeder_combout\ = \ULA1|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \REGA|DOUT[2]~feeder_combout\);

-- Location: FF_X44_Y3_N19
\REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[2]~feeder_combout\,
	asdata => \ULA1|saida[2]~3_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X43_Y3_N17
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X43_Y3_N15
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X43_Y3_N18
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~151_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X43_Y3_N42
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\ROM1|memROM~15_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\ & ((!\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|saida[5]~10_combout\ & (\ROM1|memROM~1_combout\)))) # (\ROM1|memROM~15_combout\ & 
-- (((!\RAM1|ram~146_combout\)))) ) + ( \REGA|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\ROM1|memROM~15_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\ & ((!\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|saida[5]~10_combout\ & (\ROM1|memROM~1_combout\)))) # (\ROM1|memROM~15_combout\ & (((!\RAM1|ram~146_combout\)))) 
-- ) + ( \REGA|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X44_Y3_N15
\ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~0_combout\ = ( \DECODER_INSTRU|saida[5]~6_combout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\ & ((\ULA1|Add1~1_sumout\))) # (\DECODER_INSTRU|saida[4]~5_combout\ & (!\ROM1|memROM~1_combout\)) ) ) # ( !\DECODER_INSTRU|saida[5]~6_combout\ & ( 
-- (!\DECODER_INSTRU|saida[4]~5_combout\ & ((\ULA1|Add1~1_sumout\))) # (\DECODER_INSTRU|saida[4]~5_combout\ & (\RAM1|ram~146_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	combout => \ULA1|saida[3]~0_combout\);

-- Location: FF_X44_Y3_N14
\REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[3]~feeder_combout\,
	asdata => \ULA1|saida[3]~0_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N39
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~146_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM1|memROM~9_combout\)))) ) + ( \REGA|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add0~14\ 
-- ))
-- \ULA1|Add0~2\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~146_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM1|memROM~9_combout\)))) ) + ( \REGA|DOUT[3]~DUPLICATE_q\ ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X44_Y3_N12
\REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[3]~feeder_combout\ = ( \ULA1|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \REGA|DOUT[3]~feeder_combout\);

-- Location: FF_X44_Y3_N13
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[3]~feeder_combout\,
	asdata => \ULA1|saida[3]~0_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X42_Y3_N53
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
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: MLABCELL_X42_Y3_N51
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: MLABCELL_X42_Y3_N48
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~5_combout\ & !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X44_Y3_N42
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (\RAM1|ram~156_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~22\ = CARRY(( (\RAM1|ram~156_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X44_Y3_N6
\REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[4]~feeder_combout\ = ( \ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \REGA|DOUT[4]~feeder_combout\);

-- Location: LABCELL_X43_Y3_N45
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~156_combout\) # ((!\ROM1|memROM~15_combout\ & \DECODER_INSTRU|saida[5]~10_combout\)) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~22\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~156_combout\) # ((!\ROM1|memROM~15_combout\ & \DECODER_INSTRU|saida[5]~10_combout\)) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X44_Y3_N9
\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( !\DECODER_INSTRU|saida[4]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[4]~5_combout\);

-- Location: FF_X44_Y3_N8
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[4]~feeder_combout\,
	asdata => \ULA1|saida[4]~5_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X43_Y3_N20
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
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: MLABCELL_X42_Y3_N30
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~21_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: MLABCELL_X42_Y3_N24
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~155_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: LABCELL_X44_Y3_N45
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (\RAM1|ram~158_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT[5]~DUPLICATE_q\ ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (\RAM1|ram~158_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT[5]~DUPLICATE_q\ ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X44_Y3_N54
\REGA|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[5]~feeder_combout\ = \ULA1|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \REGA|DOUT[5]~feeder_combout\);

-- Location: LABCELL_X44_Y3_N57
\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( !\DECODER_INSTRU|saida[4]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

-- Location: FF_X44_Y3_N55
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[5]~feeder_combout\,
	asdata => \ULA1|saida[5]~6_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X43_Y3_N8
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X42_Y3_N42
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\RAM1|ram~22_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: MLABCELL_X42_Y3_N0
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~157_combout\ & ( (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: FF_X44_Y3_N56
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[5]~feeder_combout\,
	asdata => \ULA1|saida[5]~6_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X43_Y3_N48
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~158_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~158_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X44_Y2_N0
\DECODER_INSTRU|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~3_combout\ = ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~15_combout\ & !\DECODER_INSTRU|saida[1]~1_combout\) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~15_combout\ & ((!\DECODER_INSTRU|saida[1]~1_combout\) # 
-- ((!\ROM1|memROM~14_combout\ & !\ROM1|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101010100000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \DECODER_INSTRU|saida~3_combout\);

-- Location: LABCELL_X43_Y3_N24
\FLIPFLOP1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIPFLOP1|DOUT~1_combout\ = ( \ULA1|Add1~1_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (!\DECODER_INSTRU|saida~3_combout\ & \FLIPFLOP1|DOUT~q\) ) ) ) # ( !\ULA1|Add1~1_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (!\DECODER_INSTRU|saida~3_combout\ & 
-- \FLIPFLOP1|DOUT~q\) ) ) ) # ( \ULA1|Add1~1_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (!\DECODER_INSTRU|saida~3_combout\ & \FLIPFLOP1|DOUT~q\) ) ) ) # ( !\ULA1|Add1~1_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (!\DECODER_INSTRU|saida~3_combout\ & 
-- (((\FLIPFLOP1|DOUT~q\)))) # (\DECODER_INSTRU|saida~3_combout\ & (!\ULA1|Add1~9_sumout\ & (!\ULA1|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~9_sumout\,
	datab => \DECODER_INSTRU|ALT_INV_saida~3_combout\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	datad => \FLIPFLOP1|ALT_INV_DOUT~q\,
	datae => \ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \FLIPFLOP1|DOUT~1_combout\);

-- Location: LABCELL_X44_Y3_N27
\ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( !\DECODER_INSTRU|saida[4]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[7]~4_combout\);

-- Location: FF_X44_Y3_N26
\REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[7]~feeder_combout\,
	asdata => \ULA1|saida[7]~4_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N48
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (\RAM1|ram~160_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( (\RAM1|ram~160_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: LABCELL_X44_Y3_N0
\REGA|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[6]~feeder_combout\ = ( \ULA1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \REGA|DOUT[6]~feeder_combout\);

-- Location: LABCELL_X43_Y3_N51
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\RAM1|ram~160_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~16_combout\)))) ) + ( \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\RAM1|ram~160_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~16_combout\)))) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

-- Location: LABCELL_X44_Y3_N3
\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( !\DECODER_INSTRU|saida[4]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

-- Location: FF_X44_Y3_N1
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[6]~feeder_combout\,
	asdata => \ULA1|saida[6]~7_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X43_Y3_N10
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
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: MLABCELL_X42_Y3_N21
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: MLABCELL_X42_Y3_N18
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & \RAM1|ram~159_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~159_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X44_Y3_N51
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (\RAM1|ram~154_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT[7]~DUPLICATE_q\ ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~17_sumout\);

-- Location: LABCELL_X44_Y3_N24
\REGA|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGA|DOUT[7]~feeder_combout\ = ( \ULA1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \REGA|DOUT[7]~feeder_combout\);

-- Location: FF_X44_Y3_N25
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[7]~feeder_combout\,
	asdata => \ULA1|saida[7]~4_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X43_Y1_N53
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
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X43_Y1_N51
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & \RAM1|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X43_Y1_N33
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~153_combout\ & ( (!\ROM1|memROM~5_combout\ & !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X43_Y3_N54
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|ram~154_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT[7]~DUPLICATE_q\ ) + ( \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~17_sumout\);

-- Location: LABCELL_X43_Y3_N0
\FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIPFLOP1|DOUT~0_combout\ = ( \ULA1|Add1~17_sumout\ & ( \ULA1|Add1~29_sumout\ & ( (\FLIPFLOP1|DOUT~1_combout\ & !\DECODER_INSTRU|saida~3_combout\) ) ) ) # ( !\ULA1|Add1~17_sumout\ & ( \ULA1|Add1~29_sumout\ & ( (\FLIPFLOP1|DOUT~1_combout\ & 
-- !\DECODER_INSTRU|saida~3_combout\) ) ) ) # ( \ULA1|Add1~17_sumout\ & ( !\ULA1|Add1~29_sumout\ & ( (\FLIPFLOP1|DOUT~1_combout\ & !\DECODER_INSTRU|saida~3_combout\) ) ) ) # ( !\ULA1|Add1~17_sumout\ & ( !\ULA1|Add1~29_sumout\ & ( (\FLIPFLOP1|DOUT~1_combout\ 
-- & ((!\DECODER_INSTRU|saida~3_combout\) # ((!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~25_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida~3_combout\,
	datae => \ULA1|ALT_INV_Add1~17_sumout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \FLIPFLOP1|DOUT~0_combout\);

-- Location: FF_X43_Y3_N1
\FLIPFLOP1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \FLIPFLOP1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIPFLOP1|DOUT~q\);

-- Location: LABCELL_X44_Y2_N18
\DESVIO1|Sel[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel[0]~1_combout\ = ( \DECODER_INSTRU|saida[1]~1_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~15_combout\ & (\FLIPFLOP1|DOUT~q\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~14_combout\))) # (\ROM1|memROM~15_combout\ & 
-- (((!\ROM1|memROM~11_combout\ & !\ROM1|memROM~14_combout\)))) ) ) ) # ( \DECODER_INSTRU|saida[1]~1_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000011000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLIPFLOP1|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \DESVIO1|Sel[0]~1_combout\);

-- Location: FF_X42_Y2_N47
\END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DECODER_INSTRU|saida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(5));

-- Location: MLABCELL_X42_Y3_N57
\MUX2|MUX_OUT[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[5]~7_combout\ = ( \END_RETORNO|DOUT\(5) & ( (!\DESVIO1|Sel[0]~1_combout\ & ((\incrementaPC|Add0~29_sumout\) # (\DESVIO1|Sel[1]~0_combout\))) ) ) # ( !\END_RETORNO|DOUT\(5) & ( (!\DESVIO1|Sel[0]~1_combout\ & (!\DESVIO1|Sel[1]~0_combout\ & 
-- \incrementaPC|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \END_RETORNO|ALT_INV_DOUT\(5),
	combout => \MUX2|MUX_OUT[5]~7_combout\);

-- Location: FF_X42_Y3_N59
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X42_Y3_N28
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X42_Y3_N9
\DECODER_INSTRU|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[1]~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & !\PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \DECODER_INSTRU|saida[1]~0_combout\);

-- Location: MLABCELL_X42_Y3_N39
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\DECODER_INSTRU|saida[1]~0_combout\) # (\PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~1_combout\);

-- Location: FF_X43_Y3_N29
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
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X43_Y3_N6
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & \RAM1|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X43_Y3_N21
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~147_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: FF_X43_Y2_N46
\REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT[0]~feeder_combout\,
	asdata => \ULA1|saida[0]~1_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y2_N3
\MUX_7SEG|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[0]~0_combout\ = ( \REGA|DOUT[0]~DUPLICATE_q\ & ( (\RAM1|ram~148_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT[0]~DUPLICATE_q\ & ( (!\SW[9]~input_o\ & \RAM1|ram~148_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MUX_7SEG|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N39
\MUX_7SEG|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[2]~2_combout\ = ( \REGA|DOUT[2]~DUPLICATE_q\ & ( (\RAM1|ram~152_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT[2]~DUPLICATE_q\ & ( (!\SW[9]~input_o\ & \RAM1|ram~152_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \MUX_7SEG|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X44_Y2_N30
\MUX_7SEG|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[1]~1_combout\ = ( \REGA|DOUT[1]~DUPLICATE_q\ & ( (\SW[9]~input_o\) # (\RAM1|ram~150_combout\) ) ) # ( !\REGA|DOUT[1]~DUPLICATE_q\ & ( (\RAM1|ram~150_combout\ & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~150_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \MUX_7SEG|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N6
\HEX0_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT[3]~DUPLICATE_q\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ $ (!\MUX_7SEG|saida_MUX[1]~1_combout\))) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \REGA|DOUT[3]~DUPLICATE_q\ & ( (!\MUX_7SEG|saida_MUX[2]~2_combout\ & (\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\RAM1|ram~146_combout\ $ (\MUX_7SEG|saida_MUX[1]~1_combout\)))) # (\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[1]~1_combout\ & 
-- (!\MUX_7SEG|saida_MUX[0]~0_combout\ $ (\RAM1|ram~146_combout\)))) ) ) ) # ( \SW[9]~input_o\ & ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( (!\MUX_7SEG|saida_MUX[1]~1_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ $ (!\MUX_7SEG|saida_MUX[2]~2_combout\))) ) ) ) # ( 
-- !\SW[9]~input_o\ & ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( (!\MUX_7SEG|saida_MUX[2]~2_combout\ & (\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\RAM1|ram~146_combout\ $ (\MUX_7SEG|saida_MUX[1]~1_combout\)))) # (\MUX_7SEG|saida_MUX[2]~2_combout\ & 
-- (!\MUX_7SEG|saida_MUX[1]~1_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ $ (\RAM1|ram~146_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100000100011001100000000001100001000001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N36
\MUX_7SEG|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[3]~3_combout\ = ( \REGA|DOUT[3]~DUPLICATE_q\ & ( (\RAM1|ram~146_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( (!\SW[9]~input_o\ & \RAM1|ram~146_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MUX_7SEG|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N12
\HEX0_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\)) # (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((\MUX_7SEG|saida_MUX[3]~3_combout\))) ) ) # ( 
-- !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( (\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ $ (!\MUX_7SEG|saida_MUX[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N15
\HEX0_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ & !\MUX_7SEG|saida_MUX[3]~3_combout\)) # (\MUX_7SEG|saida_MUX[2]~2_combout\ & 
-- ((\MUX_7SEG|saida_MUX[3]~3_combout\))) ) ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\ & \MUX_7SEG|saida_MUX[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y2_N54
\HEX0_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ & \MUX_7SEG|saida_MUX[3]~3_combout\)) # (\MUX_7SEG|saida_MUX[2]~2_combout\ & 
-- (\MUX_7SEG|saida_MUX[0]~0_combout\)) ) ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\MUX_7SEG|saida_MUX[3]~3_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ $ (!\MUX_7SEG|saida_MUX[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N48
\HEX0_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( !\MUX_7SEG|saida_MUX[3]~3_combout\ & ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT[0]~DUPLICATE_q\)) ) ) ) # ( 
-- \MUX_7SEG|saida_MUX[3]~3_combout\ & ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( (!\MUX_7SEG|saida_MUX[2]~2_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\MUX_7SEG|saida_MUX[3]~3_combout\ & ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( ((!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT[0]~DUPLICATE_q\))) # (\MUX_7SEG|saida_MUX[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101110111000011000100010000001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y2_N42
\HEX0_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT[3]~DUPLICATE_q\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\ & !\MUX_7SEG|saida_MUX[1]~1_combout\)) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \REGA|DOUT[3]~DUPLICATE_q\ & ( (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\RAM1|ram~146_combout\ & \MUX_7SEG|saida_MUX[1]~1_combout\))) # (\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\RAM1|ram~146_combout\ $ 
-- (((\MUX_7SEG|saida_MUX[2]~2_combout\ & !\MUX_7SEG|saida_MUX[1]~1_combout\))))) ) ) ) # ( \SW[9]~input_o\ & ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ & \MUX_7SEG|saida_MUX[1]~1_combout\)) # 
-- (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((!\MUX_7SEG|saida_MUX[2]~2_combout\) # (\MUX_7SEG|saida_MUX[1]~1_combout\))) ) ) ) # ( !\SW[9]~input_o\ & ( !\REGA|DOUT[3]~DUPLICATE_q\ & ( (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ & 
-- (!\RAM1|ram~146_combout\ & \MUX_7SEG|saida_MUX[1]~1_combout\))) # (\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\RAM1|ram~146_combout\ $ (((\MUX_7SEG|saida_MUX[2]~2_combout\ & !\MUX_7SEG|saida_MUX[1]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111010000010001001101110101000001110100000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y2_N57
\HEX0_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\ & !\MUX_7SEG|saida_MUX[3]~3_combout\)) ) ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[2]~2_combout\ & ((!\MUX_7SEG|saida_MUX[3]~3_combout\))) # (\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ & \MUX_7SEG|saida_MUX[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y3_N51
\MUX_7SEG|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[4]~4_combout\ = ( \RAM1|ram~156_combout\ & ( (!\SW[9]~input_o\) # (\REGA|DOUT\(4)) ) ) # ( !\RAM1|ram~156_combout\ & ( (\SW[9]~input_o\ & \REGA|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \REGA|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_ram~156_combout\,
	combout => \MUX_7SEG|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X41_Y3_N21
\MUX_7SEG|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[5]~5_combout\ = ( \REGA|DOUT[5]~DUPLICATE_q\ & ( (\RAM1|ram~158_combout\) # (\SW[9]~input_o\) ) ) # ( !\REGA|DOUT[5]~DUPLICATE_q\ & ( (!\SW[9]~input_o\ & \RAM1|ram~158_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \MUX_7SEG|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X41_Y3_N18
\MUX_7SEG|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[6]~6_combout\ = ( \RAM1|ram~160_combout\ & ( (!\SW[9]~input_o\) # (\REGA|DOUT\(6)) ) ) # ( !\RAM1|ram~160_combout\ & ( (\SW[9]~input_o\ & \REGA|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \REGA|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX_7SEG|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X41_Y3_N24
\HEX1_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \REGA|DOUT[7]~DUPLICATE_q\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\MUX_7SEG|saida_MUX[5]~5_combout\ & (!\MUX_7SEG|saida_MUX[4]~4_combout\ $ (((\SW[9]~input_o\) # (\RAM1|ram~154_combout\))))) ) ) ) # ( 
-- !\REGA|DOUT[7]~DUPLICATE_q\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\MUX_7SEG|saida_MUX[5]~5_combout\ & (!\MUX_7SEG|saida_MUX[4]~4_combout\ $ (((\RAM1|ram~154_combout\ & !\SW[9]~input_o\))))) ) ) ) # ( \REGA|DOUT[7]~DUPLICATE_q\ & ( 
-- !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & (!\MUX_7SEG|saida_MUX[5]~5_combout\ $ (((\SW[9]~input_o\) # (\RAM1|ram~154_combout\))))) ) ) ) # ( !\REGA|DOUT[7]~DUPLICATE_q\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( 
-- (\MUX_7SEG|saida_MUX[4]~4_combout\ & (!\MUX_7SEG|saida_MUX[5]~5_combout\ $ (((\RAM1|ram~154_combout\ & !\SW[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101010000010000010000010110010000101000001001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y3_N9
\MUX_7SEG|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[7]~7_combout\ = ( \SW[9]~input_o\ & ( \REGA|DOUT[7]~DUPLICATE_q\ ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~154_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \MUX_7SEG|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X41_Y3_N15
\HEX1_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\MUX_7SEG|saida_MUX[4]~4_combout\) # (\MUX_7SEG|saida_MUX[7]~7_combout\) ) ) ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( 
-- \MUX_7SEG|saida_MUX[6]~6_combout\ & ( !\MUX_7SEG|saida_MUX[4]~4_combout\ $ (!\MUX_7SEG|saida_MUX[7]~7_combout\) ) ) ) # ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & 
-- \MUX_7SEG|saida_MUX[7]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000101100110011001101011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y3_N42
\HEX1_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX_7SEG|saida_MUX[4]~4_combout\ & ( (\MUX_7SEG|saida_MUX[6]~6_combout\ & (\MUX_7SEG|saida_MUX[7]~7_combout\ & \MUX_7SEG|saida_MUX[5]~5_combout\)) ) ) # ( !\MUX_7SEG|saida_MUX[4]~4_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[6]~6_combout\ & (!\MUX_7SEG|saida_MUX[7]~7_combout\ & \MUX_7SEG|saida_MUX[5]~5_combout\)) # (\MUX_7SEG|saida_MUX[6]~6_combout\ & (\MUX_7SEG|saida_MUX[7]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y3_N45
\HEX1_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX_7SEG|saida_MUX[4]~4_combout\ & ( (!\MUX_7SEG|saida_MUX[6]~6_combout\ & (!\MUX_7SEG|saida_MUX[7]~7_combout\ & !\MUX_7SEG|saida_MUX[5]~5_combout\)) # (\MUX_7SEG|saida_MUX[6]~6_combout\ & 
-- ((\MUX_7SEG|saida_MUX[5]~5_combout\))) ) ) # ( !\MUX_7SEG|saida_MUX[4]~4_combout\ & ( (!\MUX_7SEG|saida_MUX[6]~6_combout\ & (\MUX_7SEG|saida_MUX[7]~7_combout\ & \MUX_7SEG|saida_MUX[5]~5_combout\)) # (\MUX_7SEG|saida_MUX[6]~6_combout\ & 
-- (!\MUX_7SEG|saida_MUX[7]~7_combout\ & !\MUX_7SEG|saida_MUX[5]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y3_N0
\HEX1_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \REGA|DOUT\(4) & ( \RAM1|ram~156_combout\ & ( (!\MUX_7SEG|saida_MUX[7]~7_combout\) # ((!\MUX_7SEG|saida_MUX[6]~6_combout\ & !\MUX_7SEG|saida_MUX[5]~5_combout\)) ) ) ) # ( !\REGA|DOUT\(4) & ( 
-- \RAM1|ram~156_combout\ & ( (!\MUX_7SEG|saida_MUX[5]~5_combout\ & ((!\MUX_7SEG|saida_MUX[6]~6_combout\ & ((!\SW[9]~input_o\))) # (\MUX_7SEG|saida_MUX[6]~6_combout\ & (!\MUX_7SEG|saida_MUX[7]~7_combout\)))) # (\MUX_7SEG|saida_MUX[5]~5_combout\ & 
-- (((!\MUX_7SEG|saida_MUX[7]~7_combout\ & !\SW[9]~input_o\)))) ) ) ) # ( \REGA|DOUT\(4) & ( !\RAM1|ram~156_combout\ & ( (!\MUX_7SEG|saida_MUX[5]~5_combout\ & ((!\MUX_7SEG|saida_MUX[6]~6_combout\ & ((\SW[9]~input_o\))) # (\MUX_7SEG|saida_MUX[6]~6_combout\ & 
-- (!\MUX_7SEG|saida_MUX[7]~7_combout\)))) # (\MUX_7SEG|saida_MUX[5]~5_combout\ & (((!\MUX_7SEG|saida_MUX[7]~7_combout\ & \SW[9]~input_o\)))) ) ) ) # ( !\REGA|DOUT\(4) & ( !\RAM1|ram~156_combout\ & ( (\MUX_7SEG|saida_MUX[6]~6_combout\ & 
-- (!\MUX_7SEG|saida_MUX[7]~7_combout\ & !\MUX_7SEG|saida_MUX[5]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000001110110011101100010000001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \REGA|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_ram~156_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y3_N54
\HEX1_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \REGA|DOUT[7]~DUPLICATE_q\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & (!\MUX_7SEG|saida_MUX[5]~5_combout\ $ (((!\RAM1|ram~154_combout\ & !\SW[9]~input_o\))))) ) ) ) # ( 
-- !\REGA|DOUT[7]~DUPLICATE_q\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & (!\MUX_7SEG|saida_MUX[5]~5_combout\ $ (((!\RAM1|ram~154_combout\) # (\SW[9]~input_o\))))) ) ) ) # ( \REGA|DOUT[7]~DUPLICATE_q\ & ( 
-- !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\RAM1|ram~154_combout\ & (!\SW[9]~input_o\ & ((\MUX_7SEG|saida_MUX[5]~5_combout\) # (\MUX_7SEG|saida_MUX[4]~4_combout\)))) ) ) ) # ( !\REGA|DOUT[7]~DUPLICATE_q\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[4]~4_combout\ & (\MUX_7SEG|saida_MUX[5]~5_combout\ & ((!\RAM1|ram~154_combout\) # (\SW[9]~input_o\)))) # (\MUX_7SEG|saida_MUX[4]~4_combout\ & ((!\RAM1|ram~154_combout\) # ((\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001011111010011000000000000010100000001010001010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y3_N36
\HEX1_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[7]~7_combout\ & ( (\MUX_7SEG|saida_MUX[6]~6_combout\ & !\MUX_7SEG|saida_MUX[4]~4_combout\) ) ) ) # ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( 
-- !\MUX_7SEG|saida_MUX[7]~7_combout\ & ( (\MUX_7SEG|saida_MUX[6]~6_combout\ & \MUX_7SEG|saida_MUX[4]~4_combout\) ) ) ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( !\MUX_7SEG|saida_MUX[7]~7_combout\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000001010000010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y1_N36
\HEX2_SEVENSEG|rascSaida7seg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\ = ( \PC|DOUT\(2) & ( !\PC|DOUT\(8) & ( (\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(3) & \DECODER_INSTRU|saida[1]~0_combout\))) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(8) & ( 
-- (!\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(3) & \DECODER_INSTRU|saida[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\);

-- Location: LABCELL_X43_Y1_N30
\HEX2_SEVENSEG|rascSaida7seg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~7_combout\))))) # (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ 
-- & (((!\ROM1|memROM~7_combout\) # (!\ROM1|memROM~1_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) ) # ( !\ROM1|memROM~3_combout\ & ( (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & (\ROM1|memROM~7_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110111010110011111011101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\);

-- Location: LABCELL_X43_Y1_N21
\HEX2_SEVENSEG|rascSaida7seg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\) # ((!\ROM1|memROM~3_combout\) # (\ROM1|memROM~1_combout\)) ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~1_combout\ & 
-- ((!\ROM1|memROM~3_combout\))) # (\ROM1|memROM~1_combout\ & ((!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\) # (\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001111100011111000111110001111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\);

-- Location: LABCELL_X41_Y3_N48
\HEX2_SEVENSEG|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\ = ( \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)) # (\ROM1|memROM~5_combout\ & ((\ROM1|memROM~3_combout\))) ) ) # ( 
-- !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ $ (!\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\);

-- Location: MLABCELL_X42_Y1_N30
\HEX2_SEVENSEG|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\ = ( !\PC|DOUT\(8) & ( (!\ROM1|memROM~10_combout\ & (((\ROM1|memROM~9_combout\ & \ROM1|memROM~7_combout\)))) # (\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~8_combout\ & (\ROM1|memROM~9_combout\)) # 
-- (\ROM1|memROM~8_combout\ & ((\ROM1|memROM~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000011111000000100001111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\);

-- Location: MLABCELL_X42_Y1_N24
\HEX2_SEVENSEG|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~2_combout\ & (\DECODER_INSTRU|saida[1]~0_combout\ & (!\ROM1|memROM~6_combout\ & !\PC|DOUT\(8)))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( 
-- \ROM1|memROM~4_combout\ & ( (\DECODER_INSTRU|saida[1]~0_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~6_combout\)))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & 
-- (\DECODER_INSTRU|saida[1]~0_combout\ & (\ROM1|memROM~6_combout\ & !\PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000100011000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\);

-- Location: LABCELL_X43_Y1_N27
\HEX2_SEVENSEG|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\ = ( \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\)) ) ) # ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (!\ROM1|memROM~3_combout\ 
-- & (((\ROM1|memROM~1_combout\)))) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~7_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110000111100001011000011110000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\);

-- Location: MLABCELL_X42_Y1_N51
\MUX_7SEG|saida_MUX[18]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[18]~10_combout\ = ( \RAM1|ram~152_combout\ & ( (\SW[9]~input_o\) # (\PC|DOUT\(2)) ) ) # ( !\RAM1|ram~152_combout\ & ( (\PC|DOUT\(2) & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_7SEG|saida_MUX[18]~10_combout\);

-- Location: MLABCELL_X42_Y1_N42
\MUX_7SEG|saida_MUX[17]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[17]~9_combout\ = ( \RAM1|ram~150_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\) # (\SW[9]~input_o\) ) ) # ( !\RAM1|ram~150_combout\ & ( (!\SW[9]~input_o\ & \PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \MUX_7SEG|saida_MUX[17]~9_combout\);

-- Location: MLABCELL_X42_Y1_N45
\MUX_7SEG|saida_MUX[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[16]~8_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\SW[9]~input_o\) # (\RAM1|ram~148_combout\) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\SW[9]~input_o\ & \RAM1|ram~148_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MUX_7SEG|saida_MUX[16]~8_combout\);

-- Location: LABCELL_X43_Y1_N6
\HEX4_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \MUX_7SEG|saida_MUX[16]~8_combout\ & ( \SW[9]~input_o\ & ( (!\RAM1|ram~146_combout\ & (!\MUX_7SEG|saida_MUX[18]~10_combout\ & !\MUX_7SEG|saida_MUX[17]~9_combout\)) # (\RAM1|ram~146_combout\ & 
-- (!\MUX_7SEG|saida_MUX[18]~10_combout\ $ (!\MUX_7SEG|saida_MUX[17]~9_combout\))) ) ) ) # ( !\MUX_7SEG|saida_MUX[16]~8_combout\ & ( \SW[9]~input_o\ & ( (!\RAM1|ram~146_combout\ & (\MUX_7SEG|saida_MUX[18]~10_combout\ & !\MUX_7SEG|saida_MUX[17]~9_combout\)) ) 
-- ) ) # ( \MUX_7SEG|saida_MUX[16]~8_combout\ & ( !\SW[9]~input_o\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\MUX_7SEG|saida_MUX[18]~10_combout\ & !\MUX_7SEG|saida_MUX[17]~9_combout\)) # (\PC|DOUT[3]~DUPLICATE_q\ & (!\MUX_7SEG|saida_MUX[18]~10_combout\ $ 
-- (!\MUX_7SEG|saida_MUX[17]~9_combout\))) ) ) ) # ( !\MUX_7SEG|saida_MUX[16]~8_combout\ & ( !\SW[9]~input_o\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\MUX_7SEG|saida_MUX[18]~10_combout\ & !\MUX_7SEG|saida_MUX[17]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000110000110011000000001010000000001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y1_N0
\MUX_7SEG|saida_MUX[19]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[19]~11_combout\ = ( \RAM1|ram~146_combout\ & ( (\SW[9]~input_o\) # (\PC|DOUT\(3)) ) ) # ( !\RAM1|ram~146_combout\ & ( (\PC|DOUT\(3) & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX_7SEG|saida_MUX[19]~11_combout\);

-- Location: MLABCELL_X42_Y1_N54
\HEX4_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX_7SEG|saida_MUX[17]~9_combout\ & ( (!\MUX_7SEG|saida_MUX[16]~8_combout\ & (\MUX_7SEG|saida_MUX[18]~10_combout\)) # (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((\MUX_7SEG|saida_MUX[19]~11_combout\))) ) ) # ( 
-- !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( (\MUX_7SEG|saida_MUX[18]~10_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ $ (!\MUX_7SEG|saida_MUX[19]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y1_N57
\HEX4_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ = (!\MUX_7SEG|saida_MUX[18]~10_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ & (\MUX_7SEG|saida_MUX[17]~9_combout\ & !\MUX_7SEG|saida_MUX[19]~11_combout\))) # (\MUX_7SEG|saida_MUX[18]~10_combout\ & 
-- (\MUX_7SEG|saida_MUX[19]~11_combout\ & ((!\MUX_7SEG|saida_MUX[16]~8_combout\) # (\MUX_7SEG|saida_MUX[17]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000101000010000100010100001000010001010000100001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y1_N18
\HEX4_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX_7SEG|saida_MUX[17]~9_combout\ & ( (!\MUX_7SEG|saida_MUX[16]~8_combout\ & (\MUX_7SEG|saida_MUX[19]~11_combout\ & !\MUX_7SEG|saida_MUX[18]~10_combout\)) # (\MUX_7SEG|saida_MUX[16]~8_combout\ & 
-- ((\MUX_7SEG|saida_MUX[18]~10_combout\))) ) ) # ( !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( (!\MUX_7SEG|saida_MUX[19]~11_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ $ (!\MUX_7SEG|saida_MUX[18]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y1_N12
\HEX4_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~148_combout\ & ( (!\MUX_7SEG|saida_MUX[19]~11_combout\) # ((!\MUX_7SEG|saida_MUX[18]~10_combout\ & !\MUX_7SEG|saida_MUX[17]~9_combout\)) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \RAM1|ram~148_combout\ & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & ((!\MUX_7SEG|saida_MUX[18]~10_combout\ & (\PC|DOUT[0]~DUPLICATE_q\)) # (\MUX_7SEG|saida_MUX[18]~10_combout\ & ((!\MUX_7SEG|saida_MUX[19]~11_combout\))))) # 
-- (\MUX_7SEG|saida_MUX[17]~9_combout\ & (\PC|DOUT[0]~DUPLICATE_q\ & ((!\MUX_7SEG|saida_MUX[19]~11_combout\)))) ) ) ) # ( \SW[9]~input_o\ & ( !\RAM1|ram~148_combout\ & ( (\MUX_7SEG|saida_MUX[18]~10_combout\ & (!\MUX_7SEG|saida_MUX[19]~11_combout\ & 
-- !\MUX_7SEG|saida_MUX[17]~9_combout\)) ) ) ) # ( !\SW[9]~input_o\ & ( !\RAM1|ram~148_combout\ & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & ((!\MUX_7SEG|saida_MUX[18]~10_combout\ & (\PC|DOUT[0]~DUPLICATE_q\)) # (\MUX_7SEG|saida_MUX[18]~10_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[19]~11_combout\))))) # (\MUX_7SEG|saida_MUX[17]~9_combout\ & (\PC|DOUT[0]~DUPLICATE_q\ & ((!\MUX_7SEG|saida_MUX[19]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001010000001100000000000001110100010100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y1_N6
\HEX4_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \SW[9]~input_o\ & ( \PC|DOUT\(3) & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (\MUX_7SEG|saida_MUX[16]~8_combout\ & (!\RAM1|ram~146_combout\ $ (\MUX_7SEG|saida_MUX[18]~10_combout\)))) # 
-- (\MUX_7SEG|saida_MUX[17]~9_combout\ & (!\RAM1|ram~146_combout\ & ((!\MUX_7SEG|saida_MUX[18]~10_combout\) # (\MUX_7SEG|saida_MUX[16]~8_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( \PC|DOUT\(3) & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & 
-- (\MUX_7SEG|saida_MUX[18]~10_combout\ & \MUX_7SEG|saida_MUX[16]~8_combout\)) ) ) ) # ( \SW[9]~input_o\ & ( !\PC|DOUT\(3) & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (\MUX_7SEG|saida_MUX[16]~8_combout\ & (!\RAM1|ram~146_combout\ $ 
-- (\MUX_7SEG|saida_MUX[18]~10_combout\)))) # (\MUX_7SEG|saida_MUX[17]~9_combout\ & (!\RAM1|ram~146_combout\ & ((!\MUX_7SEG|saida_MUX[18]~10_combout\) # (\MUX_7SEG|saida_MUX[16]~8_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( !\PC|DOUT\(3) & ( 
-- (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (!\MUX_7SEG|saida_MUX[18]~10_combout\ & \MUX_7SEG|saida_MUX[16]~8_combout\)) # (\MUX_7SEG|saida_MUX[17]~9_combout\ & ((!\MUX_7SEG|saida_MUX[18]~10_combout\) # (\MUX_7SEG|saida_MUX[16]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001000001010011000000000000011000010000010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y1_N3
\HEX4_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX_7SEG|saida_MUX[18]~10_combout\ & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ & \MUX_7SEG|saida_MUX[19]~11_combout\)) # (\MUX_7SEG|saida_MUX[17]~9_combout\ & 
-- (\MUX_7SEG|saida_MUX[16]~8_combout\ & !\MUX_7SEG|saida_MUX[19]~11_combout\)) ) ) # ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & ( (!\MUX_7SEG|saida_MUX[17]~9_combout\ & !\MUX_7SEG|saida_MUX[19]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y2_N24
\MUX_7SEG|saida_MUX[21]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[21]~13_combout\ = ( \SW[9]~input_o\ & ( \RAM1|ram~158_combout\ ) ) # ( !\SW[9]~input_o\ & ( \RAM1|ram~158_combout\ & ( \PC|DOUT[5]~DUPLICATE_q\ ) ) ) # ( !\SW[9]~input_o\ & ( !\RAM1|ram~158_combout\ & ( \PC|DOUT[5]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX_7SEG|saida_MUX[21]~13_combout\);

-- Location: LABCELL_X41_Y2_N15
\MUX_7SEG|saida_MUX[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[22]~14_combout\ = ( \PC|DOUT[6]~DUPLICATE_q\ & ( \SW[9]~input_o\ & ( \RAM1|ram~160_combout\ ) ) ) # ( !\PC|DOUT[6]~DUPLICATE_q\ & ( \SW[9]~input_o\ & ( \RAM1|ram~160_combout\ ) ) ) # ( \PC|DOUT[6]~DUPLICATE_q\ & ( !\SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX_7SEG|saida_MUX[22]~14_combout\);

-- Location: MLABCELL_X42_Y2_N12
\MUX_7SEG|saida_MUX[20]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[20]~12_combout\ = ( \PC|DOUT\(4) & ( (!\SW[9]~input_o\) # (\RAM1|ram~156_combout\) ) ) # ( !\PC|DOUT\(4) & ( (\RAM1|ram~156_combout\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \MUX_7SEG|saida_MUX[20]~12_combout\);

-- Location: LABCELL_X41_Y2_N18
\HEX5_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( \PC|DOUT\(7) & ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (!\MUX_7SEG|saida_MUX[22]~14_combout\ $ (((!\SW[9]~input_o\) # (\RAM1|ram~154_combout\))))) # 
-- (\MUX_7SEG|saida_MUX[21]~13_combout\ & (!\MUX_7SEG|saida_MUX[22]~14_combout\ & ((!\SW[9]~input_o\) # (\RAM1|ram~154_combout\)))) ) ) ) # ( !\PC|DOUT\(7) & ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\MUX_7SEG|saida_MUX[21]~13_combout\ & 
-- (!\MUX_7SEG|saida_MUX[22]~14_combout\ $ (((\SW[9]~input_o\ & \RAM1|ram~154_combout\))))) # (\MUX_7SEG|saida_MUX[21]~13_combout\ & (\SW[9]~input_o\ & (\RAM1|ram~154_combout\ & !\MUX_7SEG|saida_MUX[22]~14_combout\))) ) ) ) # ( \PC|DOUT\(7) & ( 
-- !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( (\SW[9]~input_o\ & (!\RAM1|ram~154_combout\ & (!\MUX_7SEG|saida_MUX[21]~13_combout\ & \MUX_7SEG|saida_MUX[22]~14_combout\))) ) ) ) # ( !\PC|DOUT\(7) & ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (\MUX_7SEG|saida_MUX[22]~14_combout\ & ((!\SW[9]~input_o\) # (!\RAM1|ram~154_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000100000011100001000100000100101110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N51
\MUX_7SEG|saida_MUX[23]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[23]~15_combout\ = ( \PC|DOUT\(7) & ( \SW[9]~input_o\ & ( \RAM1|ram~154_combout\ ) ) ) # ( !\PC|DOUT\(7) & ( \SW[9]~input_o\ & ( \RAM1|ram~154_combout\ ) ) ) # ( \PC|DOUT\(7) & ( !\SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \MUX_7SEG|saida_MUX[23]~15_combout\);

-- Location: MLABCELL_X42_Y2_N24
\HEX5_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ = ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (!\MUX_7SEG|saida_MUX[23]~15_combout\ & \MUX_7SEG|saida_MUX[22]~14_combout\)) # (\MUX_7SEG|saida_MUX[21]~13_combout\ & 
-- (\MUX_7SEG|saida_MUX[23]~15_combout\)) ) ) # ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( (\MUX_7SEG|saida_MUX[22]~14_combout\ & ((\MUX_7SEG|saida_MUX[23]~15_combout\) # (\MUX_7SEG|saida_MUX[21]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N6
\HEX5_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ = ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (\MUX_7SEG|saida_MUX[21]~13_combout\ & (\MUX_7SEG|saida_MUX[22]~14_combout\ & \MUX_7SEG|saida_MUX[23]~15_combout\)) ) ) # ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[22]~14_combout\ & (\MUX_7SEG|saida_MUX[21]~13_combout\ & !\MUX_7SEG|saida_MUX[23]~15_combout\)) # (\MUX_7SEG|saida_MUX[22]~14_combout\ & ((\MUX_7SEG|saida_MUX[23]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N18
\HEX5_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ = ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( \MUX_7SEG|saida_MUX[22]~14_combout\ ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[22]~14_combout\ & !\MUX_7SEG|saida_MUX[23]~15_combout\) ) ) ) # ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\MUX_7SEG|saida_MUX[22]~14_combout\ & \MUX_7SEG|saida_MUX[23]~15_combout\) ) ) ) # ( 
-- !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( (\MUX_7SEG|saida_MUX[22]~14_combout\ & !\MUX_7SEG|saida_MUX[23]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011000000110011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N33
\HEX5_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( \RAM1|ram~156_combout\ & ( (!\MUX_7SEG|saida_MUX[23]~15_combout\ & ((\PC|DOUT\(4)) # (\SW[9]~input_o\))) ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( 
-- \RAM1|ram~156_combout\ & ( (!\MUX_7SEG|saida_MUX[22]~14_combout\ & (((\PC|DOUT\(4))) # (\SW[9]~input_o\))) # (\MUX_7SEG|saida_MUX[22]~14_combout\ & (((!\MUX_7SEG|saida_MUX[23]~15_combout\)))) ) ) ) # ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( 
-- !\RAM1|ram~156_combout\ & ( (!\SW[9]~input_o\ & (\PC|DOUT\(4) & !\MUX_7SEG|saida_MUX[23]~15_combout\)) ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\RAM1|ram~156_combout\ & ( (!\MUX_7SEG|saida_MUX[22]~14_combout\ & (!\SW[9]~input_o\ & 
-- (\PC|DOUT\(4)))) # (\MUX_7SEG|saida_MUX[22]~14_combout\ & (((!\MUX_7SEG|saida_MUX[23]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001000000010100000000001111111010011000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \RAM1|ALT_INV_ram~156_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N39
\HEX5_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \RAM1|ram~154_combout\ & ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\SW[9]~input_o\ & (!\PC|DOUT\(7) $ (((\MUX_7SEG|saida_MUX[22]~14_combout\ & !\MUX_7SEG|saida_MUX[21]~13_combout\))))) # (\SW[9]~input_o\ & 
-- (((\MUX_7SEG|saida_MUX[22]~14_combout\ & !\MUX_7SEG|saida_MUX[21]~13_combout\)))) ) ) ) # ( !\RAM1|ram~154_combout\ & ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\SW[9]~input_o\ & (!\PC|DOUT\(7) $ (((\MUX_7SEG|saida_MUX[22]~14_combout\ & 
-- !\MUX_7SEG|saida_MUX[21]~13_combout\))))) # (\SW[9]~input_o\ & (((!\MUX_7SEG|saida_MUX[22]~14_combout\) # (\MUX_7SEG|saida_MUX[21]~13_combout\)))) ) ) ) # ( \RAM1|ram~154_combout\ & ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\SW[9]~input_o\ & 
-- (!\PC|DOUT\(7) & (!\MUX_7SEG|saida_MUX[22]~14_combout\ & \MUX_7SEG|saida_MUX[21]~13_combout\))) ) ) ) # ( !\RAM1|ram~154_combout\ & ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\MUX_7SEG|saida_MUX[22]~14_combout\ & (\MUX_7SEG|saida_MUX[21]~13_combout\ & 
-- ((!\PC|DOUT\(7)) # (\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010000000000001000000011010010110111011000011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datae => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N42
\HEX5_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ = ( \MUX_7SEG|saida_MUX[20]~12_combout\ & ( (!\MUX_7SEG|saida_MUX[23]~15_combout\ & (!\MUX_7SEG|saida_MUX[22]~14_combout\ $ (\MUX_7SEG|saida_MUX[21]~13_combout\))) ) ) # ( !\MUX_7SEG|saida_MUX[20]~12_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (!\MUX_7SEG|saida_MUX[23]~15_combout\ $ (\MUX_7SEG|saida_MUX[22]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y1_N45
\DECODER_INSTRU|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[1]~2_combout\ = ( \DECODER_INSTRU|saida[1]~1_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~14_combout\ & ((\ROM1|memROM~11_combout\) # (\ROM1|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	combout => \DECODER_INSTRU|saida[1]~2_combout\);

-- Location: LABCELL_X43_Y1_N48
\DECODER_INSTRU|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[6]~7_combout\ = ( \DECODER_INSTRU|saida[1]~1_combout\ & ( ((!\ROM1|memROM~14_combout\) # ((\ROM1|memROM~12_combout\) # (\ROM1|memROM~11_combout\))) # (\ROM1|memROM~13_combout\) ) ) # ( !\DECODER_INSTRU|saida[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	combout => \DECODER_INSTRU|saida[6]~7_combout\);

-- Location: LABCELL_X43_Y1_N12
\DECODER_INSTRU|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal3~0_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \DECODER_INSTRU|Equal3~0_combout\);

-- Location: LABCELL_X43_Y1_N36
\DECODER_INSTRU|saida~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~9_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~11_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\DECODER_INSTRU|saida[1]~0_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida~9_combout\);

-- Location: LABCELL_X43_Y1_N39
\DECODER_INSTRU|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal4~0_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~11_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~12_combout\ & \DECODER_INSTRU|saida[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DECODER_INSTRU|Equal4~0_combout\);

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

-- Location: LABCELL_X25_Y41_N0
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


