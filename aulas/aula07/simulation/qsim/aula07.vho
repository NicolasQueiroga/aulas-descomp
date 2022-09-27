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

-- DATE "09/27/2022 19:53:25"

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

ENTITY 	Aula07 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	DECODER_CMD : OUT std_logic_vector(11 DOWNTO 0)
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
SIGNAL ww_DECODER_CMD : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida~4_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida[9]~5_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|Sel[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal9~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida[3]~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida[5]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal6~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida[9]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~30\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida~1_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \CPU|DESVIO1|Sel[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
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
SIGNAL \CPU|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|saida[1]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal3~0_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida[9]~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida[9]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER_INSTRU|ALT_INV_saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
DECODER_CMD <= ww_DECODER_CMD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\ <= NOT \CPU|DECODER_INSTRU|Equal9~0_combout\;
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\CPU|DECODER_INSTRU|ALT_INV_saida[9]~5_combout\ <= NOT \CPU|DECODER_INSTRU|saida[9]~5_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|DECODER_INSTRU|ALT_INV_Equal6~0_combout\ <= NOT \CPU|DECODER_INSTRU|Equal6~0_combout\;
\CPU|FLIPFLOP1|ALT_INV_DOUT~q\ <= NOT \CPU|FLIPFLOP1|DOUT~q\;
\CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\ <= NOT \CPU|DESVIO1|Sel[0]~0_combout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\ <= NOT \CPU|DECODER_INSTRU|saida[3]~2_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|DECODER_INSTRU|ALT_INV_saida~4_combout\ <= NOT \CPU|DECODER_INSTRU|saida~4_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\ <= NOT \CPU|DECODER_INSTRU|saida~1_combout\;
\CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\ <= NOT \CPU|DESVIO1|Sel[1]~1_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLIPFLOP1|DOUT~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\CPU|DECODER_INSTRU|ALT_INV_saida[9]~6_combout\ <= NOT \CPU|DECODER_INSTRU|saida[9]~6_combout\;
\CPU|DECODER_INSTRU|ALT_INV_saida[3]~7_combout\ <= NOT \CPU|DECODER_INSTRU|saida[3]~7_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~3_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);

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
	o => ww_PC_OUT(0));

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
	o => ww_PC_OUT(1));

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
	o => ww_PC_OUT(4));

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

\DECODER_CMD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(0));

\DECODER_CMD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(1));

\DECODER_CMD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(2));

\DECODER_CMD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(3));

\DECODER_CMD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(4));

\DECODER_CMD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(5));

\DECODER_CMD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(6));

\DECODER_CMD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(7));

\DECODER_CMD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida~4_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(8));

\DECODER_CMD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida[9]~5_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(9));

\DECODER_CMD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(10));

\DECODER_CMD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER_INSTRU|saida~4_combout\,
	devoe => ww_devoe,
	o => ww_DECODER_CMD(11));

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

\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

\CPU|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[3]~3_combout\ = ( \CPU|END_RETORNO|DOUT\(3) & ( ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~7_combout\))) # (\CPU|DESVIO1|Sel[1]~1_combout\) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|DESVIO1|Sel[1]~1_combout\ & ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
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

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2))))))

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
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ ((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1))))))

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
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

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
	combout => \ROM1|memROM~3_combout\);

\CPU|DECODER_INSTRU|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida~4_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida~4_combout\);

\CPU|DECODER_INSTRU|saida[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida[9]~5_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida[9]~5_combout\);

\CPU|DESVIO1|Sel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel[1]~1_combout\ = (!\CPU|DECODER_INSTRU|saida~4_combout\ & \CPU|DECODER_INSTRU|saida[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~4_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida[9]~5_combout\,
	combout => \CPU|DESVIO1|Sel[1]~1_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

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
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

\CPU|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[2]~2_combout\ = ( \CPU|END_RETORNO|DOUT\(2) & ( ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~6_combout\))) # (\CPU|DESVIO1|Sel[1]~1_combout\) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|DESVIO1|Sel[1]~1_combout\ & ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
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

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))))

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
	combout => \ROM1|memROM~0_combout\);

\CPU|DECODER_INSTRU|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal9~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|Equal9~0_combout\);

\CPU|DECODER_INSTRU|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida[3]~2_combout\ = (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)))) # (\ROM1|memROM~2_combout\ & 
-- (((!\ROM1|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111101100000001011110110000000101111011000000010111101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida[3]~2_combout\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|DECODER_INSTRU|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida[5]~3_combout\ = (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ $ (((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000000000011110000000000001111000000000000111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida[5]~3_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\CPU|DECODER_INSTRU|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal6~0_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|Equal6~0_combout\);

\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = (\CPU|DECODER_INSTRU|Equal6~0_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = (\CPU|DECODER_INSTRU|Equal6~0_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))))

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
	combout => \ROM1|memROM~5_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = (\CPU|DECODER_INSTRU|Equal6~0_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = (\CPU|DECODER_INSTRU|Equal6~0_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|DECODER_INSTRU|saida[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida[9]~6_combout\ = (!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111000000000111111100000000011111110000000001111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida[9]~6_combout\);

\CPU|DECODER_INSTRU|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida[3]~7_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\)) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001100010001000100110001000100010011000100010001001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida[3]~7_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( ((!\ROM1|memROM~2_combout\ & ((!\CPU|DECODER_INSTRU|saida[3]~7_combout\))) # (\ROM1|memROM~2_combout\ & (!\CPU|DECODER_INSTRU|saida[9]~6_combout\))) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111110101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER_INSTRU|ALT_INV_saida[9]~6_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~7_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~26\ ))
-- \CPU|ULA1|Add0~30\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((!\CPU|DECODER_INSTRU|Equal9~0_combout\ & \CPU|DECODER_INSTRU|saida[3]~2_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\,
	cout => \CPU|ULA1|Add0~30\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~30\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~30\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER_INSTRU|Equal9~0_combout\,
	ena => \CPU|DECODER_INSTRU|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER_INSTRU|saida[3]~2_combout\) # (\CPU|DECODER_INSTRU|Equal9~0_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_Equal9~0_combout\,
	datab => \CPU|DECODER_INSTRU|ALT_INV_saida[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\);

\CPU|DECODER_INSTRU|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida~1_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida~1_combout\);

\CPU|FLIPFLOP1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~1_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( \CPU|FLIPFLOP1|DOUT~q\ & ( !\CPU|DECODER_INSTRU|saida~1_combout\ ) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( \CPU|FLIPFLOP1|DOUT~q\ & ( (!\CPU|DECODER_INSTRU|saida~1_combout\) # 
-- ((!\CPU|ULA1|Add0~17_sumout\ & (!\CPU|ULA1|Add0~21_sumout\ & !\CPU|ULA1|Add0~25_sumout\))) ) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( !\CPU|FLIPFLOP1|DOUT~q\ & ( (\CPU|DECODER_INSTRU|saida~1_combout\ & (!\CPU|ULA1|Add0~17_sumout\ & 
-- (!\CPU|ULA1|Add0~21_sumout\ & !\CPU|ULA1|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	combout => \CPU|FLIPFLOP1|DOUT~1_combout\);

\CPU|FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~0_combout\ = ( \CPU|DECODER_INSTRU|saida~1_combout\ & ( \CPU|FLIPFLOP1|DOUT~1_combout\ & ( (!\CPU|ULA1|Add0~1_sumout\ & (!\CPU|ULA1|Add0~5_sumout\ & (!\CPU|ULA1|Add0~9_sumout\ & !\CPU|ULA1|Add0~13_sumout\))) ) ) ) # ( 
-- !\CPU|DECODER_INSTRU|saida~1_combout\ & ( \CPU|FLIPFLOP1|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \CPU|DECODER_INSTRU|ALT_INV_saida~1_combout\,
	dataf => \CPU|FLIPFLOP1|ALT_INV_DOUT~1_combout\,
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

\CPU|DESVIO1|Sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel[0]~0_combout\ = ( \CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~2_combout\ & 
-- !\ROM1|memROM~3_combout\)))) ) ) # ( !\CPU|FLIPFLOP1|DOUT~q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & 
-- (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	combout => \CPU|DESVIO1|Sel[0]~0_combout\);

\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

\CPU|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[1]~1_combout\ = ( \CPU|END_RETORNO|DOUT\(1) & ( ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~5_combout\))) # (\CPU|DESVIO1|Sel[1]~1_combout\) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|DESVIO1|Sel[1]~1_combout\ & ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
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

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

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
	combout => \ROM1|memROM~4_combout\);

\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

\CPU|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[0]~0_combout\ = ( \CPU|END_RETORNO|DOUT\(0) & ( ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~4_combout\))) # (\CPU|DESVIO1|Sel[1]~1_combout\) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|DESVIO1|Sel[1]~1_combout\ & ((!\CPU|DESVIO1|Sel[0]~0_combout\ & ((\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|DESVIO1|Sel[0]~0_combout\ & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datac => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
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

\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

\CPU|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[4]~4_combout\ = (!\CPU|DESVIO1|Sel[0]~0_combout\ & ((!\CPU|DESVIO1|Sel[1]~1_combout\ & (\CPU|incrementaPC|Add0~17_sumout\)) # (\CPU|DESVIO1|Sel[1]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
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
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

\CPU|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[5]~5_combout\ = (!\CPU|DESVIO1|Sel[0]~0_combout\ & ((!\CPU|DESVIO1|Sel[1]~1_combout\ & (\CPU|incrementaPC|Add0~21_sumout\)) # (\CPU|DESVIO1|Sel[1]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
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
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

\CPU|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[6]~6_combout\ = (!\CPU|DESVIO1|Sel[0]~0_combout\ & ((!\CPU|DESVIO1|Sel[1]~1_combout\ & (\CPU|incrementaPC|Add0~25_sumout\)) # (\CPU|DESVIO1|Sel[1]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(6))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
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
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

\CPU|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[7]~7_combout\ = (!\CPU|DESVIO1|Sel[0]~0_combout\ & ((!\CPU|DESVIO1|Sel[1]~1_combout\ & (\CPU|incrementaPC|Add0~29_sumout\)) # (\CPU|DESVIO1|Sel[1]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DESVIO1|ALT_INV_Sel[0]~0_combout\,
	datab => \CPU|DESVIO1|ALT_INV_Sel[1]~1_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
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
	ena => \CPU|DECODER_INSTRU|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

\CPU|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|MUX_OUT[8]~8_combout\ = ( !\CPU|PC|DOUT\(0) & ( (\CPU|incrementaPC|Add0~33_sumout\ & ((!\CPU|FLIPFLOP1|DOUT~q\ & (((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2))))) # (\CPU|FLIPFLOP1|DOUT~q\ & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2))) # 
-- (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)))))))) ) ) # ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (((\CPU|incrementaPC|Add0~33_sumout\ & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2))))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & 
-- (((\CPU|incrementaPC|Add0~33_sumout\)))) # (\CPU|PC|DOUT\(2) & (\CPU|END_RETORNO|DOUT\(8) & (\CPU|PC|DOUT\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000100110010111101110110011011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	datag => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
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

\CPU|DECODER_INSTRU|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal5~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|Equal5~0_combout\);

\CPU|DECODER_INSTRU|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|saida[1]~0_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ $ (((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010000000011100001000000001110000100000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|saida[1]~0_combout\);

\CPU|DECODER_INSTRU|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal3~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|Equal3~0_combout\);

\CPU|DECODER_INSTRU|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER_INSTRU|Equal4~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER_INSTRU|Equal4~0_combout\);

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
END structure;


