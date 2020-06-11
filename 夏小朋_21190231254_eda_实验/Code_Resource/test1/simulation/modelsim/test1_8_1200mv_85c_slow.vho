-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "12/16/2019 18:56:36"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test1 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : BUFFER std_logic
	);
END test1;

-- Design Ports Information
-- e	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \e~0_combout\ : std_logic;
SIGNAL \ALT_INV_e~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
e <= ww_e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_e~0_combout\ <= NOT \e~0_combout\;

-- Location: IOOBUF_X0_Y21_N9
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_e~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e~0_combout\ = (\d~input_o\ & (\c~input_o\ & (\b~input_o\ & \a~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \c~input_o\,
	datac => \b~input_o\,
	datad => \a~input_o\,
	combout => \e~0_combout\);

ww_e <= \e~output_o\;
END structure;


