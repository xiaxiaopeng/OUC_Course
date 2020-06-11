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

-- DATE "12/17/2019 10:12:24"

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

ENTITY 	test5 IS
    PORT (
	CLK_50MHz : IN std_logic;
	CLK_1Hz : BUFFER std_logic;
	CLK_1KHz : BUFFER std_logic
	);
END test5;

-- Design Ports Information
-- CLK_1Hz	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_1KHz	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL ww_CLK_1Hz : std_logic;
SIGNAL ww_CLK_1KHz : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_1Hz~output_o\ : std_logic;
SIGNAL \CLK_1KHz~output_o\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q1[0]~26_combout\ : std_logic;
SIGNAL \CLK_1Hz~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Q1~76_combout\ : std_logic;
SIGNAL \Q1[0]~27\ : std_logic;
SIGNAL \Q1[1]~28_combout\ : std_logic;
SIGNAL \Q1[1]~29\ : std_logic;
SIGNAL \Q1[2]~30_combout\ : std_logic;
SIGNAL \Q1[2]~31\ : std_logic;
SIGNAL \Q1[3]~32_combout\ : std_logic;
SIGNAL \Q1[3]~33\ : std_logic;
SIGNAL \Q1[4]~34_combout\ : std_logic;
SIGNAL \Q1[4]~35\ : std_logic;
SIGNAL \Q1[5]~36_combout\ : std_logic;
SIGNAL \Q1[5]~37\ : std_logic;
SIGNAL \Q1[6]~38_combout\ : std_logic;
SIGNAL \Q1[6]~39\ : std_logic;
SIGNAL \Q1[7]~40_combout\ : std_logic;
SIGNAL \Q1[7]~41\ : std_logic;
SIGNAL \Q1[8]~42_combout\ : std_logic;
SIGNAL \Q1[8]~43\ : std_logic;
SIGNAL \Q1[9]~44_combout\ : std_logic;
SIGNAL \Q1[9]~45\ : std_logic;
SIGNAL \Q1[10]~46_combout\ : std_logic;
SIGNAL \Q1[10]~47\ : std_logic;
SIGNAL \Q1[11]~48_combout\ : std_logic;
SIGNAL \Q1[11]~49\ : std_logic;
SIGNAL \Q1[12]~50_combout\ : std_logic;
SIGNAL \Q1[12]~51\ : std_logic;
SIGNAL \Q1[13]~52_combout\ : std_logic;
SIGNAL \Q1[13]~53\ : std_logic;
SIGNAL \Q1[14]~54_combout\ : std_logic;
SIGNAL \Q1[14]~55\ : std_logic;
SIGNAL \Q1[15]~56_combout\ : std_logic;
SIGNAL \Q1[15]~57\ : std_logic;
SIGNAL \Q1[16]~58_combout\ : std_logic;
SIGNAL \Q1[16]~59\ : std_logic;
SIGNAL \Q1[17]~60_combout\ : std_logic;
SIGNAL \Q1[17]~61\ : std_logic;
SIGNAL \Q1[18]~62_combout\ : std_logic;
SIGNAL \Q1[18]~63\ : std_logic;
SIGNAL \Q1[19]~64_combout\ : std_logic;
SIGNAL \Q1[19]~65\ : std_logic;
SIGNAL \Q1[20]~66_combout\ : std_logic;
SIGNAL \Q1[20]~67\ : std_logic;
SIGNAL \Q1[21]~68_combout\ : std_logic;
SIGNAL \Q1[21]~69\ : std_logic;
SIGNAL \Q1[22]~70_combout\ : std_logic;
SIGNAL \Q1[22]~71\ : std_logic;
SIGNAL \Q1[23]~72_combout\ : std_logic;
SIGNAL \Q1[23]~73\ : std_logic;
SIGNAL \Q1[24]~74_combout\ : std_logic;
SIGNAL \Q1[24]~75\ : std_logic;
SIGNAL \Q1[25]~77_combout\ : std_logic;
SIGNAL \CLK_1Hz~1_combout\ : std_logic;
SIGNAL \CLK_1Hz~2_combout\ : std_logic;
SIGNAL \CLK_1Hz~3_combout\ : std_logic;
SIGNAL \CLK_1Hz~4_combout\ : std_logic;
SIGNAL \CLK_1Hz~5_combout\ : std_logic;
SIGNAL \CLK_1Hz~6_combout\ : std_logic;
SIGNAL \CLK_1Hz~reg0_q\ : std_logic;
SIGNAL \Q2[0]~18_combout\ : std_logic;
SIGNAL \Q2[14]~47\ : std_logic;
SIGNAL \Q2[15]~48_combout\ : std_logic;
SIGNAL \Q2[15]~49\ : std_logic;
SIGNAL \Q2[16]~50_combout\ : std_logic;
SIGNAL \Q2[16]~51\ : std_logic;
SIGNAL \Q2[17]~52_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \Q2[0]~19\ : std_logic;
SIGNAL \Q2[1]~20_combout\ : std_logic;
SIGNAL \Q2[1]~21\ : std_logic;
SIGNAL \Q2[2]~22_combout\ : std_logic;
SIGNAL \Q2[2]~23\ : std_logic;
SIGNAL \Q2[3]~24_combout\ : std_logic;
SIGNAL \Q2[3]~25\ : std_logic;
SIGNAL \Q2[4]~26_combout\ : std_logic;
SIGNAL \Q2[4]~27\ : std_logic;
SIGNAL \Q2[5]~28_combout\ : std_logic;
SIGNAL \Q2[5]~29\ : std_logic;
SIGNAL \Q2[6]~30_combout\ : std_logic;
SIGNAL \Q2[6]~31\ : std_logic;
SIGNAL \Q2[7]~32_combout\ : std_logic;
SIGNAL \Q2[7]~33\ : std_logic;
SIGNAL \Q2[8]~34_combout\ : std_logic;
SIGNAL \Q2[8]~feeder_combout\ : std_logic;
SIGNAL \Q2[8]~35\ : std_logic;
SIGNAL \Q2[9]~36_combout\ : std_logic;
SIGNAL \Q2[9]~37\ : std_logic;
SIGNAL \Q2[10]~38_combout\ : std_logic;
SIGNAL \Q2[10]~39\ : std_logic;
SIGNAL \Q2[11]~40_combout\ : std_logic;
SIGNAL \Q2[11]~41\ : std_logic;
SIGNAL \Q2[12]~42_combout\ : std_logic;
SIGNAL \Q2[12]~43\ : std_logic;
SIGNAL \Q2[13]~44_combout\ : std_logic;
SIGNAL \Q2[13]~45\ : std_logic;
SIGNAL \Q2[14]~46_combout\ : std_logic;
SIGNAL \CLK_1KHz~0_combout\ : std_logic;
SIGNAL \CLK_1KHz~1_combout\ : std_logic;
SIGNAL \CLK_1KHz~2_combout\ : std_logic;
SIGNAL \CLK_1KHz~3_combout\ : std_logic;
SIGNAL \CLK_1KHz~reg0_q\ : std_logic;
SIGNAL Q1 : std_logic_vector(25 DOWNTO 0);
SIGNAL Q2 : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_CLK_50MHz <= CLK_50MHz;
CLK_1Hz <= ww_CLK_1Hz;
CLK_1KHz <= ww_CLK_1KHz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);

-- Location: IOOBUF_X18_Y0_N23
\CLK_1Hz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_1Hz~reg0_q\,
	devoe => ww_devoe,
	o => \CLK_1Hz~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\CLK_1KHz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_1KHz~reg0_q\,
	devoe => ww_devoe,
	o => \CLK_1KHz~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHz,
	o => \CLK_50MHz~input_o\);

-- Location: CLKCTRL_G2
\CLK_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y6_N6
\Q1[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[0]~26_combout\ = Q1(0) $ (VCC)
-- \Q1[0]~27\ = CARRY(Q1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(0),
	datad => VCC,
	combout => \Q1[0]~26_combout\,
	cout => \Q1[0]~27\);

-- Location: LCCOMB_X19_Y5_N26
\CLK_1Hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~0_combout\ = (Q1(19) & (Q1(21) & (Q1(20) & Q1(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(19),
	datab => Q1(21),
	datac => Q1(20),
	datad => Q1(22),
	combout => \CLK_1Hz~0_combout\);

-- Location: LCCOMB_X18_Y6_N22
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!Q1(15)) # (!Q1(12))) # (!Q1(13))) # (!Q1(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(14),
	datab => Q1(13),
	datac => Q1(12),
	datad => Q1(15),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y6_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!Q1(8) & (!Q1(7) & (!Q1(10) & !Q1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(8),
	datab => Q1(7),
	datac => Q1(10),
	datad => Q1(9),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y6_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!Q1(2)) # (!Q1(1))) # (!Q1(6))) # (!Q1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(0),
	datab => Q1(6),
	datac => Q1(1),
	datad => Q1(2),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y6_N4
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((\LessThan1~2_combout\) # (!Q1(4))) # (!Q1(5))) # (!Q1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(5),
	datac => Q1(4),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X18_Y6_N16
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\) # ((!Q1(11) & (\LessThan1~0_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => Q1(11),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X18_Y6_N6
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (Q1(18)) # ((Q1(17) & ((Q1(16)) # (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(18),
	datab => Q1(17),
	datac => Q1(16),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X18_Y6_N0
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!Q1(24) & (((!\LessThan1~5_combout\) # (!\CLK_1Hz~0_combout\)) # (!Q1(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(23),
	datab => \CLK_1Hz~0_combout\,
	datac => Q1(24),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X18_Y6_N18
\Q1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1~76_combout\ = (Q1(25) & !\LessThan1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(25),
	datad => \LessThan1~6_combout\,
	combout => \Q1~76_combout\);

-- Location: FF_X19_Y6_N7
\Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[0]~26_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(0));

-- Location: LCCOMB_X19_Y6_N8
\Q1[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[1]~28_combout\ = (Q1(1) & (!\Q1[0]~27\)) # (!Q1(1) & ((\Q1[0]~27\) # (GND)))
-- \Q1[1]~29\ = CARRY((!\Q1[0]~27\) # (!Q1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(1),
	datad => VCC,
	cin => \Q1[0]~27\,
	combout => \Q1[1]~28_combout\,
	cout => \Q1[1]~29\);

-- Location: FF_X19_Y6_N9
\Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[1]~28_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(1));

-- Location: LCCOMB_X19_Y6_N10
\Q1[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[2]~30_combout\ = (Q1(2) & (\Q1[1]~29\ $ (GND))) # (!Q1(2) & (!\Q1[1]~29\ & VCC))
-- \Q1[2]~31\ = CARRY((Q1(2) & !\Q1[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(2),
	datad => VCC,
	cin => \Q1[1]~29\,
	combout => \Q1[2]~30_combout\,
	cout => \Q1[2]~31\);

-- Location: FF_X19_Y6_N11
\Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[2]~30_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(2));

-- Location: LCCOMB_X19_Y6_N12
\Q1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[3]~32_combout\ = (Q1(3) & (!\Q1[2]~31\)) # (!Q1(3) & ((\Q1[2]~31\) # (GND)))
-- \Q1[3]~33\ = CARRY((!\Q1[2]~31\) # (!Q1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datad => VCC,
	cin => \Q1[2]~31\,
	combout => \Q1[3]~32_combout\,
	cout => \Q1[3]~33\);

-- Location: FF_X19_Y6_N13
\Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[3]~32_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(3));

-- Location: LCCOMB_X19_Y6_N14
\Q1[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[4]~34_combout\ = (Q1(4) & (\Q1[3]~33\ $ (GND))) # (!Q1(4) & (!\Q1[3]~33\ & VCC))
-- \Q1[4]~35\ = CARRY((Q1(4) & !\Q1[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(4),
	datad => VCC,
	cin => \Q1[3]~33\,
	combout => \Q1[4]~34_combout\,
	cout => \Q1[4]~35\);

-- Location: FF_X19_Y6_N15
\Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[4]~34_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(4));

-- Location: LCCOMB_X19_Y6_N16
\Q1[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[5]~36_combout\ = (Q1(5) & (!\Q1[4]~35\)) # (!Q1(5) & ((\Q1[4]~35\) # (GND)))
-- \Q1[5]~37\ = CARRY((!\Q1[4]~35\) # (!Q1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(5),
	datad => VCC,
	cin => \Q1[4]~35\,
	combout => \Q1[5]~36_combout\,
	cout => \Q1[5]~37\);

-- Location: FF_X19_Y6_N17
\Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[5]~36_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(5));

-- Location: LCCOMB_X19_Y6_N18
\Q1[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[6]~38_combout\ = (Q1(6) & (\Q1[5]~37\ $ (GND))) # (!Q1(6) & (!\Q1[5]~37\ & VCC))
-- \Q1[6]~39\ = CARRY((Q1(6) & !\Q1[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(6),
	datad => VCC,
	cin => \Q1[5]~37\,
	combout => \Q1[6]~38_combout\,
	cout => \Q1[6]~39\);

-- Location: FF_X19_Y6_N19
\Q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[6]~38_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(6));

-- Location: LCCOMB_X19_Y6_N20
\Q1[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[7]~40_combout\ = (Q1(7) & (!\Q1[6]~39\)) # (!Q1(7) & ((\Q1[6]~39\) # (GND)))
-- \Q1[7]~41\ = CARRY((!\Q1[6]~39\) # (!Q1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(7),
	datad => VCC,
	cin => \Q1[6]~39\,
	combout => \Q1[7]~40_combout\,
	cout => \Q1[7]~41\);

-- Location: FF_X19_Y6_N21
\Q1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[7]~40_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(7));

-- Location: LCCOMB_X19_Y6_N22
\Q1[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[8]~42_combout\ = (Q1(8) & (\Q1[7]~41\ $ (GND))) # (!Q1(8) & (!\Q1[7]~41\ & VCC))
-- \Q1[8]~43\ = CARRY((Q1(8) & !\Q1[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(8),
	datad => VCC,
	cin => \Q1[7]~41\,
	combout => \Q1[8]~42_combout\,
	cout => \Q1[8]~43\);

-- Location: FF_X19_Y6_N23
\Q1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[8]~42_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(8));

-- Location: LCCOMB_X19_Y6_N24
\Q1[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[9]~44_combout\ = (Q1(9) & (!\Q1[8]~43\)) # (!Q1(9) & ((\Q1[8]~43\) # (GND)))
-- \Q1[9]~45\ = CARRY((!\Q1[8]~43\) # (!Q1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(9),
	datad => VCC,
	cin => \Q1[8]~43\,
	combout => \Q1[9]~44_combout\,
	cout => \Q1[9]~45\);

-- Location: FF_X19_Y6_N25
\Q1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[9]~44_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(9));

-- Location: LCCOMB_X19_Y6_N26
\Q1[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[10]~46_combout\ = (Q1(10) & (\Q1[9]~45\ $ (GND))) # (!Q1(10) & (!\Q1[9]~45\ & VCC))
-- \Q1[10]~47\ = CARRY((Q1(10) & !\Q1[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(10),
	datad => VCC,
	cin => \Q1[9]~45\,
	combout => \Q1[10]~46_combout\,
	cout => \Q1[10]~47\);

-- Location: FF_X19_Y6_N27
\Q1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[10]~46_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(10));

-- Location: LCCOMB_X19_Y6_N28
\Q1[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[11]~48_combout\ = (Q1(11) & (!\Q1[10]~47\)) # (!Q1(11) & ((\Q1[10]~47\) # (GND)))
-- \Q1[11]~49\ = CARRY((!\Q1[10]~47\) # (!Q1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(11),
	datad => VCC,
	cin => \Q1[10]~47\,
	combout => \Q1[11]~48_combout\,
	cout => \Q1[11]~49\);

-- Location: FF_X19_Y6_N29
\Q1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[11]~48_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(11));

-- Location: LCCOMB_X19_Y6_N30
\Q1[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[12]~50_combout\ = (Q1(12) & (\Q1[11]~49\ $ (GND))) # (!Q1(12) & (!\Q1[11]~49\ & VCC))
-- \Q1[12]~51\ = CARRY((Q1(12) & !\Q1[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(12),
	datad => VCC,
	cin => \Q1[11]~49\,
	combout => \Q1[12]~50_combout\,
	cout => \Q1[12]~51\);

-- Location: FF_X19_Y6_N31
\Q1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[12]~50_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(12));

-- Location: LCCOMB_X19_Y5_N0
\Q1[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[13]~52_combout\ = (Q1(13) & (!\Q1[12]~51\)) # (!Q1(13) & ((\Q1[12]~51\) # (GND)))
-- \Q1[13]~53\ = CARRY((!\Q1[12]~51\) # (!Q1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(13),
	datad => VCC,
	cin => \Q1[12]~51\,
	combout => \Q1[13]~52_combout\,
	cout => \Q1[13]~53\);

-- Location: FF_X18_Y6_N25
\Q1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Q1[13]~52_combout\,
	sclr => \Q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(13));

-- Location: LCCOMB_X19_Y5_N2
\Q1[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[14]~54_combout\ = (Q1(14) & (\Q1[13]~53\ $ (GND))) # (!Q1(14) & (!\Q1[13]~53\ & VCC))
-- \Q1[14]~55\ = CARRY((Q1(14) & !\Q1[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(14),
	datad => VCC,
	cin => \Q1[13]~53\,
	combout => \Q1[14]~54_combout\,
	cout => \Q1[14]~55\);

-- Location: FF_X18_Y6_N31
\Q1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Q1[14]~54_combout\,
	sclr => \Q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(14));

-- Location: LCCOMB_X19_Y5_N4
\Q1[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[15]~56_combout\ = (Q1(15) & (!\Q1[14]~55\)) # (!Q1(15) & ((\Q1[14]~55\) # (GND)))
-- \Q1[15]~57\ = CARRY((!\Q1[14]~55\) # (!Q1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(15),
	datad => VCC,
	cin => \Q1[14]~55\,
	combout => \Q1[15]~56_combout\,
	cout => \Q1[15]~57\);

-- Location: FF_X18_Y6_N29
\Q1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Q1[15]~56_combout\,
	sclr => \Q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(15));

-- Location: LCCOMB_X19_Y5_N6
\Q1[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[16]~58_combout\ = (Q1(16) & (\Q1[15]~57\ $ (GND))) # (!Q1(16) & (!\Q1[15]~57\ & VCC))
-- \Q1[16]~59\ = CARRY((Q1(16) & !\Q1[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(16),
	datad => VCC,
	cin => \Q1[15]~57\,
	combout => \Q1[16]~58_combout\,
	cout => \Q1[16]~59\);

-- Location: FF_X18_Y6_N27
\Q1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Q1[16]~58_combout\,
	sclr => \Q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(16));

-- Location: LCCOMB_X19_Y5_N8
\Q1[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[17]~60_combout\ = (Q1(17) & (!\Q1[16]~59\)) # (!Q1(17) & ((\Q1[16]~59\) # (GND)))
-- \Q1[17]~61\ = CARRY((!\Q1[16]~59\) # (!Q1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(17),
	datad => VCC,
	cin => \Q1[16]~59\,
	combout => \Q1[17]~60_combout\,
	cout => \Q1[17]~61\);

-- Location: FF_X19_Y5_N9
\Q1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[17]~60_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(17));

-- Location: LCCOMB_X19_Y5_N10
\Q1[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[18]~62_combout\ = (Q1(18) & (\Q1[17]~61\ $ (GND))) # (!Q1(18) & (!\Q1[17]~61\ & VCC))
-- \Q1[18]~63\ = CARRY((Q1(18) & !\Q1[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(18),
	datad => VCC,
	cin => \Q1[17]~61\,
	combout => \Q1[18]~62_combout\,
	cout => \Q1[18]~63\);

-- Location: FF_X18_Y6_N13
\Q1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	asdata => \Q1[18]~62_combout\,
	sclr => \Q1~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(18));

-- Location: LCCOMB_X19_Y5_N12
\Q1[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[19]~64_combout\ = (Q1(19) & (!\Q1[18]~63\)) # (!Q1(19) & ((\Q1[18]~63\) # (GND)))
-- \Q1[19]~65\ = CARRY((!\Q1[18]~63\) # (!Q1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(19),
	datad => VCC,
	cin => \Q1[18]~63\,
	combout => \Q1[19]~64_combout\,
	cout => \Q1[19]~65\);

-- Location: FF_X19_Y5_N13
\Q1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[19]~64_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(19));

-- Location: LCCOMB_X19_Y5_N14
\Q1[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[20]~66_combout\ = (Q1(20) & (\Q1[19]~65\ $ (GND))) # (!Q1(20) & (!\Q1[19]~65\ & VCC))
-- \Q1[20]~67\ = CARRY((Q1(20) & !\Q1[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(20),
	datad => VCC,
	cin => \Q1[19]~65\,
	combout => \Q1[20]~66_combout\,
	cout => \Q1[20]~67\);

-- Location: FF_X19_Y5_N15
\Q1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[20]~66_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(20));

-- Location: LCCOMB_X19_Y5_N16
\Q1[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[21]~68_combout\ = (Q1(21) & (!\Q1[20]~67\)) # (!Q1(21) & ((\Q1[20]~67\) # (GND)))
-- \Q1[21]~69\ = CARRY((!\Q1[20]~67\) # (!Q1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(21),
	datad => VCC,
	cin => \Q1[20]~67\,
	combout => \Q1[21]~68_combout\,
	cout => \Q1[21]~69\);

-- Location: FF_X19_Y5_N17
\Q1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[21]~68_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(21));

-- Location: LCCOMB_X19_Y5_N18
\Q1[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[22]~70_combout\ = (Q1(22) & (\Q1[21]~69\ $ (GND))) # (!Q1(22) & (!\Q1[21]~69\ & VCC))
-- \Q1[22]~71\ = CARRY((Q1(22) & !\Q1[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(22),
	datad => VCC,
	cin => \Q1[21]~69\,
	combout => \Q1[22]~70_combout\,
	cout => \Q1[22]~71\);

-- Location: FF_X19_Y5_N19
\Q1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[22]~70_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(22));

-- Location: LCCOMB_X19_Y5_N20
\Q1[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[23]~72_combout\ = (Q1(23) & (!\Q1[22]~71\)) # (!Q1(23) & ((\Q1[22]~71\) # (GND)))
-- \Q1[23]~73\ = CARRY((!\Q1[22]~71\) # (!Q1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q1(23),
	datad => VCC,
	cin => \Q1[22]~71\,
	combout => \Q1[23]~72_combout\,
	cout => \Q1[23]~73\);

-- Location: FF_X19_Y5_N21
\Q1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[23]~72_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(23));

-- Location: LCCOMB_X19_Y5_N22
\Q1[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[24]~74_combout\ = (Q1(24) & (\Q1[23]~73\ $ (GND))) # (!Q1(24) & (!\Q1[23]~73\ & VCC))
-- \Q1[24]~75\ = CARRY((Q1(24) & !\Q1[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q1(24),
	datad => VCC,
	cin => \Q1[23]~73\,
	combout => \Q1[24]~74_combout\,
	cout => \Q1[24]~75\);

-- Location: FF_X19_Y5_N23
\Q1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[24]~74_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(24));

-- Location: LCCOMB_X19_Y5_N24
\Q1[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q1[25]~77_combout\ = \Q1[24]~75\ $ (Q1(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Q1(25),
	cin => \Q1[24]~75\,
	combout => \Q1[25]~77_combout\);

-- Location: FF_X19_Y5_N25
\Q1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q1[25]~77_combout\,
	sclr => \Q1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q1(25));

-- Location: LCCOMB_X18_Y6_N20
\CLK_1Hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~1_combout\ = (Q1(14) & (Q1(13) & (Q1(12) & Q1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(14),
	datab => Q1(13),
	datac => Q1(12),
	datad => Q1(11),
	combout => \CLK_1Hz~1_combout\);

-- Location: LCCOMB_X18_Y6_N10
\CLK_1Hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~2_combout\ = (Q1(16) & (\CLK_1Hz~1_combout\ & ((Q1(6)) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(16),
	datab => Q1(6),
	datac => \LessThan1~0_combout\,
	datad => \CLK_1Hz~1_combout\,
	combout => \CLK_1Hz~2_combout\);

-- Location: LCCOMB_X18_Y6_N8
\CLK_1Hz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~3_combout\ = (Q1(17)) # ((\CLK_1Hz~2_combout\) # ((Q1(16) & Q1(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(16),
	datab => Q1(15),
	datac => Q1(17),
	datad => \CLK_1Hz~2_combout\,
	combout => \CLK_1Hz~3_combout\);

-- Location: LCCOMB_X18_Y6_N14
\CLK_1Hz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~4_combout\ = (Q1(23)) # ((\CLK_1Hz~0_combout\ & (\CLK_1Hz~3_combout\ & Q1(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(23),
	datab => \CLK_1Hz~0_combout\,
	datac => \CLK_1Hz~3_combout\,
	datad => Q1(18),
	combout => \CLK_1Hz~4_combout\);

-- Location: LCCOMB_X18_Y6_N4
\CLK_1Hz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~5_combout\ = (Q1(25) & (((\CLK_1Hz~reg0_q\)))) # (!Q1(25) & (Q1(24) & ((\CLK_1Hz~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(24),
	datab => \CLK_1Hz~reg0_q\,
	datac => \CLK_1Hz~4_combout\,
	datad => Q1(25),
	combout => \CLK_1Hz~5_combout\);

-- Location: LCCOMB_X18_Y6_N2
\CLK_1Hz~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1Hz~6_combout\ = (\CLK_1Hz~5_combout\) # ((Q1(25) & \LessThan1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(25),
	datac => \CLK_1Hz~5_combout\,
	datad => \LessThan1~6_combout\,
	combout => \CLK_1Hz~6_combout\);

-- Location: FF_X18_Y6_N3
\CLK_1Hz~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_1Hz~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_1Hz~reg0_q\);

-- Location: LCCOMB_X11_Y4_N14
\Q2[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[0]~18_combout\ = Q2(0) $ (VCC)
-- \Q2[0]~19\ = CARRY(Q2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(0),
	datad => VCC,
	combout => \Q2[0]~18_combout\,
	cout => \Q2[0]~19\);

-- Location: LCCOMB_X11_Y3_N10
\Q2[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[14]~46_combout\ = (Q2(14) & (\Q2[13]~45\ $ (GND))) # (!Q2(14) & (!\Q2[13]~45\ & VCC))
-- \Q2[14]~47\ = CARRY((Q2(14) & !\Q2[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(14),
	datad => VCC,
	cin => \Q2[13]~45\,
	combout => \Q2[14]~46_combout\,
	cout => \Q2[14]~47\);

-- Location: LCCOMB_X11_Y3_N12
\Q2[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[15]~48_combout\ = (Q2(15) & (!\Q2[14]~47\)) # (!Q2(15) & ((\Q2[14]~47\) # (GND)))
-- \Q2[15]~49\ = CARRY((!\Q2[14]~47\) # (!Q2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(15),
	datad => VCC,
	cin => \Q2[14]~47\,
	combout => \Q2[15]~48_combout\,
	cout => \Q2[15]~49\);

-- Location: FF_X11_Y3_N13
\Q2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[15]~48_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(15));

-- Location: LCCOMB_X11_Y3_N14
\Q2[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[16]~50_combout\ = (Q2(16) & (\Q2[15]~49\ $ (GND))) # (!Q2(16) & (!\Q2[15]~49\ & VCC))
-- \Q2[16]~51\ = CARRY((Q2(16) & !\Q2[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(16),
	datad => VCC,
	cin => \Q2[15]~49\,
	combout => \Q2[16]~50_combout\,
	cout => \Q2[16]~51\);

-- Location: FF_X11_Y3_N15
\Q2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[16]~50_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(16));

-- Location: LCCOMB_X11_Y3_N16
\Q2[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[17]~52_combout\ = \Q2[16]~51\ $ (Q2(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Q2(17),
	cin => \Q2[16]~51\,
	combout => \Q2[17]~52_combout\);

-- Location: FF_X11_Y3_N17
\Q2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[17]~52_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(17));

-- Location: LCCOMB_X11_Y3_N20
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!Q2(15) & (!Q2(16) & !Q2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(15),
	datac => Q2(16),
	datad => Q2(17),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X11_Y3_N22
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!Q2(16) & !Q2(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q2(16),
	datad => Q2(17),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X11_Y3_N28
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!Q2(12) & (!Q2(11) & !Q2(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(12),
	datac => Q2(11),
	datad => Q2(10),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X11_Y3_N26
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (((!Q2(7) & !Q2(6))) # (!Q2(9))) # (!Q2(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(8),
	datab => Q2(9),
	datac => Q2(7),
	datad => Q2(6),
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X11_Y4_N2
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (((!Q2(3)) # (!Q2(0))) # (!Q2(1))) # (!Q2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(2),
	datab => Q2(1),
	datac => Q2(0),
	datad => Q2(3),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X11_Y4_N8
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!Q2(7) & (!Q2(5) & (!Q2(4) & \LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(7),
	datab => Q2(5),
	datac => Q2(4),
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X11_Y3_N24
\LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (\LessThan3~2_combout\ & (!Q2(13) & ((\LessThan3~5_combout\) # (\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => Q2(13),
	datac => \LessThan3~5_combout\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X11_Y3_N30
\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (!\LessThan3~0_combout\ & (((Q2(14) & !\LessThan3~6_combout\)) # (!\LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(14),
	datab => \LessThan3~0_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~6_combout\,
	combout => \LessThan3~7_combout\);

-- Location: FF_X11_Y4_N15
\Q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[0]~18_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(0));

-- Location: LCCOMB_X11_Y4_N16
\Q2[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[1]~20_combout\ = (Q2(1) & (!\Q2[0]~19\)) # (!Q2(1) & ((\Q2[0]~19\) # (GND)))
-- \Q2[1]~21\ = CARRY((!\Q2[0]~19\) # (!Q2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(1),
	datad => VCC,
	cin => \Q2[0]~19\,
	combout => \Q2[1]~20_combout\,
	cout => \Q2[1]~21\);

-- Location: FF_X11_Y4_N17
\Q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[1]~20_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(1));

-- Location: LCCOMB_X11_Y4_N18
\Q2[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[2]~22_combout\ = (Q2(2) & (\Q2[1]~21\ $ (GND))) # (!Q2(2) & (!\Q2[1]~21\ & VCC))
-- \Q2[2]~23\ = CARRY((Q2(2) & !\Q2[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(2),
	datad => VCC,
	cin => \Q2[1]~21\,
	combout => \Q2[2]~22_combout\,
	cout => \Q2[2]~23\);

-- Location: FF_X11_Y4_N19
\Q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[2]~22_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(2));

-- Location: LCCOMB_X11_Y4_N20
\Q2[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[3]~24_combout\ = (Q2(3) & (!\Q2[2]~23\)) # (!Q2(3) & ((\Q2[2]~23\) # (GND)))
-- \Q2[3]~25\ = CARRY((!\Q2[2]~23\) # (!Q2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(3),
	datad => VCC,
	cin => \Q2[2]~23\,
	combout => \Q2[3]~24_combout\,
	cout => \Q2[3]~25\);

-- Location: FF_X11_Y4_N21
\Q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[3]~24_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(3));

-- Location: LCCOMB_X11_Y4_N22
\Q2[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[4]~26_combout\ = (Q2(4) & (\Q2[3]~25\ $ (GND))) # (!Q2(4) & (!\Q2[3]~25\ & VCC))
-- \Q2[4]~27\ = CARRY((Q2(4) & !\Q2[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(4),
	datad => VCC,
	cin => \Q2[3]~25\,
	combout => \Q2[4]~26_combout\,
	cout => \Q2[4]~27\);

-- Location: FF_X11_Y4_N23
\Q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[4]~26_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(4));

-- Location: LCCOMB_X11_Y4_N24
\Q2[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[5]~28_combout\ = (Q2(5) & (!\Q2[4]~27\)) # (!Q2(5) & ((\Q2[4]~27\) # (GND)))
-- \Q2[5]~29\ = CARRY((!\Q2[4]~27\) # (!Q2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(5),
	datad => VCC,
	cin => \Q2[4]~27\,
	combout => \Q2[5]~28_combout\,
	cout => \Q2[5]~29\);

-- Location: FF_X11_Y4_N25
\Q2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[5]~28_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(5));

-- Location: LCCOMB_X11_Y4_N26
\Q2[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[6]~30_combout\ = (Q2(6) & (\Q2[5]~29\ $ (GND))) # (!Q2(6) & (!\Q2[5]~29\ & VCC))
-- \Q2[6]~31\ = CARRY((Q2(6) & !\Q2[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(6),
	datad => VCC,
	cin => \Q2[5]~29\,
	combout => \Q2[6]~30_combout\,
	cout => \Q2[6]~31\);

-- Location: FF_X11_Y4_N27
\Q2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[6]~30_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(6));

-- Location: LCCOMB_X11_Y4_N28
\Q2[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[7]~32_combout\ = (Q2(7) & (!\Q2[6]~31\)) # (!Q2(7) & ((\Q2[6]~31\) # (GND)))
-- \Q2[7]~33\ = CARRY((!\Q2[6]~31\) # (!Q2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(7),
	datad => VCC,
	cin => \Q2[6]~31\,
	combout => \Q2[7]~32_combout\,
	cout => \Q2[7]~33\);

-- Location: FF_X11_Y4_N29
\Q2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[7]~32_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(7));

-- Location: LCCOMB_X11_Y4_N30
\Q2[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[8]~34_combout\ = (Q2(8) & (\Q2[7]~33\ $ (GND))) # (!Q2(8) & (!\Q2[7]~33\ & VCC))
-- \Q2[8]~35\ = CARRY((Q2(8) & !\Q2[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(8),
	datad => VCC,
	cin => \Q2[7]~33\,
	combout => \Q2[8]~34_combout\,
	cout => \Q2[8]~35\);

-- Location: LCCOMB_X11_Y3_N18
\Q2[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[8]~feeder_combout\ = \Q2[8]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q2[8]~34_combout\,
	combout => \Q2[8]~feeder_combout\);

-- Location: FF_X11_Y3_N19
\Q2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[8]~feeder_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(8));

-- Location: LCCOMB_X11_Y3_N0
\Q2[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[9]~36_combout\ = (Q2(9) & (!\Q2[8]~35\)) # (!Q2(9) & ((\Q2[8]~35\) # (GND)))
-- \Q2[9]~37\ = CARRY((!\Q2[8]~35\) # (!Q2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(9),
	datad => VCC,
	cin => \Q2[8]~35\,
	combout => \Q2[9]~36_combout\,
	cout => \Q2[9]~37\);

-- Location: FF_X11_Y3_N1
\Q2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[9]~36_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(9));

-- Location: LCCOMB_X11_Y3_N2
\Q2[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[10]~38_combout\ = (Q2(10) & (\Q2[9]~37\ $ (GND))) # (!Q2(10) & (!\Q2[9]~37\ & VCC))
-- \Q2[10]~39\ = CARRY((Q2(10) & !\Q2[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(10),
	datad => VCC,
	cin => \Q2[9]~37\,
	combout => \Q2[10]~38_combout\,
	cout => \Q2[10]~39\);

-- Location: FF_X11_Y3_N3
\Q2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[10]~38_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(10));

-- Location: LCCOMB_X11_Y3_N4
\Q2[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[11]~40_combout\ = (Q2(11) & (!\Q2[10]~39\)) # (!Q2(11) & ((\Q2[10]~39\) # (GND)))
-- \Q2[11]~41\ = CARRY((!\Q2[10]~39\) # (!Q2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(11),
	datad => VCC,
	cin => \Q2[10]~39\,
	combout => \Q2[11]~40_combout\,
	cout => \Q2[11]~41\);

-- Location: FF_X11_Y3_N5
\Q2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[11]~40_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(11));

-- Location: LCCOMB_X11_Y3_N6
\Q2[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[12]~42_combout\ = (Q2(12) & (\Q2[11]~41\ $ (GND))) # (!Q2(12) & (!\Q2[11]~41\ & VCC))
-- \Q2[12]~43\ = CARRY((Q2(12) & !\Q2[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q2(12),
	datad => VCC,
	cin => \Q2[11]~41\,
	combout => \Q2[12]~42_combout\,
	cout => \Q2[12]~43\);

-- Location: FF_X11_Y3_N7
\Q2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[12]~42_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(12));

-- Location: LCCOMB_X11_Y3_N8
\Q2[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[13]~44_combout\ = (Q2(13) & (!\Q2[12]~43\)) # (!Q2(13) & ((\Q2[12]~43\) # (GND)))
-- \Q2[13]~45\ = CARRY((!\Q2[12]~43\) # (!Q2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Q2(13),
	datad => VCC,
	cin => \Q2[12]~43\,
	combout => \Q2[13]~44_combout\,
	cout => \Q2[13]~45\);

-- Location: FF_X11_Y3_N9
\Q2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[13]~44_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(13));

-- Location: FF_X11_Y3_N11
\Q2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \Q2[14]~46_combout\,
	sclr => \LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(14));

-- Location: LCCOMB_X11_Y4_N6
\CLK_1KHz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1KHz~0_combout\ = (Q2(6)) # ((Q2(5) & ((Q2(4)) # (Q2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(4),
	datab => Q2(6),
	datac => Q2(3),
	datad => Q2(5),
	combout => \CLK_1KHz~0_combout\);

-- Location: LCCOMB_X11_Y4_N12
\CLK_1KHz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1KHz~1_combout\ = (Q2(9)) # ((\CLK_1KHz~0_combout\ & (Q2(8) & Q2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_1KHz~0_combout\,
	datab => Q2(9),
	datac => Q2(8),
	datad => Q2(7),
	combout => \CLK_1KHz~1_combout\);

-- Location: LCCOMB_X11_Y4_N10
\CLK_1KHz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1KHz~2_combout\ = (Q2(14) & (Q2(13) & ((\CLK_1KHz~1_combout\) # (!\LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(14),
	datab => Q2(13),
	datac => \LessThan3~2_combout\,
	datad => \CLK_1KHz~1_combout\,
	combout => \CLK_1KHz~2_combout\);

-- Location: LCCOMB_X11_Y4_N4
\CLK_1KHz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_1KHz~3_combout\ = (\CLK_1KHz~2_combout\ & (((\CLK_1KHz~reg0_q\) # (!\LessThan3~7_combout\)))) # (!\CLK_1KHz~2_combout\ & (!\LessThan3~0_combout\ & ((\CLK_1KHz~reg0_q\) # (!\LessThan3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_1KHz~2_combout\,
	datab => \LessThan3~0_combout\,
	datac => \CLK_1KHz~reg0_q\,
	datad => \LessThan3~7_combout\,
	combout => \CLK_1KHz~3_combout\);

-- Location: FF_X11_Y4_N5
\CLK_1KHz~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \CLK_1KHz~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_1KHz~reg0_q\);

ww_CLK_1Hz <= \CLK_1Hz~output_o\;

ww_CLK_1KHz <= \CLK_1KHz~output_o\;
END structure;


