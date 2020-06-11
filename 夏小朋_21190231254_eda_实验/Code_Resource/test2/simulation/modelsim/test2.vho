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

-- DATE "12/17/2019 09:03:10"

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

ENTITY 	test2 IS
    PORT (
	lt : IN std_logic;
	bi : IN std_logic;
	le : IN std_logic;
	ctr : IN std_logic_vector(3 DOWNTO 0);
	y : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END test2;

-- Design Ports Information
-- y[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctr[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctr[1]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctr[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctr[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- le	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lt	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bi	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lt : std_logic;
SIGNAL ww_bi : std_logic;
SIGNAL ww_le : std_logic;
SIGNAL ww_ctr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(6 DOWNTO 0);
SIGNAL \le~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \lt~input_o\ : std_logic;
SIGNAL \ctr[3]~input_o\ : std_logic;
SIGNAL \ctr[1]~input_o\ : std_logic;
SIGNAL \ctr[2]~input_o\ : std_logic;
SIGNAL \ctr[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \le~input_o\ : std_logic;
SIGNAL \le~inputclkctrl_outclk\ : std_logic;
SIGNAL \y[0]$latch~0_combout\ : std_logic;
SIGNAL \bi~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \y[0]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \y[1]$latch~0_combout\ : std_logic;
SIGNAL \y[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \y[2]$latch~0_combout\ : std_logic;
SIGNAL \y[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \y[3]$latch~0_combout\ : std_logic;
SIGNAL \y[3]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \y[4]$latch~0_combout\ : std_logic;
SIGNAL \y[4]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \y[5]$latch~0_combout\ : std_logic;
SIGNAL \y[5]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \y[6]$latch~0_combout\ : std_logic;
SIGNAL \y[6]$latch~combout\ : std_logic;

BEGIN

ww_lt <= lt;
ww_bi <= bi;
ww_le <= le;
ww_ctr <= ctr;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\le~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \le~input_o\);

-- Location: IOOBUF_X0_Y9_N9
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]$latch~combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1]$latch~combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2]$latch~combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]$latch~combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[4]$latch~combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[5]$latch~combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[6]$latch~combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOIBUF_X3_Y24_N22
\lt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lt,
	o => \lt~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\ctr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctr(3),
	o => \ctr[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\ctr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctr(1),
	o => \ctr[1]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\ctr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctr(2),
	o => \ctr[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\ctr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctr(0),
	o => \ctr[0]~input_o\);

-- Location: LCCOMB_X10_Y18_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ctr[1]~input_o\ & (!\ctr[3]~input_o\ & ((!\ctr[0]~input_o\) # (!\ctr[2]~input_o\)))) # (!\ctr[1]~input_o\ & (\ctr[3]~input_o\ $ ((\ctr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[3]~input_o\,
	datab => \ctr[1]~input_o\,
	datac => \ctr[2]~input_o\,
	datad => \ctr[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\le~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_le,
	o => \le~input_o\);

-- Location: CLKCTRL_G2
\le~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \le~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \le~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y18_N30
\y[0]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[0]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[0]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[0]$latch~combout\,
	combout => \y[0]$latch~0_combout\);

-- Location: IOIBUF_X11_Y24_N15
\bi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bi,
	o => \bi~input_o\);

-- Location: LCCOMB_X11_Y19_N0
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\lt~input_o\ & !\bi~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lt~input_o\,
	datad => \bi~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X10_Y18_N20
\y[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[0]$latch~combout\ = (!\comb~0_combout\ & ((\y[0]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lt~input_o\,
	datac => \y[0]$latch~0_combout\,
	datad => \comb~0_combout\,
	combout => \y[0]$latch~combout\);

-- Location: LCCOMB_X10_Y18_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ctr[2]~input_o\ & ((\ctr[3]~input_o\) # ((\ctr[1]~input_o\ & \ctr[0]~input_o\)))) # (!\ctr[2]~input_o\ & ((\ctr[1]~input_o\) # ((!\ctr[3]~input_o\ & \ctr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[3]~input_o\,
	datab => \ctr[1]~input_o\,
	datac => \ctr[2]~input_o\,
	datad => \ctr[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X10_Y18_N26
\y[1]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[1]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[1]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (!\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[1]$latch~combout\,
	combout => \y[1]$latch~0_combout\);

-- Location: LCCOMB_X10_Y18_N0
\y[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[1]$latch~combout\ = (!\comb~0_combout\ & ((\y[1]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lt~input_o\,
	datac => \y[1]$latch~0_combout\,
	datad => \comb~0_combout\,
	combout => \y[1]$latch~combout\);

-- Location: LCCOMB_X11_Y18_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ctr[0]~input_o\) # ((\ctr[1]~input_o\ & (\ctr[3]~input_o\)) # (!\ctr[1]~input_o\ & ((\ctr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[1]~input_o\,
	datab => \ctr[0]~input_o\,
	datac => \ctr[3]~input_o\,
	datad => \ctr[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X10_Y18_N6
\y[2]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[2]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[2]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (!\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[2]$latch~combout\,
	combout => \y[2]$latch~0_combout\);

-- Location: LCCOMB_X10_Y18_N28
\y[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[2]$latch~combout\ = (!\comb~0_combout\ & ((\y[2]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]$latch~0_combout\,
	datab => \lt~input_o\,
	datad => \comb~0_combout\,
	combout => \y[2]$latch~combout\);

-- Location: LCCOMB_X10_Y18_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ctr[2]~input_o\ & ((\ctr[3]~input_o\) # (\ctr[1]~input_o\ $ (!\ctr[0]~input_o\)))) # (!\ctr[2]~input_o\ & ((\ctr[1]~input_o\ & (\ctr[3]~input_o\)) # (!\ctr[1]~input_o\ & ((\ctr[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[3]~input_o\,
	datab => \ctr[1]~input_o\,
	datac => \ctr[2]~input_o\,
	datad => \ctr[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X10_Y18_N18
\y[3]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[3]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[3]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (!\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[3]$latch~combout\,
	combout => \y[3]$latch~0_combout\);

-- Location: LCCOMB_X10_Y18_N16
\y[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[3]$latch~combout\ = (!\comb~0_combout\ & ((\y[3]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[3]$latch~0_combout\,
	datac => \comb~0_combout\,
	datad => \lt~input_o\,
	combout => \y[3]$latch~combout\);

-- Location: LCCOMB_X10_Y18_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ctr[2]~input_o\ & (\ctr[3]~input_o\)) # (!\ctr[2]~input_o\ & (\ctr[1]~input_o\ & ((\ctr[3]~input_o\) # (!\ctr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[3]~input_o\,
	datab => \ctr[1]~input_o\,
	datac => \ctr[2]~input_o\,
	datad => \ctr[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X10_Y18_N12
\y[4]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[4]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[4]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (!\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[4]$latch~combout\,
	combout => \y[4]$latch~0_combout\);

-- Location: LCCOMB_X11_Y18_N18
\y[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[4]$latch~combout\ = (!\comb~0_combout\ & ((\y[4]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]$latch~0_combout\,
	datab => \lt~input_o\,
	datac => \comb~0_combout\,
	combout => \y[4]$latch~combout\);

-- Location: LCCOMB_X10_Y18_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ctr[3]~input_o\ & ((\ctr[1]~input_o\) # ((\ctr[2]~input_o\)))) # (!\ctr[3]~input_o\ & (\ctr[2]~input_o\ & (\ctr[1]~input_o\ $ (\ctr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[3]~input_o\,
	datab => \ctr[1]~input_o\,
	datac => \ctr[2]~input_o\,
	datad => \ctr[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X11_Y19_N12
\y[5]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[5]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[5]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[5]$latch~combout\,
	combout => \y[5]$latch~0_combout\);

-- Location: LCCOMB_X11_Y19_N2
\y[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[5]$latch~combout\ = (!\comb~0_combout\ & ((\y[5]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]$latch~0_combout\,
	datab => \lt~input_o\,
	datac => \comb~0_combout\,
	combout => \y[5]$latch~combout\);

-- Location: LCCOMB_X10_Y18_N2
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ctr[3]~input_o\ & ((\ctr[1]~input_o\) # ((\ctr[2]~input_o\)))) # (!\ctr[3]~input_o\ & ((\ctr[2]~input_o\ & ((!\ctr[0]~input_o\))) # (!\ctr[2]~input_o\ & (!\ctr[1]~input_o\ & \ctr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr[3]~input_o\,
	datab => \ctr[1]~input_o\,
	datac => \ctr[2]~input_o\,
	datad => \ctr[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X11_Y19_N24
\y[6]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[6]$latch~0_combout\ = (GLOBAL(\le~inputclkctrl_outclk\) & ((\y[6]$latch~combout\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (!\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \le~inputclkctrl_outclk\,
	datad => \y[6]$latch~combout\,
	combout => \y[6]$latch~0_combout\);

-- Location: LCCOMB_X11_Y19_N6
\y[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[6]$latch~combout\ = (!\comb~0_combout\ & ((\y[6]$latch~0_combout\) # (!\lt~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lt~input_o\,
	datac => \comb~0_combout\,
	datad => \y[6]$latch~0_combout\,
	combout => \y[6]$latch~combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;
END structure;


