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

-- DATE "12/17/2019 09:36:40"

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

ENTITY 	test4 IS
    PORT (
	D3 : IN std_logic;
	D2 : IN std_logic;
	D1 : IN std_logic;
	D0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	s1 : IN std_logic;
	s2 : IN std_logic;
	Q1 : BUFFER std_logic;
	Q2 : BUFFER std_logic
	);
END test4;

-- Design Ports Information
-- Q1	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \Q1~0_combout\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \Q2~0_combout\ : std_logic;

BEGIN

ww_D3 <= D3;
ww_D2 <= D2;
ww_D1 <= D1;
ww_D0 <= D0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_s1 <= s1;
ww_s2 <= s2;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X30_Y0_N23
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q1~0_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q2~0_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOIBUF_X34_Y4_N22
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\D2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\D0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X33_Y4_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\A1~input_o\ & ((\D2~input_o\) # ((\A2~input_o\)))) # (!\A1~input_o\ & (((\D0~input_o\ & !\A2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \A2~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\D3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\D1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: LCCOMB_X31_Y4_N24
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\D3~input_o\) # ((!\A2~input_o\)))) # (!\Mux0~0_combout\ & (((\A2~input_o\ & \D1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \D3~input_o\,
	datac => \A2~input_o\,
	datad => \D1~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X30_Y0_N1
\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: LCCOMB_X30_Y1_N16
\Q1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1~0_combout\ = (\Mux0~1_combout\ & !\s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datac => \s1~input_o\,
	combout => \Q1~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\s2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

-- Location: LCCOMB_X25_Y1_N24
\Q2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2~0_combout\ = (!\s2~input_o\ & \Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s2~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Q2~0_combout\);

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


