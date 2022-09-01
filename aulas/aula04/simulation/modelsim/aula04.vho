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

-- DATE "09/01/2022 18:13:07"

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
-- PC_OUT[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal1~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[3]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|Equal1~1_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|saida[4]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \ACUMULADOR_LO|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~6_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \ACUMULADOR_HI|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \MUX_A_LO|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \MUX_A_HI|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_B_LO|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_B_LO|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \MUX_B_LO|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \MUX_B_LO|rascSaida7seg[3]~2_combout\ : std_logic;
SIGNAL \MUX_B_LO|rascSaida7seg[5]~3_combout\ : std_logic;
SIGNAL \MUX_B_LO|rascSaida7seg[6]~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \MUX_B_LO|ALT_INV_rascSaida7seg[6]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
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
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\MUX_B_LO|ALT_INV_rascSaida7seg[6]~4_combout\ <= NOT \MUX_B_LO|rascSaida7seg[6]~4_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REGA|DOUT[2]~DUPLICATE_q\;
\DECODER_INSTRU|ALT_INV_Equal1~0_combout\ <= NOT \DECODER_INSTRU|Equal1~0_combout\;
\DECODER_INSTRU|ALT_INV_Equal1~1_combout\ <= NOT \DECODER_INSTRU|Equal1~1_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REGA|DOUT[1]~DUPLICATE_q\;
\DECODER_INSTRU|ALT_INV_saida[3]~0_combout\ <= NOT \DECODER_INSTRU|saida[3]~0_combout\;
\REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \REGA|DOUT[5]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \REGA|DOUT[7]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REGA|DOUT[0]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ACUMULADOR_LO|rascSaida7seg[0]~0_combout\,
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
	i => \ACUMULADOR_LO|rascSaida7seg[1]~1_combout\,
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
	i => \ACUMULADOR_LO|rascSaida7seg[2]~2_combout\,
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
	i => \ACUMULADOR_LO|rascSaida7seg[3]~3_combout\,
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
	i => \ACUMULADOR_LO|rascSaida7seg[4]~4_combout\,
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
	i => \ACUMULADOR_LO|rascSaida7seg[5]~5_combout\,
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
	i => \ACUMULADOR_LO|rascSaida7seg[6]~6_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[0]~0_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[1]~1_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[2]~2_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[3]~3_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[4]~4_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[5]~5_combout\,
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
	i => \ACUMULADOR_HI|rascSaida7seg[6]~6_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[0]~0_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[1]~1_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[2]~2_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[3]~3_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[4]~4_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[5]~5_combout\,
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
	i => \MUX_A_LO|rascSaida7seg[6]~6_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[0]~0_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[1]~1_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[2]~2_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[3]~3_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[4]~4_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[5]~5_combout\,
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
	i => \MUX_A_HI|rascSaida7seg[6]~6_combout\,
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
	i => \MUX_B_LO|rascSaida7seg[0]~0_combout\,
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
	i => \MUX_B_LO|rascSaida7seg[1]~1_combout\,
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
	i => \MUX_B_LO|rascSaida7seg[2]~5_combout\,
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
	i => \MUX_B_LO|rascSaida7seg[3]~2_combout\,
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
	i => \MUX_B_LO|rascSaida7seg[3]~2_combout\,
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
	i => \MUX_B_LO|rascSaida7seg[5]~3_combout\,
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
	i => \MUX_B_LO|ALT_INV_rascSaida7seg[6]~4_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: LABCELL_X10_Y2_N0
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

-- Location: FF_X10_Y2_N1
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

-- Location: LABCELL_X40_Y4_N27
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

-- Location: LABCELL_X39_Y4_N27
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( !\PC|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X40_Y4_N20
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

-- Location: MLABCELL_X37_Y4_N30
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))

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
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X40_Y4_N47
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

-- Location: MLABCELL_X37_Y4_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X40_Y4_N41
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

-- Location: MLABCELL_X37_Y4_N36
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

-- Location: FF_X40_Y4_N44
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

-- Location: LABCELL_X40_Y4_N9
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X40_Y4_N48
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(1)) # (!\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X40_Y4_N6
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT\(2) & ( !\PC|DOUT\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X40_Y4_N0
\DECODER_INSTRU|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal1~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER_INSTRU|Equal1~0_combout\);

-- Location: LABCELL_X39_Y4_N3
\DECODER_INSTRU|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[3]~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~3_combout\ $ (!\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER_INSTRU|saida[3]~0_combout\);

-- Location: LABCELL_X40_Y4_N12
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X40_Y4_N54
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(3) & ( !\PC|DOUT\(1) $ (!\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X39_Y4_N33
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \PC|DOUT\(0) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(3) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X41_Y4_N13
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X39_Y4_N6
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( !\PC|DOUT\(3) & ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(2) & \PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X41_Y4_N26
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X40_Y4_N36
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(0) & ((\PC|DOUT\(1)))) # (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110000000011001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X41_Y4_N15
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\ & \RAM1|ram~34_q\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\ & \RAM1|ram~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X41_Y4_N24
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X40_Y4_N15
\DECODER_INSTRU|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|Equal1~1_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~5_combout\ & !\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER_INSTRU|Equal1~1_combout\);

-- Location: LABCELL_X39_Y4_N36
\DECODER_INSTRU|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_INSTRU|saida[4]~1_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~5_combout\ ) ) # ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER_INSTRU|saida[4]~1_combout\);

-- Location: FF_X42_Y4_N1
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[1]~2_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X42_Y4_N17
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X41_Y4_N30
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

-- Location: LABCELL_X41_Y4_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REGA|DOUT\(0) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~153_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \REGA|DOUT\(0) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~153_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111011110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_ram~153_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	dataf => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: MLABCELL_X42_Y4_N15
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \DECODER_INSTRU|Equal1~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ULA1|Add0~1_sumout\) # (\DECODER_INSTRU|saida[3]~0_combout\) ) ) ) # ( !\DECODER_INSTRU|Equal1~0_combout\ & ( \ROM1|memROM~1_combout\ & ( 
-- (!\DECODER_INSTRU|saida[3]~0_combout\ & ((\ULA1|Add0~1_sumout\))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (\RAM1|ram~153_combout\)) ) ) ) # ( \DECODER_INSTRU|Equal1~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & 
-- \ULA1|Add0~1_sumout\) ) ) ) # ( !\DECODER_INSTRU|Equal1~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\ & ((\ULA1|Add0~1_sumout\))) # (\DECODER_INSTRU|saida[3]~0_combout\ & (\RAM1|ram~153_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000011000000110000011101000111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~153_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	datae => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: FF_X42_Y4_N16
\REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X41_Y4_N16
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

-- Location: FF_X41_Y4_N29
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

-- Location: LABCELL_X41_Y4_N27
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\ & \RAM1|ram~33_q\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~1_combout\ & \RAM1|ram~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \RAM1|ALT_INV_ram~25_q\,
	datad => \RAM1|ALT_INV_ram~33_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X41_Y4_N12
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \RAM1|ram~164_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X41_Y4_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~146_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

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
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: MLABCELL_X42_Y4_N0
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\) # ((!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~146_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\ & ((\ROM1|memROM~2_combout\)))) ) ) # ( 
-- !\ULA1|Add0~9_sumout\ & ( (\DECODER_INSTRU|saida[3]~0_combout\ & ((!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~146_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\ & ((\ROM1|memROM~2_combout\))))) ) )

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
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: FF_X42_Y4_N2
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[1]~2_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X42_Y4_N4
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[2]~3_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X40_Y4_N50
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

-- Location: LABCELL_X40_Y4_N39
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~27_q\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~27_q\,
	combout => \RAM1|ram~150_combout\);

-- Location: FF_X39_Y4_N35
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

-- Location: LABCELL_X39_Y4_N12
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~35_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~35_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X40_Y4_N3
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~151_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & \RAM1|ram~150_combout\)) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~1_combout\)) ) ) # ( !\RAM1|ram~151_combout\ & ( (!\ROM1|memROM~2_combout\ & 
-- (\ROM1|memROM~1_combout\ & \RAM1|ram~150_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001010000010110100101000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X39_Y4_N51
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X41_Y4_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: MLABCELL_X42_Y4_N3
\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \ULA1|Add0~13_sumout\ & ( (!\DECODER_INSTRU|saida[3]~0_combout\) # ((!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~152_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\ & ((\ROM1|memROM~7_combout\)))) ) ) # ( 
-- !\ULA1|Add0~13_sumout\ & ( (\DECODER_INSTRU|saida[3]~0_combout\ & ((!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~152_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\ & ((\ROM1|memROM~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[2]~3_combout\);

-- Location: FF_X42_Y4_N5
\REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[2]~3_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N56
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X39_Y4_N24
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~36_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~36_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: FF_X40_Y4_N2
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X40_Y4_N18
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~28_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X40_Y4_N21
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~147_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~1_combout\))) # (\ROM1|memROM~2_combout\ & (\RAM1|ram~148_combout\ & !\ROM1|memROM~1_combout\)) ) ) # ( !\RAM1|ram~147_combout\ & ( (\ROM1|memROM~2_combout\ & 
-- (\RAM1|ram~148_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101101010100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X40_Y4_N45
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & \PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X41_Y4_N42
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & ((\RAM1|ram~149_combout\))) # (\DECODER_INSTRU|Equal1~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: MLABCELL_X42_Y4_N6
\ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~1_combout\ = ( \ROM1|memROM~6_combout\ & ( \ULA1|Add0~5_sumout\ & ( ((!\DECODER_INSTRU|saida[3]~0_combout\) # (\RAM1|ram~149_combout\)) # (\DECODER_INSTRU|Equal1~0_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ULA1|Add0~5_sumout\ & ( 
-- (!\DECODER_INSTRU|saida[3]~0_combout\) # ((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~149_combout\)) ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ULA1|Add0~5_sumout\ & ( (\DECODER_INSTRU|saida[3]~0_combout\ & ((\RAM1|ram~149_combout\) # 
-- (\DECODER_INSTRU|Equal1~0_combout\))) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ULA1|Add0~5_sumout\ & ( (!\DECODER_INSTRU|Equal1~0_combout\ & (\RAM1|ram~149_combout\ & \DECODER_INSTRU|saida[3]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000111011111111111001000101111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datad => \DECODER_INSTRU|ALT_INV_saida[3]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[3]~1_combout\);

-- Location: FF_X42_Y4_N8
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[3]~1_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: MLABCELL_X42_Y4_N57
\ACUMULADOR_LO|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[0]~0_combout\ = ( \REGA|DOUT\(3) & ( (\REGA|DOUT\(0) & (!\REGA|DOUT[1]~DUPLICATE_q\ $ (!\REGA|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\REGA|DOUT\(3) & ( (!\REGA|DOUT[1]~DUPLICATE_q\ & (!\REGA|DOUT\(0) $ 
-- (!\REGA|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REGA|ALT_INV_DOUT\(0),
	datad => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \ACUMULADOR_LO|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y4_N48
\ACUMULADOR_LO|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[1]~1_combout\ = (!\REGA|DOUT[1]~DUPLICATE_q\ & (\REGA|DOUT[2]~DUPLICATE_q\ & (!\REGA|DOUT\(3) $ (!\REGA|DOUT[0]~DUPLICATE_q\)))) # (\REGA|DOUT[1]~DUPLICATE_q\ & ((!\REGA|DOUT[0]~DUPLICATE_q\ & ((\REGA|DOUT[2]~DUPLICATE_q\))) # 
-- (\REGA|DOUT[0]~DUPLICATE_q\ & (\REGA|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101111001000000010111100100000001011110010000000101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \REGA|ALT_INV_DOUT\(3),
	datac => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ACUMULADOR_LO|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y4_N51
\ACUMULADOR_LO|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[2]~2_combout\ = ( \REGA|DOUT\(0) & ( (\REGA|DOUT[1]~DUPLICATE_q\ & (\REGA|DOUT\(3) & \REGA|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\REGA|DOUT\(0) & ( (!\REGA|DOUT\(3) & (\REGA|DOUT[1]~DUPLICATE_q\ & !\REGA|DOUT[2]~DUPLICATE_q\)) # 
-- (\REGA|DOUT\(3) & ((\REGA|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \REGA|ALT_INV_DOUT\(3),
	datad => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \ACUMULADOR_LO|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y4_N42
\ACUMULADOR_LO|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[3]~3_combout\ = ( \REGA|DOUT\(3) & ( (\REGA|DOUT[1]~DUPLICATE_q\ & (!\REGA|DOUT[2]~DUPLICATE_q\ $ (\REGA|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\REGA|DOUT\(3) & ( (!\REGA|DOUT[2]~DUPLICATE_q\ & (\REGA|DOUT[0]~DUPLICATE_q\ & 
-- !\REGA|DOUT[1]~DUPLICATE_q\)) # (\REGA|DOUT[2]~DUPLICATE_q\ & (!\REGA|DOUT[0]~DUPLICATE_q\ $ (\REGA|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \ACUMULADOR_LO|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y4_N45
\ACUMULADOR_LO|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[4]~4_combout\ = ( \REGA|DOUT\(3) & ( (!\REGA|DOUT[2]~DUPLICATE_q\ & (\REGA|DOUT\(0) & !\REGA|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\REGA|DOUT\(3) & ( ((\REGA|DOUT[2]~DUPLICATE_q\ & !\REGA|DOUT[1]~DUPLICATE_q\)) # (\REGA|DOUT\(0)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \REGA|ALT_INV_DOUT\(0),
	datad => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \ACUMULADOR_LO|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y4_N24
\ACUMULADOR_LO|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[5]~5_combout\ = ( \REGA|DOUT\(3) & ( (\REGA|DOUT[2]~DUPLICATE_q\ & (!\REGA|DOUT[1]~DUPLICATE_q\ & \REGA|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\REGA|DOUT\(3) & ( (!\REGA|DOUT[2]~DUPLICATE_q\ & ((\REGA|DOUT[0]~DUPLICATE_q\) # 
-- (\REGA|DOUT[1]~DUPLICATE_q\))) # (\REGA|DOUT[2]~DUPLICATE_q\ & (\REGA|DOUT[1]~DUPLICATE_q\ & \REGA|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \ACUMULADOR_LO|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y4_N27
\ACUMULADOR_LO|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_LO|rascSaida7seg[6]~6_combout\ = ( \REGA|DOUT\(3) & ( (!\REGA|DOUT[1]~DUPLICATE_q\ & (\REGA|DOUT[2]~DUPLICATE_q\ & !\REGA|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\REGA|DOUT\(3) & ( (!\REGA|DOUT[1]~DUPLICATE_q\ & (!\REGA|DOUT[2]~DUPLICATE_q\)) # 
-- (\REGA|DOUT[1]~DUPLICATE_q\ & (\REGA|DOUT[2]~DUPLICATE_q\ & \REGA|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001100010001001100100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \ACUMULADOR_LO|rascSaida7seg[6]~6_combout\);

-- Location: FF_X40_Y4_N10
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: FF_X40_Y4_N59
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X40_Y4_N57
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\ & \RAM1|ram~38_q\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~30_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~38_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X40_Y4_N51
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \RAM1|ram~154_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: FF_X41_Y4_N23
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X41_Y4_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~163_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT\(4) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~163_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X41_Y4_N3
\ULA1|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~7_combout\ = (\ULA1|Add0~17_sumout\ & (((\PC|DOUT\(2)) # (\PC|DOUT\(0))) # (\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	datad => \PC|ALT_INV_DOUT\(2),
	combout => \ULA1|saida[4]~7_combout\);

-- Location: FF_X41_Y4_N4
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[4]~7_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X41_Y4_N11
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

-- Location: FF_X40_Y4_N17
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

-- Location: LABCELL_X41_Y4_N9
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \RAM1|ram~29_q\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~1_combout\ & \RAM1|ram~37_q\)) ) ) # ( !\RAM1|ram~29_q\ & ( (\ROM1|memROM~2_combout\ & 
-- (!\ROM1|memROM~1_combout\ & \RAM1|ram~37_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001010010110100000101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~37_q\,
	dataf => \RAM1|ALT_INV_ram~29_q\,
	combout => \RAM1|ram~162_combout\);

-- Location: LABCELL_X41_Y4_N6
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \RAM1|ram~162_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~162_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X41_Y4_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((\RAM1|ram~155_combout\ & !\DECODER_INSTRU|Equal1~0_combout\))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(5) ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((\RAM1|ram~155_combout\ & !\DECODER_INSTRU|Equal1~0_combout\))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000110110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X41_Y4_N21
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add0~25_sumout\ & ( ((\PC|DOUT\(2)) # (\PC|DOUT\(0))) # (\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X41_Y4_N22
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X41_Y4_N2
\REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~6_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N32
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X39_Y4_N54
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~40_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: FF_X40_Y4_N53
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X40_Y4_N42
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~32_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~32_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: LABCELL_X40_Y4_N24
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~156_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~1_combout\))) # (\ROM1|memROM~2_combout\ & (\RAM1|ram~157_combout\ & !\ROM1|memROM~1_combout\)) ) ) # ( !\RAM1|ram~156_combout\ & ( (\ROM1|memROM~2_combout\ & 
-- (\RAM1|ram~157_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101101010100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~157_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~156_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X41_Y4_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((\RAM1|ram~161_combout\ & !\DECODER_INSTRU|Equal1~0_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( !\DECODER_INSTRU|Equal1~1_combout\ $ (((\RAM1|ram~161_combout\ & !\DECODER_INSTRU|Equal1~0_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	datac => \RAM1|ALT_INV_ram~161_combout\,
	datad => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: LABCELL_X41_Y4_N18
\ULA1|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~4_combout\ = ( \ULA1|Add0~29_sumout\ & ( ((\PC|DOUT\(2)) # (\PC|DOUT\(0))) # (\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[6]~4_combout\);

-- Location: FF_X41_Y4_N20
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~4_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X39_Y4_N2
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: LABCELL_X39_Y4_N21
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~39_q\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~39_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: FF_X40_Y4_N29
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: LABCELL_X40_Y4_N30
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~31_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~31_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: LABCELL_X40_Y4_N33
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~159_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~1_combout\ & \RAM1|ram~160_combout\)) ) ) # ( !\RAM1|ram~159_combout\ & ( (\ROM1|memROM~2_combout\ & 
-- (!\ROM1|memROM~1_combout\ & \RAM1|ram~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001010010110100000101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X41_Y4_N54
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT[7]~DUPLICATE_q\ ) + ( !\DECODER_INSTRU|Equal1~1_combout\ $ (((!\DECODER_INSTRU|Equal1~0_combout\ & \RAM1|ram~158_combout\))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001111001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \DECODER_INSTRU|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \DECODER_INSTRU|ALT_INV_Equal1~1_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~21_sumout\);

-- Location: LABCELL_X41_Y4_N0
\ULA1|saida[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~6_combout\ = ( \ULA1|Add0~21_sumout\ & ( ((\PC|DOUT\(2)) # (\PC|DOUT\(3))) # (\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[7]~6_combout\);

-- Location: FF_X41_Y4_N1
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~6_combout\,
	ena => \DECODER_INSTRU|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: MLABCELL_X37_Y4_N0
\ACUMULADOR_HI|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[0]~0_combout\ = ( \REGA|DOUT\(4) & ( (!\REGA|DOUT[5]~DUPLICATE_q\ & (!\REGA|DOUT\(7) $ (\REGA|DOUT\(6)))) # (\REGA|DOUT[5]~DUPLICATE_q\ & (\REGA|DOUT\(7) & !\REGA|DOUT\(6))) ) ) # ( !\REGA|DOUT\(4) & ( 
-- (!\REGA|DOUT[5]~DUPLICATE_q\ & (!\REGA|DOUT\(7) & \REGA|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \REGA|ALT_INV_DOUT\(7),
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \ACUMULADOR_HI|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X37_Y4_N57
\ACUMULADOR_HI|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[1]~1_combout\ = ( \REGA|DOUT[5]~DUPLICATE_q\ & ( (!\REGA|DOUT\(4) & (\REGA|DOUT\(6))) # (\REGA|DOUT\(4) & ((\REGA|DOUT\(7)))) ) ) # ( !\REGA|DOUT[5]~DUPLICATE_q\ & ( (\REGA|DOUT\(6) & (!\REGA|DOUT\(7) $ (!\REGA|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010100110101001100010100000101000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(6),
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \REGA|ALT_INV_DOUT\(4),
	datae => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ACUMULADOR_HI|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y4_N12
\ACUMULADOR_HI|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[2]~2_combout\ = (!\REGA|DOUT\(7) & (\REGA|DOUT[5]~DUPLICATE_q\ & (!\REGA|DOUT\(4) & !\REGA|DOUT\(6)))) # (\REGA|DOUT\(7) & (\REGA|DOUT\(6) & ((!\REGA|DOUT\(4)) # (\REGA|DOUT[5]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001101010000000000110101000000000011010100000000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \REGA|ALT_INV_DOUT\(4),
	datac => \REGA|ALT_INV_DOUT\(7),
	datad => \REGA|ALT_INV_DOUT\(6),
	combout => \ACUMULADOR_HI|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y4_N6
\ACUMULADOR_HI|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[3]~3_combout\ = ( \REGA|DOUT[5]~DUPLICATE_q\ & ( (!\REGA|DOUT\(6) & (!\REGA|DOUT\(4) & \REGA|DOUT\(7))) # (\REGA|DOUT\(6) & (\REGA|DOUT\(4))) ) ) # ( !\REGA|DOUT[5]~DUPLICATE_q\ & ( (!\REGA|DOUT\(7) & (!\REGA|DOUT\(6) $ 
-- (!\REGA|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000000110010001100101100000011000000001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(6),
	datab => \REGA|ALT_INV_DOUT\(4),
	datac => \REGA|ALT_INV_DOUT\(7),
	datae => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ACUMULADOR_HI|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y4_N24
\ACUMULADOR_HI|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[4]~4_combout\ = ( \REGA|DOUT[5]~DUPLICATE_q\ & ( (\REGA|DOUT\(4) & !\REGA|DOUT\(7)) ) ) # ( !\REGA|DOUT[5]~DUPLICATE_q\ & ( (!\REGA|DOUT\(6) & (\REGA|DOUT\(4))) # (\REGA|DOUT\(6) & ((!\REGA|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010001100000011000001110010011100100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(6),
	datab => \REGA|ALT_INV_DOUT\(4),
	datac => \REGA|ALT_INV_DOUT\(7),
	datae => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ACUMULADOR_HI|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y4_N3
\ACUMULADOR_HI|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[5]~5_combout\ = ( \REGA|DOUT\(4) & ( !\REGA|DOUT\(7) $ (((!\REGA|DOUT[5]~DUPLICATE_q\ & \REGA|DOUT\(6)))) ) ) # ( !\REGA|DOUT\(4) & ( (\REGA|DOUT[5]~DUPLICATE_q\ & (!\REGA|DOUT\(7) & !\REGA|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110000010110101111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \REGA|ALT_INV_DOUT\(7),
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \REGA|ALT_INV_DOUT\(4),
	combout => \ACUMULADOR_HI|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y4_N15
\ACUMULADOR_HI|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ACUMULADOR_HI|rascSaida7seg[6]~6_combout\ = (!\REGA|DOUT\(4) & (!\REGA|DOUT[5]~DUPLICATE_q\ & (!\REGA|DOUT\(7) $ (\REGA|DOUT\(6))))) # (\REGA|DOUT\(4) & (!\REGA|DOUT\(7) & (!\REGA|DOUT[5]~DUPLICATE_q\ $ (\REGA|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000011000101000000001100010100000000110001010000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \REGA|ALT_INV_DOUT\(4),
	datac => \REGA|ALT_INV_DOUT\(7),
	datad => \REGA|ALT_INV_DOUT\(6),
	combout => \ACUMULADOR_HI|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y4_N18
\MUX_A_LO|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[0]~0_combout\ = ( \RAM1|ram~152_combout\ & ( (!\RAM1|ram~146_combout\ & (!\RAM1|ram~149_combout\ $ (\RAM1|ram~153_combout\))) ) ) # ( !\RAM1|ram~152_combout\ & ( (\RAM1|ram~153_combout\ & (!\RAM1|ram~149_combout\ $ 
-- (\RAM1|ram~146_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y4_N39
\MUX_A_LO|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[1]~1_combout\ = ( \RAM1|ram~152_combout\ & ( (!\RAM1|ram~153_combout\ & ((\RAM1|ram~146_combout\) # (\RAM1|ram~149_combout\))) # (\RAM1|ram~153_combout\ & (!\RAM1|ram~149_combout\ $ (\RAM1|ram~146_combout\))) ) ) # ( 
-- !\RAM1|ram~152_combout\ & ( (\RAM1|ram~153_combout\ & (\RAM1|ram~149_combout\ & \RAM1|ram~146_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~153_combout\,
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y4_N36
\MUX_A_LO|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[2]~2_combout\ = ( \RAM1|ram~152_combout\ & ( (\RAM1|ram~149_combout\ & ((!\RAM1|ram~153_combout\) # (\RAM1|ram~146_combout\))) ) ) # ( !\RAM1|ram~152_combout\ & ( (!\RAM1|ram~153_combout\ & (!\RAM1|ram~149_combout\ & 
-- \RAM1|ram~146_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~153_combout\,
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y4_N30
\MUX_A_LO|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[3]~3_combout\ = ( \RAM1|ram~152_combout\ & ( (!\RAM1|ram~146_combout\ & (!\RAM1|ram~149_combout\ & !\RAM1|ram~153_combout\)) # (\RAM1|ram~146_combout\ & ((\RAM1|ram~153_combout\))) ) ) # ( !\RAM1|ram~152_combout\ & ( 
-- (!\RAM1|ram~149_combout\ & (!\RAM1|ram~146_combout\ & \RAM1|ram~153_combout\)) # (\RAM1|ram~149_combout\ & (\RAM1|ram~146_combout\ & !\RAM1|ram~153_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y4_N33
\MUX_A_LO|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[4]~4_combout\ = ( \RAM1|ram~152_combout\ & ( (!\RAM1|ram~149_combout\ & ((!\RAM1|ram~146_combout\) # (\RAM1|ram~153_combout\))) ) ) # ( !\RAM1|ram~152_combout\ & ( (\RAM1|ram~153_combout\ & ((!\RAM1|ram~146_combout\) # 
-- (!\RAM1|ram~149_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datac => \RAM1|ALT_INV_ram~149_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y4_N21
\MUX_A_LO|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[5]~5_combout\ = ( \RAM1|ram~152_combout\ & ( (\RAM1|ram~153_combout\ & (!\RAM1|ram~146_combout\ $ (!\RAM1|ram~149_combout\))) ) ) # ( !\RAM1|ram~152_combout\ & ( (!\RAM1|ram~149_combout\ & ((\RAM1|ram~153_combout\) # 
-- (\RAM1|ram~146_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datac => \RAM1|ALT_INV_ram~149_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y4_N54
\MUX_A_LO|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_LO|rascSaida7seg[6]~6_combout\ = ( \RAM1|ram~152_combout\ & ( (!\RAM1|ram~149_combout\ & (\RAM1|ram~146_combout\ & \RAM1|ram~153_combout\)) # (\RAM1|ram~149_combout\ & (!\RAM1|ram~146_combout\ & !\RAM1|ram~153_combout\)) ) ) # ( 
-- !\RAM1|ram~152_combout\ & ( (!\RAM1|ram~149_combout\ & !\RAM1|ram~146_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~149_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX_A_LO|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y4_N15
\MUX_A_HI|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[0]~0_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\RAM1|ram~155_combout\ & \RAM1|ram~158_combout\) ) ) ) # ( !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\RAM1|ram~155_combout\ & 
-- !\RAM1|ram~158_combout\) ) ) ) # ( \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( !\RAM1|ram~155_combout\ $ (\RAM1|ram~158_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y4_N57
\MUX_A_HI|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[1]~1_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( !\RAM1|ram~155_combout\ $ (\RAM1|ram~158_combout\) ) ) ) # ( !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (\RAM1|ram~158_combout\) # 
-- (\RAM1|ram~155_combout\) ) ) ) # ( \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (\RAM1|ram~155_combout\ & \RAM1|ram~158_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011111010111111010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y4_N0
\MUX_A_HI|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[2]~2_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (\RAM1|ram~158_combout\ & \RAM1|ram~155_combout\) ) ) ) # ( !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( \RAM1|ram~158_combout\ ) ) ) # ( 
-- !\RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\RAM1|ram~158_combout\ & \RAM1|ram~155_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~158_combout\,
	datac => \RAM1|ALT_INV_ram~155_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y4_N42
\MUX_A_HI|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[3]~3_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( \RAM1|ram~155_combout\ ) ) ) # ( !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\RAM1|ram~158_combout\ & !\RAM1|ram~155_combout\) ) ) ) # ( 
-- \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\RAM1|ram~158_combout\ & !\RAM1|ram~155_combout\) ) ) ) # ( !\RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (\RAM1|ram~158_combout\ & \RAM1|ram~155_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~158_combout\,
	datac => \RAM1|ALT_INV_ram~155_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y4_N51
\MUX_A_HI|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[4]~4_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( !\RAM1|ram~158_combout\ ) ) ) # ( !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\RAM1|ram~155_combout\ & !\RAM1|ram~158_combout\) ) ) ) # ( 
-- \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\RAM1|ram~155_combout\) # (!\RAM1|ram~158_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101010100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y4_N33
\MUX_A_HI|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[5]~5_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( !\RAM1|ram~155_combout\ $ (!\RAM1|ram~158_combout\) ) ) ) # ( \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( !\RAM1|ram~158_combout\ ) ) ) # ( 
-- !\RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (\RAM1|ram~155_combout\ & !\RAM1|ram~158_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y4_N36
\MUX_A_HI|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_A_HI|rascSaida7seg[6]~6_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\RAM1|ram~158_combout\ & \RAM1|ram~155_combout\) ) ) ) # ( !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (\RAM1|ram~158_combout\ & 
-- !\RAM1|ram~155_combout\) ) ) ) # ( \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\RAM1|ram~158_combout\ & !\RAM1|ram~155_combout\) ) ) ) # ( !\RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\RAM1|ram~158_combout\ & 
-- !\RAM1|ram~155_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110000001100000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~158_combout\,
	datac => \RAM1|ALT_INV_ram~155_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX_A_HI|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y4_N0
\MUX_B_LO|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_LO|rascSaida7seg[0]~0_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(1)))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \MUX_B_LO|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X39_Y4_N15
\MUX_B_LO|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_LO|rascSaida7seg[1]~1_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \MUX_B_LO|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y4_N48
\MUX_B_LO|rascSaida7seg[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_LO|rascSaida7seg[2]~5_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT\(1) & (!\PC|DOUT\(0) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \MUX_B_LO|rascSaida7seg[2]~5_combout\);

-- Location: LABCELL_X39_Y4_N57
\MUX_B_LO|rascSaida7seg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_LO|rascSaida7seg[3]~2_combout\ = ( \PC|DOUT\(1) & ( (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(0)) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \MUX_B_LO|rascSaida7seg[3]~2_combout\);

-- Location: MLABCELL_X37_Y4_N21
\MUX_B_LO|rascSaida7seg[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_LO|rascSaida7seg[5]~3_combout\ = ( \PC|DOUT\(1) & ( \PC|DOUT\(0) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT\(1) & ( \PC|DOUT\(0) & ( !\PC|DOUT\(3) ) ) ) # ( \PC|DOUT\(1) & ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & \PC|DOUT\(2)) ) ) ) # ( 
-- !\PC|DOUT\(1) & ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & \PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \MUX_B_LO|rascSaida7seg[5]~3_combout\);

-- Location: LABCELL_X39_Y4_N30
\MUX_B_LO|rascSaida7seg[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_LO|rascSaida7seg[6]~4_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(1) & (!\PC|DOUT\(2))) # (\PC|DOUT\(1) & ((!\PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010010000000110001001000000011000100100000001100010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	combout => \MUX_B_LO|rascSaida7seg[6]~4_combout\);

-- Location: MLABCELL_X37_Y4_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X39_Y4_N20
\PC|DOUT[4]\ : dffeas
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
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X37_Y4_N42
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

-- Location: FF_X39_Y4_N10
\PC|DOUT[5]\ : dffeas
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
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X37_Y4_N45
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

-- Location: FF_X39_Y4_N41
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

-- Location: FF_X39_Y4_N47
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y4_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\);

-- Location: LABCELL_X39_Y4_N45
\PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[7]~feeder_combout\ = ( \incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \PC|DOUT[7]~feeder_combout\);

-- Location: FF_X39_Y4_N46
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \PC|DOUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

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

-- Location: LABCELL_X21_Y40_N0
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


