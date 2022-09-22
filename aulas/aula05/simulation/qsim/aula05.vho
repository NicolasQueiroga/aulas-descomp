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

-- DATE "09/21/2022 21:32:14"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	DECODER_CMD : OUT std_logic_vector(11 DOWNTO 0)
	);
END Aula05;

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
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~8_combout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[1]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[5]~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[4]~5_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida~3_combout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~1_combout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \DESVIO1|Sel[0]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[4]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[5]~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[1]~1_combout\ : std_logic;
SIGNAL \DESVIO1|Sel[1]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[7]~5_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|MUX_OUT[8]~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[5]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[2]~2_combout\ : std_logic;
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
SIGNAL \MUX_7SEG|saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \MUX_7SEG|saida_MUX[22]~14_combout\ : std_logic;
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
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \FLIPFLOP1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DESVIO1|ALT_INV_Sel[0]~1_combout\ : std_logic;
SIGNAL \FLIPFLOP1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_Sel[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[6]~7_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

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
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\FLIPFLOP1|ALT_INV_DOUT~1_combout\ <= NOT \FLIPFLOP1|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\DECODER_INSTRU|ALT_INV_saida[5]~10_combout\ <= NOT \DECODER_INSTRU|saida[5]~10_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\END_RETORNO|ALT_INV_DOUT\(4) <= NOT \END_RETORNO|DOUT\(4);
\END_RETORNO|ALT_INV_DOUT\(5) <= NOT \END_RETORNO|DOUT\(5);
\END_RETORNO|ALT_INV_DOUT\(6) <= NOT \END_RETORNO|DOUT\(6);
\END_RETORNO|ALT_INV_DOUT\(7) <= NOT \END_RETORNO|DOUT\(7);
\END_RETORNO|ALT_INV_DOUT\(3) <= NOT \END_RETORNO|DOUT\(3);
\END_RETORNO|ALT_INV_DOUT\(2) <= NOT \END_RETORNO|DOUT\(2);
\END_RETORNO|ALT_INV_DOUT\(1) <= NOT \END_RETORNO|DOUT\(1);
\END_RETORNO|ALT_INV_DOUT\(0) <= NOT \END_RETORNO|DOUT\(0);
\DESVIO1|ALT_INV_Sel[0]~1_combout\ <= NOT \DESVIO1|Sel[0]~1_combout\;
\FLIPFLOP1|ALT_INV_DOUT~q\ <= NOT \FLIPFLOP1|DOUT~q\;
\DESVIO1|ALT_INV_Sel[1]~0_combout\ <= NOT \DESVIO1|Sel[1]~0_combout\;
\END_RETORNO|ALT_INV_DOUT\(8) <= NOT \END_RETORNO|DOUT\(8);
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\DECODER_INSTRU|ALT_INV_saida[6]~7_combout\ <= NOT \DECODER_INSTRU|saida[6]~7_combout\;
\DECODER_INSTRU|ALT_INV_saida[5]~6_combout\ <= NOT \DECODER_INSTRU|saida[5]~6_combout\;
\DECODER_INSTRU|ALT_INV_saida[4]~5_combout\ <= NOT \DECODER_INSTRU|saida[4]~5_combout\;
\DECODER_INSTRU|ALT_INV_saida[3]~4_combout\ <= NOT \DECODER_INSTRU|saida[3]~4_combout\;
\DECODER_INSTRU|ALT_INV_saida~3_combout\ <= NOT \DECODER_INSTRU|saida~3_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\DECODER_INSTRU|ALT_INV_saida[1]~1_combout\ <= NOT \DECODER_INSTRU|saida[1]~1_combout\;
\DECODER_INSTRU|ALT_INV_Equal5~0_combout\ <= NOT \DECODER_INSTRU|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\ <= NOT \MUX_7SEG|saida_MUX[23]~15_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\ <= NOT \MUX_7SEG|saida_MUX[22]~14_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\ <= NOT \MUX_7SEG|saida_MUX[21]~13_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\ <= NOT \MUX_7SEG|saida_MUX[20]~12_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\ <= NOT \MUX_7SEG|saida_MUX[19]~11_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\ <= NOT \MUX_7SEG|saida_MUX[18]~10_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\ <= NOT \MUX_7SEG|saida_MUX[17]~9_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\ <= NOT \MUX_7SEG|saida_MUX[16]~8_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[2]~3_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX_7SEG|saida_MUX[7]~7_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX_7SEG|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX_7SEG|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX_7SEG|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_7SEG|saida_MUX[3]~3_combout\;
\MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX_7SEG|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX_7SEG|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX_7SEG|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\ <= NOT \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\DECODER_INSTRU|ALT_INV_saida[1]~0_combout\ <= NOT \DECODER_INSTRU|saida[1]~0_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

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
	o => \PC_OUT[5]~output_o\);

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
	o => \PC_OUT[6]~output_o\);

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
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

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
	o => \DECODER_CMD[0]~output_o\);

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
	o => \DECODER_CMD[1]~output_o\);

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
	o => \DECODER_CMD[2]~output_o\);

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
	o => \DECODER_CMD[3]~output_o\);

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
	o => \DECODER_CMD[4]~output_o\);

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
	o => \DECODER_CMD[5]~output_o\);

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
	o => \DECODER_CMD[6]~output_o\);

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
	o => \DECODER_CMD[7]~output_o\);

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
	o => \DECODER_CMD[8]~output_o\);

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
	o => \DECODER_CMD[9]~output_o\);

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
	o => \DECODER_CMD[10]~output_o\);

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
	o => \DECODER_CMD[11]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

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

\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\gravar:detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ((!\ROM1|memROM~0_combout\) # (!\DECODER_INSTRU|saida[1]~0_combout\)) # (\PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \ROM1|memROM~1_combout\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

\DECODER_INSTRU|saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~8_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (!\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida~8_combout\);

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

\MUX2|MUX_OUT[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[3]~4_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & ((!\ROM1|memROM~1_combout\) # ((!\DESVIO1|Sel[0]~1_combout\)))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(3))))) ) ) # ( 
-- !\incrementaPC|Add0~17_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (!\ROM1|memROM~1_combout\ & (\DESVIO1|Sel[0]~1_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(3),
	datae => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX2|MUX_OUT[3]~4_combout\);

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

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~3_combout\);

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

\MUX2|MUX_OUT[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[2]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (((!\DESVIO1|Sel[0]~1_combout\)) # (\ROM1|memROM~3_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(2))))) ) ) # ( 
-- !\incrementaPC|Add0~13_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\ROM1|memROM~3_combout\ & (\DESVIO1|Sel[0]~1_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(2),
	datae => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|MUX_OUT[2]~3_combout\);

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

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\HEX2_SEVENSEG|rascSaida7seg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ = (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & \ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\);

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

\MUX2|MUX_OUT[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[1]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (((!\DESVIO1|Sel[0]~1_combout\)) # (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(1))))) ) ) # ( 
-- !\incrementaPC|Add0~9_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & (\DESVIO1|Sel[0]~1_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(1),
	datae => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|MUX_OUT[1]~2_combout\);

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

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & \ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~15_combout\);

\DECODER_INSTRU|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[5]~10_combout\ = (\DECODER_INSTRU|saida[1]~1_combout\ & (!\ROM1|memROM~14_combout\ $ (((!\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000000101010100000000010101010000000001010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida[5]~10_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\DECODER_INSTRU|saida[1]~0_combout\) # (!\ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~16_combout\);

\DECODER_INSTRU|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal5~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (!\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|Equal5~0_combout\);

\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \DECODER_INSTRU|Equal5~0_combout\ & ( \RAM1|process_0~0_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datae => \DECODER_INSTRU|ALT_INV_Equal5~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~161_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~145_combout\);

\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~146_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\ROM1|memROM~0_combout\) # (!\DECODER_INSTRU|saida[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\DECODER_INSTRU|saida[1]~0_combout\) # (!\ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\DECODER_INSTRU|saida[1]~0_combout\) # (!\ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\DECODER_INSTRU|saida[1]~0_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~7_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~7_combout\))) ) + ( \REGA|DOUT\(0) ) + ( !VCC ))
-- \ULA1|Add0~6\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~7_combout\))) ) + ( \REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\DECODER_INSTRU|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[4]~5_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\))) ) ) ) # ( !\ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (!\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida[4]~5_combout\);

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

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((!\ROM1|memROM~7_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~148_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((!\ROM1|memROM~7_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~148_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\ROM1|memROM~5_combout\))) ) ) # ( 
-- !\ULA1|Add1~5_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~148_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100111111010100000011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~148_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datae => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[0]~1_combout\);

\DECODER_INSTRU|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[3]~4_combout\ = ( !\ROM1|memROM~14_combout\ & ( (\DECODER_INSTRU|saida[1]~1_combout\ & (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida[3]~4_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[0]~1_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~147_combout\);

\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~147_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~148_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & (!\ROM1|memROM~10_combout\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & (!\ROM1|memROM~10_combout\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~10_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~150_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~10_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~150_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\))) ) 
-- ) # ( !\ULA1|Add1~9_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~150_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100111111010100000011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datab => \RAM1|ALT_INV_ram~150_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[1]~2_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[1]~2_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~149_combout\);

\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~149_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~150_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~8_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~8_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~8_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((!\RAM1|ram~152_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (((\ROM1|memROM~8_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\ROM1|memROM~3_combout\))) ) ) # ( 
-- !\ULA1|Add1~13_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100111111010100000011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \RAM1|ALT_INV_ram~152_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[2]~3_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[2]~3_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~151_combout\);

\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~151_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~152_combout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~146_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~9_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~2\ = CARRY(( (!\DECODER_INSTRU|saida[5]~6_combout\ & (((\RAM1|ram~146_combout\)))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~9_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (\RAM1|ram~156_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~22\ = CARRY(( (\RAM1|ram~156_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\DECODER_INSTRU|saida[5]~10_combout\ & (((!\RAM1|ram~146_combout\)))) # (\DECODER_INSTRU|saida[5]~10_combout\ & ((!\ROM1|memROM~15_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~15_combout\ & 
-- ((!\RAM1|ram~146_combout\))))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\DECODER_INSTRU|saida[5]~10_combout\ & (((!\RAM1|ram~146_combout\)))) # (\DECODER_INSTRU|saida[5]~10_combout\ & ((!\ROM1|memROM~15_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~15_combout\ & ((!\RAM1|ram~146_combout\))))) 
-- ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|ram~156_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & !\ROM1|memROM~15_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\RAM1|ram~156_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & !\ROM1|memROM~15_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = (!\DECODER_INSTRU|saida[4]~5_combout\ & \ULA1|Add1~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[4]~5_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[4]~5_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~155_combout\);

\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~156_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (\RAM1|ram~158_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (\RAM1|ram~158_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~158_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~158_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = (!\DECODER_INSTRU|saida[4]~5_combout\ & \ULA1|Add1~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datab => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[5]~6_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~157_combout\);

\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~158_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (\RAM1|ram~160_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( (\RAM1|ram~160_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|ram~160_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( (!\RAM1|ram~160_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = (!\DECODER_INSTRU|saida[4]~5_combout\ & \ULA1|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datab => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[6]~7_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~159_combout\);

\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~160_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (\RAM1|ram~154_combout\ & ((!\DECODER_INSTRU|saida[5]~10_combout\) # ((!\PC|DOUT\(8) & !\ROM1|memROM~16_combout\)))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~17_sumout\);

\ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~4_combout\ = (!\DECODER_INSTRU|saida[4]~5_combout\ & \ULA1|Add1~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datab => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[7]~4_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[7]~4_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~153_combout\);

\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( \RAM1|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~153_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \RAM1|ram~154_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|ram~154_combout\) # ((\DECODER_INSTRU|saida[5]~10_combout\ & ((\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[5]~10_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~154_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~17_sumout\);

\DECODER_INSTRU|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~3_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\DECODER_INSTRU|saida[1]~1_combout\ & \ROM1|memROM~15_combout\) ) ) # ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~15_combout\ & ((!\DECODER_INSTRU|saida[1]~1_combout\) # 
-- ((!\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000001010101000000000111010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida~3_combout\);

\FLIPFLOP1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIPFLOP1|DOUT~1_combout\ = ( \ULA1|Add1~13_sumout\ & ( \FLIPFLOP1|DOUT~q\ & ( !\DECODER_INSTRU|saida~3_combout\ ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( \FLIPFLOP1|DOUT~q\ & ( (!\DECODER_INSTRU|saida~3_combout\) # ((!\ULA1|Add1~1_sumout\ & 
-- (!\ULA1|Add1~5_sumout\ & !\ULA1|Add1~9_sumout\))) ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( !\FLIPFLOP1|DOUT~q\ & ( (\DECODER_INSTRU|saida~3_combout\ & (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~5_sumout\ & !\ULA1|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida~3_combout\,
	datab => \ULA1|ALT_INV_Add1~1_sumout\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	datad => \ULA1|ALT_INV_Add1~9_sumout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \FLIPFLOP1|ALT_INV_DOUT~q\,
	combout => \FLIPFLOP1|DOUT~1_combout\);

\FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIPFLOP1|DOUT~0_combout\ = ( \DECODER_INSTRU|saida~3_combout\ & ( \FLIPFLOP1|DOUT~1_combout\ & ( (!\ULA1|Add1~17_sumout\ & (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))) ) ) ) # ( !\DECODER_INSTRU|saida~3_combout\ & ( 
-- \FLIPFLOP1|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	datae => \DECODER_INSTRU|ALT_INV_saida~3_combout\,
	dataf => \FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	combout => \FLIPFLOP1|DOUT~0_combout\);

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

\DESVIO1|Sel[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel[0]~1_combout\ = ( \ROM1|memROM~14_combout\ & ( \FLIPFLOP1|DOUT~q\ & ( (\DECODER_INSTRU|saida[1]~1_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~15_combout\)) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \FLIPFLOP1|DOUT~q\ & ( 
-- (\DECODER_INSTRU|saida[1]~1_combout\ & (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~15_combout\))) ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\FLIPFLOP1|DOUT~q\ & ( (\DECODER_INSTRU|saida[1]~1_combout\ & (\ROM1|memROM~11_combout\ & 
-- (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~15_combout\))) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\FLIPFLOP1|DOUT~q\ & ( (\DECODER_INSTRU|saida[1]~1_combout\ & (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000100000000000000000000000001000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \FLIPFLOP1|ALT_INV_DOUT~q\,
	combout => \DESVIO1|Sel[0]~1_combout\);

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

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

\MUX2|MUX_OUT[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[4]~8_combout\ = (!\DESVIO1|Sel[0]~1_combout\ & ((!\DESVIO1|Sel[1]~0_combout\ & (\incrementaPC|Add0~33_sumout\)) # (\DESVIO1|Sel[1]~0_combout\ & ((\END_RETORNO|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datab => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(4),
	combout => \MUX2|MUX_OUT[4]~8_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

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

\MUX2|MUX_OUT[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[5]~7_combout\ = (!\DESVIO1|Sel[0]~1_combout\ & ((!\DESVIO1|Sel[1]~0_combout\ & (\incrementaPC|Add0~29_sumout\)) # (\DESVIO1|Sel[1]~0_combout\ & ((\END_RETORNO|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datab => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(5),
	combout => \MUX2|MUX_OUT[5]~7_combout\);

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

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

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

\MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[6]~6_combout\ = (!\DESVIO1|Sel[0]~1_combout\ & ((!\DESVIO1|Sel[1]~0_combout\ & (\incrementaPC|Add0~25_sumout\)) # (\DESVIO1|Sel[1]~0_combout\ & ((\END_RETORNO|DOUT\(6))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datab => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(6),
	combout => \MUX2|MUX_OUT[6]~6_combout\);

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

\DECODER_INSTRU|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[1]~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \DECODER_INSTRU|saida[1]~1_combout\);

\DESVIO1|Sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel[1]~0_combout\ = ( !\ROM1|memROM~14_combout\ & ( (\DECODER_INSTRU|saida[1]~1_combout\ & (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & \ROM1|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DESVIO1|Sel[1]~0_combout\);

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

\MUX2|MUX_OUT[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[7]~5_combout\ = (!\DESVIO1|Sel[0]~1_combout\ & ((!\DESVIO1|Sel[1]~0_combout\ & (\incrementaPC|Add0~21_sumout\)) # (\DESVIO1|Sel[1]~0_combout\ & ((\END_RETORNO|DOUT\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datab => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datac => \incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(7),
	combout => \MUX2|MUX_OUT[7]~5_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MUX2|MUX_OUT[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\DECODER_INSTRU|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[1]~0_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	combout => \DECODER_INSTRU|saida[1]~0_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & \ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

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

\MUX2|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[0]~1_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (((!\DESVIO1|Sel[0]~1_combout\)) # (\ROM1|memROM~5_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(0))))) ) ) # ( 
-- !\incrementaPC|Add0~5_sumout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\ROM1|memROM~5_combout\ & (\DESVIO1|Sel[0]~1_combout\))) # (\DESVIO1|Sel[1]~0_combout\ & (((\END_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datac => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(0),
	datae => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|MUX_OUT[0]~1_combout\);

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

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \DECODER_INSTRU|saida[1]~1_combout\ & ( (\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110001000000000000000000000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	combout => \RAM1|process_0~0_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~1_sumout\);

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

\MUX2|MUX_OUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|MUX_OUT[8]~0_combout\ = ( \DESVIO1|Sel[0]~1_combout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & (\RAM1|process_0~0_combout\)) # (\DESVIO1|Sel[1]~0_combout\ & ((\END_RETORNO|DOUT\(8)))) ) ) # ( !\DESVIO1|Sel[0]~1_combout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & 
-- ((\incrementaPC|Add0~1_sumout\))) # (\DESVIO1|Sel[1]~0_combout\ & (\END_RETORNO|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100110101001100000011111100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \END_RETORNO|ALT_INV_DOUT\(8),
	datac => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datae => \DESVIO1|ALT_INV_Sel[0]~1_combout\,
	combout => \MUX2|MUX_OUT[8]~0_combout\);

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

\DECODER_INSTRU|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[5]~6_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\))) ) ) ) # ( !\ROM1|memROM~13_combout\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & ((\ROM1|memROM~12_combout\) # (\ROM1|memROM~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida[5]~6_combout\);

\ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\DECODER_INSTRU|saida[4]~5_combout\) # ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\ROM1|memROM~1_combout\))) ) ) # ( 
-- !\ULA1|Add1~1_sumout\ & ( (\DECODER_INSTRU|saida[4]~5_combout\ & ((!\DECODER_INSTRU|saida[5]~6_combout\ & ((\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|saida[5]~6_combout\ & (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001010111100111111101000000011000010101111001111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \RAM1|ALT_INV_ram~146_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[4]~5_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[5]~6_combout\,
	datae => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[3]~0_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[3]~0_combout\,
	sload => \DECODER_INSTRU|ALT_INV_saida[3]~4_combout\,
	ena => \DECODER_INSTRU|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\MUX_7SEG|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[0]~0_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(0),
	datac => \RAM1|ALT_INV_ram~148_combout\,
	combout => \MUX_7SEG|saida_MUX[0]~0_combout\);

\MUX_7SEG|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[1]~1_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~150_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(1),
	datac => \RAM1|ALT_INV_ram~150_combout\,
	combout => \MUX_7SEG|saida_MUX[1]~1_combout\);

\MUX_7SEG|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[2]~2_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~152_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(2),
	datac => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_7SEG|saida_MUX[2]~2_combout\);

\HEX0_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( \MUX_7SEG|saida_MUX[2]~2_combout\ & ( !\MUX_7SEG|saida_MUX[0]~0_combout\ $ (((!\SW[9]~input_o\ & ((\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(3))))) ) ) 
-- ) # ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( !\MUX_7SEG|saida_MUX[2]~2_combout\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(3))))) ) ) ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ 
-- & ( !\MUX_7SEG|saida_MUX[2]~2_combout\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\ & ((!\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010000000000011010111001010001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(3),
	datab => \RAM1|ALT_INV_ram~146_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[0]~0_combout\);

\MUX_7SEG|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[3]~3_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(3),
	datab => \RAM1|ALT_INV_ram~146_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	combout => \MUX_7SEG|saida_MUX[3]~3_combout\);

\HEX0_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\ = (!\MUX_7SEG|saida_MUX[1]~1_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ $ (!\MUX_7SEG|saida_MUX[3]~3_combout\)))) # (\MUX_7SEG|saida_MUX[1]~1_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\)) # (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((\MUX_7SEG|saida_MUX[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[1]~1_combout\);

\HEX0_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\ = (!\MUX_7SEG|saida_MUX[2]~2_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[1]~1_combout\ & !\MUX_7SEG|saida_MUX[3]~3_combout\))) # (\MUX_7SEG|saida_MUX[2]~2_combout\ & 
-- (\MUX_7SEG|saida_MUX[3]~3_combout\ & ((!\MUX_7SEG|saida_MUX[0]~0_combout\) # (\MUX_7SEG|saida_MUX[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[2]~2_combout\);

\HEX0_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\ = (!\MUX_7SEG|saida_MUX[1]~1_combout\ & (!\MUX_7SEG|saida_MUX[3]~3_combout\ & (!\MUX_7SEG|saida_MUX[0]~0_combout\ $ (!\MUX_7SEG|saida_MUX[2]~2_combout\)))) # (\MUX_7SEG|saida_MUX[1]~1_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ & \MUX_7SEG|saida_MUX[3]~3_combout\)) # (\MUX_7SEG|saida_MUX[0]~0_combout\ & (\MUX_7SEG|saida_MUX[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[3]~3_combout\);

\HEX0_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( \MUX_7SEG|saida_MUX[2]~2_combout\ & ( (!\MUX_7SEG|saida_MUX[3]~3_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(0))))) ) ) 
-- ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( \MUX_7SEG|saida_MUX[2]~2_combout\ & ( !\MUX_7SEG|saida_MUX[3]~3_combout\ ) ) ) # ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( !\MUX_7SEG|saida_MUX[2]~2_combout\ & ( (!\MUX_7SEG|saida_MUX[3]~3_combout\ & 
-- ((!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(0))))) ) ) ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( !\MUX_7SEG|saida_MUX[2]~2_combout\ & ( (!\SW[9]~input_o\ & ((\RAM1|ram~148_combout\))) # (\SW[9]~input_o\ & 
-- (\REGA|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000101000101010101010101010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \REGA|ALT_INV_DOUT\(0),
	datad => \RAM1|ALT_INV_ram~148_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[4]~4_combout\);

\HEX0_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX_7SEG|saida_MUX[1]~1_combout\ & ( \MUX_7SEG|saida_MUX[2]~2_combout\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\ & ((!\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(3))))) ) ) 
-- ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( \MUX_7SEG|saida_MUX[2]~2_combout\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(3))))) ) ) ) # ( \MUX_7SEG|saida_MUX[1]~1_combout\ & 
-- ( !\MUX_7SEG|saida_MUX[2]~2_combout\ & ( (!\SW[9]~input_o\ & ((!\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(3))) ) ) ) # ( !\MUX_7SEG|saida_MUX[1]~1_combout\ & ( !\MUX_7SEG|saida_MUX[2]~2_combout\ & ( (\MUX_7SEG|saida_MUX[0]~0_combout\ & 
-- ((!\SW[9]~input_o\ & ((!\RAM1|ram~146_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100111001001110010000000000000110110000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(3),
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[5]~5_combout\);

\HEX0_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\ = (!\MUX_7SEG|saida_MUX[0]~0_combout\ & (!\MUX_7SEG|saida_MUX[1]~1_combout\ & (!\MUX_7SEG|saida_MUX[2]~2_combout\ $ (\MUX_7SEG|saida_MUX[3]~3_combout\)))) # (\MUX_7SEG|saida_MUX[0]~0_combout\ & 
-- (!\MUX_7SEG|saida_MUX[3]~3_combout\ & (!\MUX_7SEG|saida_MUX[1]~1_combout\ $ (\MUX_7SEG|saida_MUX[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \HEX0_SEVENSEG|rascSaida7seg[6]~6_combout\);

\MUX_7SEG|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[4]~4_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~156_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(4),
	datac => \RAM1|ALT_INV_ram~156_combout\,
	combout => \MUX_7SEG|saida_MUX[4]~4_combout\);

\MUX_7SEG|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[5]~5_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~158_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(5),
	datac => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX_7SEG|saida_MUX[5]~5_combout\);

\MUX_7SEG|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[6]~6_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~160_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(6),
	datac => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX_7SEG|saida_MUX[6]~6_combout\);

\HEX1_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( !\MUX_7SEG|saida_MUX[4]~4_combout\ $ (((!\SW[9]~input_o\ & ((\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(7))))) ) ) 
-- ) # ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(7))))) ) ) ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ 
-- & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & ((!\SW[9]~input_o\ & ((!\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010000000000011010111001010001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(7),
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[0]~0_combout\);

\MUX_7SEG|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[7]~7_combout\ = (!\SW[9]~input_o\ & ((\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX_7SEG|saida_MUX[7]~7_combout\);

\HEX1_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\ = (!\MUX_7SEG|saida_MUX[5]~5_combout\ & (\MUX_7SEG|saida_MUX[6]~6_combout\ & (!\MUX_7SEG|saida_MUX[4]~4_combout\ $ (!\MUX_7SEG|saida_MUX[7]~7_combout\)))) # (\MUX_7SEG|saida_MUX[5]~5_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[4]~4_combout\ & (\MUX_7SEG|saida_MUX[6]~6_combout\)) # (\MUX_7SEG|saida_MUX[4]~4_combout\ & ((\MUX_7SEG|saida_MUX[7]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[1]~1_combout\);

\HEX1_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\ = (!\MUX_7SEG|saida_MUX[6]~6_combout\ & (!\MUX_7SEG|saida_MUX[4]~4_combout\ & (\MUX_7SEG|saida_MUX[5]~5_combout\ & !\MUX_7SEG|saida_MUX[7]~7_combout\))) # (\MUX_7SEG|saida_MUX[6]~6_combout\ & 
-- (\MUX_7SEG|saida_MUX[7]~7_combout\ & ((!\MUX_7SEG|saida_MUX[4]~4_combout\) # (\MUX_7SEG|saida_MUX[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[2]~2_combout\);

\HEX1_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\ = (!\MUX_7SEG|saida_MUX[5]~5_combout\ & (!\MUX_7SEG|saida_MUX[7]~7_combout\ & (!\MUX_7SEG|saida_MUX[4]~4_combout\ $ (!\MUX_7SEG|saida_MUX[6]~6_combout\)))) # (\MUX_7SEG|saida_MUX[5]~5_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[4]~4_combout\ & (!\MUX_7SEG|saida_MUX[6]~6_combout\ & \MUX_7SEG|saida_MUX[7]~7_combout\)) # (\MUX_7SEG|saida_MUX[4]~4_combout\ & (\MUX_7SEG|saida_MUX[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[3]~3_combout\);

\HEX1_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\MUX_7SEG|saida_MUX[7]~7_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~156_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(4))))) ) ) 
-- ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( !\MUX_7SEG|saida_MUX[7]~7_combout\ ) ) ) # ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\MUX_7SEG|saida_MUX[7]~7_combout\ & 
-- ((!\SW[9]~input_o\ & ((\RAM1|ram~156_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(4))))) ) ) ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\SW[9]~input_o\ & ((\RAM1|ram~156_combout\))) # (\SW[9]~input_o\ & 
-- (\REGA|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000101000101010101010101010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \REGA|ALT_INV_DOUT\(4),
	datad => \RAM1|ALT_INV_ram~156_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[4]~4_combout\);

\HEX1_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & ((!\SW[9]~input_o\ & ((!\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(7))))) ) ) 
-- ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( \MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & ((!\SW[9]~input_o\ & ((\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (\REGA|DOUT\(7))))) ) ) ) # ( \MUX_7SEG|saida_MUX[5]~5_combout\ & 
-- ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (!\SW[9]~input_o\ & ((!\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(7))) ) ) ) # ( !\MUX_7SEG|saida_MUX[5]~5_combout\ & ( !\MUX_7SEG|saida_MUX[6]~6_combout\ & ( (\MUX_7SEG|saida_MUX[4]~4_combout\ & 
-- ((!\SW[9]~input_o\ & ((!\RAM1|ram~154_combout\))) # (\SW[9]~input_o\ & (!\REGA|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100111001001110010000000000000110110000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[5]~5_combout\);

\HEX1_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\ = (!\MUX_7SEG|saida_MUX[4]~4_combout\ & (!\MUX_7SEG|saida_MUX[5]~5_combout\ & (!\MUX_7SEG|saida_MUX[6]~6_combout\ $ (\MUX_7SEG|saida_MUX[7]~7_combout\)))) # (\MUX_7SEG|saida_MUX[4]~4_combout\ & 
-- (!\MUX_7SEG|saida_MUX[7]~7_combout\ & (!\MUX_7SEG|saida_MUX[5]~5_combout\ $ (\MUX_7SEG|saida_MUX[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \HEX1_SEVENSEG|rascSaida7seg[6]~6_combout\);

\HEX2_SEVENSEG|rascSaida7seg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\ = ( \DECODER_INSTRU|saida[1]~0_combout\ & ( !\PC|DOUT\(8) & ( (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0))) # (\PC|DOUT\(2) & (!\PC|DOUT\(1) & \PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \HEX2_SEVENSEG|rascSaida7seg[0]~1_combout\);

\HEX2_SEVENSEG|rascSaida7seg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\ = ( \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (!\ROM1|memROM~7_combout\ & (((\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~1_combout\) # ((\PC|DOUT\(8) & 
-- \ROM1|memROM~3_combout\)))) ) ) # ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\PC|DOUT\(8) & \ROM1|memROM~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000110000011111100110100001100000001100000111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[1]~2_combout\);

\HEX2_SEVENSEG|rascSaida7seg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\ = (!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~3_combout\) # ((\ROM1|memROM~5_combout\ & !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\)))) # (\ROM1|memROM~1_combout\ & (((!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\) 
-- # (\ROM1|memROM~5_combout\)) # (\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111110011101110111111001110111011111100111011101111110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[2]~3_combout\);

\HEX2_SEVENSEG|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\ = (!\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ $ (!\ROM1|memROM~5_combout\)))) # (\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ((!\ROM1|memROM~3_combout\ & 
-- (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~5_combout\)) # (\ROM1|memROM~3_combout\ & ((\ROM1|memROM~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100001000011000110000100001100011000010000110001100001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[3]~4_combout\);

\HEX2_SEVENSEG|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\ = ( !\PC|DOUT\(8) & ( (!\ROM1|memROM~10_combout\ & (((\ROM1|memROM~9_combout\ & \ROM1|memROM~7_combout\)))) # (\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~8_combout\ & (\ROM1|memROM~9_combout\)) # 
-- (\ROM1|memROM~8_combout\ & ((\ROM1|memROM~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100111000000000000000000000011001001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \HEX2_SEVENSEG|rascSaida7seg[4]~5_combout\);

\HEX2_SEVENSEG|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & \DECODER_INSTRU|saida[1]~0_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~6_combout\ & ( 
-- (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\DECODER_INSTRU|saida[1]~0_combout\ & !\ROM1|memROM~2_combout\))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & 
-- (!\ROM1|memROM~0_combout\ $ (\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000001000001000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[5]~6_combout\);

\HEX2_SEVENSEG|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\ = ( \HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~7_combout\)) ) ) # ( !\HEX2_SEVENSEG|rascSaida7seg[1]~0_combout\ & ( (!\ROM1|memROM~1_combout\ 
-- & (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~7_combout\) # (\PC|DOUT\(8))))) # (\ROM1|memROM~1_combout\ & (((!\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110100000000000000001100111100001101000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \HEX2_SEVENSEG|ALT_INV_rascSaida7seg[1]~0_combout\,
	combout => \HEX2_SEVENSEG|rascSaida7seg[6]~7_combout\);

\MUX_7SEG|saida_MUX[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[16]~8_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(0))) # (\SW[9]~input_o\ & ((\RAM1|ram~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	combout => \MUX_7SEG|saida_MUX[16]~8_combout\);

\MUX_7SEG|saida_MUX[17]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[17]~9_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(1))) # (\SW[9]~input_o\ & ((\RAM1|ram~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	combout => \MUX_7SEG|saida_MUX[17]~9_combout\);

\MUX_7SEG|saida_MUX[18]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[18]~10_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(2))) # (\SW[9]~input_o\ & ((\RAM1|ram~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_7SEG|saida_MUX[18]~10_combout\);

\HEX4_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( \MUX_7SEG|saida_MUX[18]~10_combout\ & ( !\MUX_7SEG|saida_MUX[16]~8_combout\ $ (((!\SW[9]~input_o\ & ((\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (\RAM1|ram~146_combout\)))) ) 
-- ) ) # ( \MUX_7SEG|saida_MUX[17]~9_combout\ & ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & ( (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (\RAM1|ram~146_combout\)))) ) ) ) # ( 
-- !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & ( (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (!\RAM1|ram~146_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010000000000011010111001010001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[0]~0_combout\);

\MUX_7SEG|saida_MUX[19]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[19]~11_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(3))) # (\SW[9]~input_o\ & ((\RAM1|ram~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \RAM1|ALT_INV_ram~146_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	combout => \MUX_7SEG|saida_MUX[19]~11_combout\);

\HEX4_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\ = (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (\MUX_7SEG|saida_MUX[18]~10_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ $ (!\MUX_7SEG|saida_MUX[19]~11_combout\)))) # (\MUX_7SEG|saida_MUX[17]~9_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[16]~8_combout\ & (\MUX_7SEG|saida_MUX[18]~10_combout\)) # (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((\MUX_7SEG|saida_MUX[19]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[1]~1_combout\);

\HEX4_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\ = (!\MUX_7SEG|saida_MUX[18]~10_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ & (\MUX_7SEG|saida_MUX[17]~9_combout\ & !\MUX_7SEG|saida_MUX[19]~11_combout\))) # (\MUX_7SEG|saida_MUX[18]~10_combout\ & 
-- (\MUX_7SEG|saida_MUX[19]~11_combout\ & ((!\MUX_7SEG|saida_MUX[16]~8_combout\) # (\MUX_7SEG|saida_MUX[17]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[2]~2_combout\);

\HEX4_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\ = (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (!\MUX_7SEG|saida_MUX[19]~11_combout\ & (!\MUX_7SEG|saida_MUX[16]~8_combout\ $ (!\MUX_7SEG|saida_MUX[18]~10_combout\)))) # (\MUX_7SEG|saida_MUX[17]~9_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[16]~8_combout\ & (!\MUX_7SEG|saida_MUX[18]~10_combout\ & \MUX_7SEG|saida_MUX[19]~11_combout\)) # (\MUX_7SEG|saida_MUX[16]~8_combout\ & (\MUX_7SEG|saida_MUX[18]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[3]~3_combout\);

\HEX4_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \MUX_7SEG|saida_MUX[17]~9_combout\ & ( \MUX_7SEG|saida_MUX[18]~10_combout\ & ( (!\MUX_7SEG|saida_MUX[19]~11_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(0)))) # (\SW[9]~input_o\ & (\RAM1|ram~148_combout\)))) ) 
-- ) ) # ( !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( \MUX_7SEG|saida_MUX[18]~10_combout\ & ( !\MUX_7SEG|saida_MUX[19]~11_combout\ ) ) ) # ( \MUX_7SEG|saida_MUX[17]~9_combout\ & ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & ( (!\MUX_7SEG|saida_MUX[19]~11_combout\ & 
-- ((!\SW[9]~input_o\ & ((\PC|DOUT\(0)))) # (\SW[9]~input_o\ & (\RAM1|ram~148_combout\)))) ) ) ) # ( !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & ( (!\SW[9]~input_o\ & ((\PC|DOUT\(0)))) # (\SW[9]~input_o\ & 
-- (\RAM1|ram~148_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000101000101010101010101010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[4]~4_combout\);

\HEX4_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX_7SEG|saida_MUX[17]~9_combout\ & ( \MUX_7SEG|saida_MUX[18]~10_combout\ & ( (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (!\RAM1|ram~146_combout\)))) ) 
-- ) ) # ( !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( \MUX_7SEG|saida_MUX[18]~10_combout\ & ( (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (\RAM1|ram~146_combout\)))) ) ) ) # ( 
-- \MUX_7SEG|saida_MUX[17]~9_combout\ & ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & ( (!\SW[9]~input_o\ & ((!\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (!\RAM1|ram~146_combout\)) ) ) ) # ( !\MUX_7SEG|saida_MUX[17]~9_combout\ & ( !\MUX_7SEG|saida_MUX[18]~10_combout\ & 
-- ( (\MUX_7SEG|saida_MUX[16]~8_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(3)))) # (\SW[9]~input_o\ & (!\RAM1|ram~146_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100111001001110010000000000000110110000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \RAM1|ALT_INV_ram~146_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[5]~5_combout\);

\HEX4_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\ = (!\MUX_7SEG|saida_MUX[16]~8_combout\ & (!\MUX_7SEG|saida_MUX[17]~9_combout\ & (!\MUX_7SEG|saida_MUX[18]~10_combout\ $ (\MUX_7SEG|saida_MUX[19]~11_combout\)))) # (\MUX_7SEG|saida_MUX[16]~8_combout\ & 
-- (!\MUX_7SEG|saida_MUX[19]~11_combout\ & (!\MUX_7SEG|saida_MUX[17]~9_combout\ $ (\MUX_7SEG|saida_MUX[18]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[16]~8_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[17]~9_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[18]~10_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[19]~11_combout\,
	combout => \HEX4_SEVENSEG|rascSaida7seg[6]~6_combout\);

\MUX_7SEG|saida_MUX[20]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[20]~12_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(4))) # (\SW[9]~input_o\ & ((\RAM1|ram~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	combout => \MUX_7SEG|saida_MUX[20]~12_combout\);

\MUX_7SEG|saida_MUX[21]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[21]~13_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(5))) # (\SW[9]~input_o\ & ((\RAM1|ram~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX_7SEG|saida_MUX[21]~13_combout\);

\MUX_7SEG|saida_MUX[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[22]~14_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(6))) # (\SW[9]~input_o\ & ((\RAM1|ram~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX_7SEG|saida_MUX[22]~14_combout\);

\HEX5_SEVENSEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\ = ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[22]~14_combout\ & ( !\MUX_7SEG|saida_MUX[20]~12_combout\ $ (((!\SW[9]~input_o\ & ((\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (\RAM1|ram~154_combout\)))) 
-- ) ) ) # ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[22]~14_combout\ & ( (\MUX_7SEG|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (\RAM1|ram~154_combout\)))) ) ) ) # ( 
-- !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[22]~14_combout\ & ( (\MUX_7SEG|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~154_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010000000000011010111001010001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~154_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[0]~0_combout\);

\MUX_7SEG|saida_MUX[23]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_7SEG|saida_MUX[23]~15_combout\ = (!\SW[9]~input_o\ & (\PC|DOUT\(7))) # (\SW[9]~input_o\ & ((\RAM1|ram~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX_7SEG|saida_MUX[23]~15_combout\);

\HEX5_SEVENSEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\ = (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (\MUX_7SEG|saida_MUX[22]~14_combout\ & (!\MUX_7SEG|saida_MUX[20]~12_combout\ $ (!\MUX_7SEG|saida_MUX[23]~15_combout\)))) # (\MUX_7SEG|saida_MUX[21]~13_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[20]~12_combout\ & (\MUX_7SEG|saida_MUX[22]~14_combout\)) # (\MUX_7SEG|saida_MUX[20]~12_combout\ & ((\MUX_7SEG|saida_MUX[23]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[1]~1_combout\);

\HEX5_SEVENSEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\ = (!\MUX_7SEG|saida_MUX[22]~14_combout\ & (!\MUX_7SEG|saida_MUX[20]~12_combout\ & (\MUX_7SEG|saida_MUX[21]~13_combout\ & !\MUX_7SEG|saida_MUX[23]~15_combout\))) # (\MUX_7SEG|saida_MUX[22]~14_combout\ & 
-- (\MUX_7SEG|saida_MUX[23]~15_combout\ & ((!\MUX_7SEG|saida_MUX[20]~12_combout\) # (\MUX_7SEG|saida_MUX[21]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[2]~2_combout\);

\HEX5_SEVENSEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\ = (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (!\MUX_7SEG|saida_MUX[23]~15_combout\ & (!\MUX_7SEG|saida_MUX[20]~12_combout\ $ (!\MUX_7SEG|saida_MUX[22]~14_combout\)))) # (\MUX_7SEG|saida_MUX[21]~13_combout\ & 
-- ((!\MUX_7SEG|saida_MUX[20]~12_combout\ & (!\MUX_7SEG|saida_MUX[22]~14_combout\ & \MUX_7SEG|saida_MUX[23]~15_combout\)) # (\MUX_7SEG|saida_MUX[20]~12_combout\ & (\MUX_7SEG|saida_MUX[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[3]~3_combout\);

\HEX5_SEVENSEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\ = ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[22]~14_combout\ & ( (!\MUX_7SEG|saida_MUX[23]~15_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[9]~input_o\ & (\RAM1|ram~156_combout\)))) 
-- ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[22]~14_combout\ & ( !\MUX_7SEG|saida_MUX[23]~15_combout\ ) ) ) # ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[22]~14_combout\ & ( 
-- (!\MUX_7SEG|saida_MUX[23]~15_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[9]~input_o\ & (\RAM1|ram~156_combout\)))) ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[22]~14_combout\ & ( (!\SW[9]~input_o\ & 
-- ((\PC|DOUT\(4)))) # (\SW[9]~input_o\ & (\RAM1|ram~156_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000101000101010101010101010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[4]~4_combout\);

\HEX5_SEVENSEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\ = ( \MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[22]~14_combout\ & ( (\MUX_7SEG|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~154_combout\)))) 
-- ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( \MUX_7SEG|saida_MUX[22]~14_combout\ & ( (\MUX_7SEG|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (\RAM1|ram~154_combout\)))) ) ) ) # ( 
-- \MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[22]~14_combout\ & ( (!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~154_combout\)) ) ) ) # ( !\MUX_7SEG|saida_MUX[21]~13_combout\ & ( !\MUX_7SEG|saida_MUX[22]~14_combout\ 
-- & ( (\MUX_7SEG|saida_MUX[20]~12_combout\ & ((!\SW[9]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[9]~input_o\ & (!\RAM1|ram~154_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100111001001110010000000000000110110000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	datae => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	dataf => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[5]~5_combout\);

\HEX5_SEVENSEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\ = (!\MUX_7SEG|saida_MUX[20]~12_combout\ & (!\MUX_7SEG|saida_MUX[21]~13_combout\ & (!\MUX_7SEG|saida_MUX[22]~14_combout\ $ (\MUX_7SEG|saida_MUX[23]~15_combout\)))) # (\MUX_7SEG|saida_MUX[20]~12_combout\ & 
-- (!\MUX_7SEG|saida_MUX[23]~15_combout\ & (!\MUX_7SEG|saida_MUX[21]~13_combout\ $ (\MUX_7SEG|saida_MUX[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_7SEG|ALT_INV_saida_MUX[20]~12_combout\,
	datab => \MUX_7SEG|ALT_INV_saida_MUX[21]~13_combout\,
	datac => \MUX_7SEG|ALT_INV_saida_MUX[22]~14_combout\,
	datad => \MUX_7SEG|ALT_INV_saida_MUX[23]~15_combout\,
	combout => \HEX5_SEVENSEG|rascSaida7seg[6]~6_combout\);

\DECODER_INSTRU|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[1]~2_combout\ = ( !\ROM1|memROM~14_combout\ & ( (\DECODER_INSTRU|saida[1]~1_combout\ & (!\ROM1|memROM~15_combout\ & ((\ROM1|memROM~12_combout\) # (\ROM1|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000000000000000000010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida[1]~2_combout\);

\DECODER_INSTRU|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[6]~7_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\DECODER_INSTRU|saida[1]~1_combout\) # (((\ROM1|memROM~13_combout\) # (\ROM1|memROM~12_combout\)) # (\ROM1|memROM~11_combout\)) ) ) # ( !\ROM1|memROM~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_saida[1]~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida[6]~7_combout\);

\DECODER_INSTRU|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal3~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|Equal3~0_combout\);

\DECODER_INSTRU|saida~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida~9_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|saida~9_combout\);

\DECODER_INSTRU|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal4~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (\DECODER_INSTRU|saida[1]~0_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DECODER_INSTRU|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \DECODER_INSTRU|Equal4~0_combout\);

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

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

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
END structure;


