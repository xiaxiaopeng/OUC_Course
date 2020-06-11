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

-- DATE "12/16/2019 22:06:59"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test3 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	dout : OUT std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic
	);
END test3;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \cout~reg0_q\ : std_logic;
SIGNAL q : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
dout <= ww_dout;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y7_N2
\dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~reg0_q\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N30
\q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~1_combout\ = (!q(3) & (q(1) $ (q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datac => q(1),
	datad => q(0),
	combout => \q~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y11_N31
\q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(1));

-- Location: LCCOMB_X1_Y11_N8
\q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~2_combout\ = (!q(3) & (q(2) $ (((q(1) & q(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(1),
	datac => q(2),
	datad => q(0),
	combout => \q~2_combout\);

-- Location: FF_X1_Y11_N9
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X1_Y11_N6
\q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~3_combout\ = (q(2) & (q(1) & (!q(3) & q(0)))) # (!q(2) & (!q(1) & (q(3) & !q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(1),
	datac => q(3),
	datad => q(0),
	combout => \q~3_combout\);

-- Location: FF_X1_Y11_N7
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X1_Y11_N28
\q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (!q(0) & (((!q(1) & !q(2))) # (!q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(1),
	datac => q(0),
	datad => q(2),
	combout => \q~0_combout\);

-- Location: FF_X1_Y11_N29
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

-- Location: LCCOMB_X1_Y11_N18
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!q(1) & (!q(0) & !q(2)))) # (!q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datab => q(0),
	datac => q(2),
	datad => q(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\rst~input_o\ & ((!\LessThan0~0_combout\))) # (!\rst~input_o\ & (\cout~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \cout~reg0_q\,
	datad => \LessThan0~0_combout\,
	combout => \cout~0_combout\);

-- Location: FF_X1_Y11_N25
\cout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cout~reg0_q\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


