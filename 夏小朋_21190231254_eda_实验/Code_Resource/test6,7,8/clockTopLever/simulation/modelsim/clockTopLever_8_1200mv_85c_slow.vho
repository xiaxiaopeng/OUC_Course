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

-- DATE "12/19/2019 14:59:02"

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

ENTITY 	clockTopLever IS
    PORT (
	clk_50MHZ : IN std_logic;
	SET_MODE : IN std_logic;
	ADD : IN std_logic;
	C_RESET : IN std_logic;
	Data_DSP : BUFFER std_logic_vector(7 DOWNTO 0);
	E_pin1 : BUFFER std_logic;
	E_pin2 : BUFFER std_logic;
	E_pin3 : BUFFER std_logic;
	E_pin4 : BUFFER std_logic
	);
END clockTopLever;

-- Design Ports Information
-- Data_DSP[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_DSP[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_pin1	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_pin2	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_pin3	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_pin4	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_RESET	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET_MODE	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clockTopLever IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHZ : std_logic;
SIGNAL ww_SET_MODE : std_logic;
SIGNAL ww_ADD : std_logic;
SIGNAL ww_C_RESET : std_logic;
SIGNAL ww_Data_DSP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_E_pin1 : std_logic;
SIGNAL ww_E_pin2 : std_logic;
SIGNAL ww_E_pin3 : std_logic;
SIGNAL ww_E_pin4 : std_logic;
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C_RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|sig_10ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|sig_1us~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|sig_1ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|clk_ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|jin_wei~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data_DSP[0]~output_o\ : std_logic;
SIGNAL \Data_DSP[1]~output_o\ : std_logic;
SIGNAL \Data_DSP[2]~output_o\ : std_logic;
SIGNAL \Data_DSP[3]~output_o\ : std_logic;
SIGNAL \Data_DSP[4]~output_o\ : std_logic;
SIGNAL \Data_DSP[5]~output_o\ : std_logic;
SIGNAL \Data_DSP[6]~output_o\ : std_logic;
SIGNAL \Data_DSP[7]~output_o\ : std_logic;
SIGNAL \E_pin1~output_o\ : std_logic;
SIGNAL \E_pin2~output_o\ : std_logic;
SIGNAL \E_pin3~output_o\ : std_logic;
SIGNAL \E_pin4~output_o\ : std_logic;
SIGNAL \clk_50MHZ~input_o\ : std_logic;
SIGNAL \clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|q_1us[0]~6_combout\ : std_logic;
SIGNAL \u1|q_1us[0]~7\ : std_logic;
SIGNAL \u1|q_1us[1]~8_combout\ : std_logic;
SIGNAL \u1|q_1us[1]~9\ : std_logic;
SIGNAL \u1|q_1us[2]~10_combout\ : std_logic;
SIGNAL \u1|q_1us[2]~11\ : std_logic;
SIGNAL \u1|q_1us[3]~12_combout\ : std_logic;
SIGNAL \u1|q_1us[3]~13\ : std_logic;
SIGNAL \u1|q_1us[4]~14_combout\ : std_logic;
SIGNAL \u1|q_1us[4]~15\ : std_logic;
SIGNAL \u1|q_1us[5]~16_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|sig_1us~feeder_combout\ : std_logic;
SIGNAL \u1|sig_1us~q\ : std_logic;
SIGNAL \u1|sig_1us~clkctrl_outclk\ : std_logic;
SIGNAL \u1|q_1ms[0]~10_combout\ : std_logic;
SIGNAL \u1|q_1ms[0]~11\ : std_logic;
SIGNAL \u1|q_1ms[1]~12_combout\ : std_logic;
SIGNAL \u1|q_1ms[1]~13\ : std_logic;
SIGNAL \u1|q_1ms[2]~14_combout\ : std_logic;
SIGNAL \u1|q_1ms[2]~15\ : std_logic;
SIGNAL \u1|q_1ms[3]~16_combout\ : std_logic;
SIGNAL \u1|q_1ms[3]~17\ : std_logic;
SIGNAL \u1|q_1ms[4]~18_combout\ : std_logic;
SIGNAL \u1|q_1ms[4]~19\ : std_logic;
SIGNAL \u1|q_1ms[5]~20_combout\ : std_logic;
SIGNAL \u1|q_1ms[5]~21\ : std_logic;
SIGNAL \u1|q_1ms[6]~22_combout\ : std_logic;
SIGNAL \u1|q_1ms[6]~23\ : std_logic;
SIGNAL \u1|q_1ms[7]~24_combout\ : std_logic;
SIGNAL \u1|q_1ms[7]~25\ : std_logic;
SIGNAL \u1|q_1ms[8]~26_combout\ : std_logic;
SIGNAL \u1|q_1ms[8]~27\ : std_logic;
SIGNAL \u1|q_1ms[9]~28_combout\ : std_logic;
SIGNAL \u1|LessThan1~1_combout\ : std_logic;
SIGNAL \u1|LessThan1~0_combout\ : std_logic;
SIGNAL \u1|LessThan1~2_combout\ : std_logic;
SIGNAL \u1|sig_1ms~feeder_combout\ : std_logic;
SIGNAL \u1|sig_1ms~q\ : std_logic;
SIGNAL \u1|clk_ms~feeder_combout\ : std_logic;
SIGNAL \u1|clk_ms~q\ : std_logic;
SIGNAL \u1|clk_ms~clkctrl_outclk\ : std_logic;
SIGNAL \SET_MODE~input_o\ : std_logic;
SIGNAL \u5|COUNT~6_combout\ : std_logic;
SIGNAL \u5|COUNT~7_combout\ : std_logic;
SIGNAL \u5|COUNT~2_combout\ : std_logic;
SIGNAL \u5|COUNT~3_combout\ : std_logic;
SIGNAL \u5|COUNT~4_combout\ : std_logic;
SIGNAL \u5|COUNT~5_combout\ : std_logic;
SIGNAL \u5|COUNT~0_combout\ : std_logic;
SIGNAL \u5|COUNT~1_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~0_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~1_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~feeder_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~q\ : std_logic;
SIGNAL \Q2[1]~feeder_combout\ : std_logic;
SIGNAL \Q2~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \COUNTER_MID~1_combout\ : std_logic;
SIGNAL \MEMORY[0]~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \COUNTER_MID~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \COUNTER_MID~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \E_pin3~0_combout\ : std_logic;
SIGNAL \MEMORY[1]~0_combout\ : std_logic;
SIGNAL \Data_DSP~0_combout\ : std_logic;
SIGNAL \Data_DSP~1_combout\ : std_logic;
SIGNAL \Data_DSP~2_combout\ : std_logic;
SIGNAL \ADD~input_o\ : std_logic;
SIGNAL \u6|COUNT~2_combout\ : std_logic;
SIGNAL \u6|COUNT~3_combout\ : std_logic;
SIGNAL \u6|COUNT~4_combout\ : std_logic;
SIGNAL \u6|COUNT~5_combout\ : std_logic;
SIGNAL \u6|COUNT~6_combout\ : std_logic;
SIGNAL \u6|COUNT~7_combout\ : std_logic;
SIGNAL \u6|COUNT~0_combout\ : std_logic;
SIGNAL \u6|COUNT~1_combout\ : std_logic;
SIGNAL \u6|KEY_OUT~0_combout\ : std_logic;
SIGNAL \u6|KEY_OUT~1_combout\ : std_logic;
SIGNAL \u6|KEY_OUT~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \u1|sig_1ms~clkctrl_outclk\ : std_logic;
SIGNAL \u1|q_10ms~0_combout\ : std_logic;
SIGNAL \u1|q_10ms~2_combout\ : std_logic;
SIGNAL \u1|q_10ms~3_combout\ : std_logic;
SIGNAL \u1|q_10ms~1_combout\ : std_logic;
SIGNAL \u1|LessThan2~0_combout\ : std_logic;
SIGNAL \u1|sig_10ms~q\ : std_logic;
SIGNAL \u1|sig_10ms~clkctrl_outclk\ : std_logic;
SIGNAL \u1|q_1s[0]~7_combout\ : std_logic;
SIGNAL \u1|q_1s[0]~8\ : std_logic;
SIGNAL \u1|q_1s[1]~9_combout\ : std_logic;
SIGNAL \u1|q_1s[1]~10\ : std_logic;
SIGNAL \u1|q_1s[2]~11_combout\ : std_logic;
SIGNAL \u1|q_1s[2]~12\ : std_logic;
SIGNAL \u1|q_1s[3]~13_combout\ : std_logic;
SIGNAL \u1|q_1s[3]~14\ : std_logic;
SIGNAL \u1|q_1s[4]~15_combout\ : std_logic;
SIGNAL \u1|q_1s[4]~16\ : std_logic;
SIGNAL \u1|q_1s[5]~17_combout\ : std_logic;
SIGNAL \u1|q_1s[5]~18\ : std_logic;
SIGNAL \u1|q_1s[6]~19_combout\ : std_logic;
SIGNAL \u1|LessThan3~0_combout\ : std_logic;
SIGNAL \u1|LessThan3~1_combout\ : std_logic;
SIGNAL \u1|sig_1s~feeder_combout\ : std_logic;
SIGNAL \u1|sig_1s~q\ : std_logic;
SIGNAL \u1|clk_second~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \u2|COUNTER_GE~0_combout\ : std_logic;
SIGNAL \C_RESET~input_o\ : std_logic;
SIGNAL \C_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|COUNTER_GE~2_combout\ : std_logic;
SIGNAL \u2|COUNTER_GE~3_combout\ : std_logic;
SIGNAL \u2|COUNTER_GE~1_combout\ : std_logic;
SIGNAL \u2|jin_wei~0_combout\ : std_logic;
SIGNAL \u2|jin_wei~q\ : std_logic;
SIGNAL \u2|jin_wei~clkctrl_outclk\ : std_logic;
SIGNAL \u3|COUNTER_SHI~0_combout\ : std_logic;
SIGNAL \u3|COUNTER_SHI~2_combout\ : std_logic;
SIGNAL \u3|COUNTER_SHI~1_combout\ : std_logic;
SIGNAL \u3|jin_wei~0_combout\ : std_logic;
SIGNAL \u3|jin_wei~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \u4|COUNT_GE~3_combout\ : std_logic;
SIGNAL \u4|COUNT_GE~1_combout\ : std_logic;
SIGNAL \u4|COUNT_GE~0_combout\ : std_logic;
SIGNAL \u4|COUNT_GE~2_combout\ : std_logic;
SIGNAL \u9|Mux6~0_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~8_combout\ : std_logic;
SIGNAL \u4|LessThan0~0_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI[2]~2_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI[2]~3_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI[2]~4_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~5_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~6_combout\ : std_logic;
SIGNAL \u4|Add1~0_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~7_combout\ : std_logic;
SIGNAL \u10|Mux6~0_combout\ : std_logic;
SIGNAL \Data_DSP~3_combout\ : std_logic;
SIGNAL \u8|Mux6~0_combout\ : std_logic;
SIGNAL \u7|Mux6~0_combout\ : std_logic;
SIGNAL \Data_DSP~4_combout\ : std_logic;
SIGNAL \u9|Mux5~0_combout\ : std_logic;
SIGNAL \u10|Mux5~0_combout\ : std_logic;
SIGNAL \Data_DSP~5_combout\ : std_logic;
SIGNAL \u8|Mux5~0_combout\ : std_logic;
SIGNAL \u7|Mux5~0_combout\ : std_logic;
SIGNAL \Data_DSP~6_combout\ : std_logic;
SIGNAL \u7|Mux4~0_combout\ : std_logic;
SIGNAL \u10|Mux4~0_combout\ : std_logic;
SIGNAL \u9|Mux4~0_combout\ : std_logic;
SIGNAL \Data_DSP~7_combout\ : std_logic;
SIGNAL \u8|Mux4~0_combout\ : std_logic;
SIGNAL \Data_DSP~8_combout\ : std_logic;
SIGNAL \u8|Mux3~0_combout\ : std_logic;
SIGNAL \u9|Mux3~0_combout\ : std_logic;
SIGNAL \u10|Mux3~0_combout\ : std_logic;
SIGNAL \Data_DSP~9_combout\ : std_logic;
SIGNAL \u7|Mux3~0_combout\ : std_logic;
SIGNAL \Data_DSP~10_combout\ : std_logic;
SIGNAL \u8|Mux2~0_combout\ : std_logic;
SIGNAL \u9|Mux2~0_combout\ : std_logic;
SIGNAL \u10|Mux2~0_combout\ : std_logic;
SIGNAL \Data_DSP~11_combout\ : std_logic;
SIGNAL \u7|Mux2~0_combout\ : std_logic;
SIGNAL \Data_DSP~12_combout\ : std_logic;
SIGNAL \u8|Mux1~0_combout\ : std_logic;
SIGNAL \u9|Mux1~0_combout\ : std_logic;
SIGNAL \u10|Mux1~0_combout\ : std_logic;
SIGNAL \Data_DSP~13_combout\ : std_logic;
SIGNAL \u7|Mux1~0_combout\ : std_logic;
SIGNAL \Data_DSP~14_combout\ : std_logic;
SIGNAL \u7|Mux0~0_combout\ : std_logic;
SIGNAL \u8|Mux0~0_combout\ : std_logic;
SIGNAL \u10|Mux0~0_combout\ : std_logic;
SIGNAL \u9|Mux0~0_combout\ : std_logic;
SIGNAL \Data_DSP~15_combout\ : std_logic;
SIGNAL \Data_DSP~16_combout\ : std_logic;
SIGNAL \u1|clk_us~q\ : std_logic;
SIGNAL \E_pin1~2_combout\ : std_logic;
SIGNAL \E_pin1~4_combout\ : std_logic;
SIGNAL \E_pin1~3_combout\ : std_logic;
SIGNAL \E_pin1$latch~combout\ : std_logic;
SIGNAL \E_pin2~0_combout\ : std_logic;
SIGNAL \E_pin2~1_combout\ : std_logic;
SIGNAL \E_pin2$latch~combout\ : std_logic;
SIGNAL \E_pin3~1_combout\ : std_logic;
SIGNAL \E_pin3~2_combout\ : std_logic;
SIGNAL \E_pin3$latch~combout\ : std_logic;
SIGNAL \E_pin4~0_combout\ : std_logic;
SIGNAL \E_pin4~1_combout\ : std_logic;
SIGNAL \E_pin4$latch~combout\ : std_logic;
SIGNAL \u4|COUNT_GE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|q_1ms\ : std_logic_vector(9 DOWNTO 0);
SIGNAL MEMORY : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|q_1us\ : std_logic_vector(5 DOWNTO 0);
SIGNAL COUNTER_MID : std_logic_vector(7 DOWNTO 0);
SIGNAL \u4|COUNT_SHI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|COUNTER_GE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|q_1s\ : std_logic_vector(6 DOWNTO 0);
SIGNAL Q2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|COUNTER_SHI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u6|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|q_10ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|ALT_INV_KEY_OUT~q\ : std_logic;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_SET_MODE <= SET_MODE;
ww_ADD <= ADD;
ww_C_RESET <= C_RESET;
Data_DSP <= ww_Data_DSP;
E_pin1 <= ww_E_pin1;
E_pin2 <= ww_E_pin2;
E_pin3 <= ww_E_pin3;
E_pin4 <= ww_E_pin4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\C_RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C_RESET~input_o\);

\u1|sig_10ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|sig_10ms~q\);

\u1|sig_1us~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|sig_1us~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\u1|sig_1ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|sig_1ms~q\);

\u1|clk_ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clk_ms~q\);

\u2|jin_wei~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|jin_wei~q\);
\u5|ALT_INV_KEY_OUT~q\ <= NOT \u5|KEY_OUT~q\;

-- Location: IOOBUF_X16_Y24_N16
\Data_DSP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~4_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\Data_DSP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~6_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\Data_DSP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~8_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Data_DSP[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~10_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\Data_DSP[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~12_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\Data_DSP[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~14_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\Data_DSP[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_DSP~16_combout\,
	devoe => ww_devoe,
	o => \Data_DSP[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\Data_DSP[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data_DSP[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\E_pin1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_pin1$latch~combout\,
	devoe => ww_devoe,
	o => \E_pin1~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\E_pin2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_pin2$latch~combout\,
	devoe => ww_devoe,
	o => \E_pin2~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\E_pin3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_pin3$latch~combout\,
	devoe => ww_devoe,
	o => \E_pin3~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\E_pin4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_pin4$latch~combout\,
	devoe => ww_devoe,
	o => \E_pin4~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50MHZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHZ,
	o => \clk_50MHZ~input_o\);

-- Location: CLKCTRL_G2
\clk_50MHZ~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHZ~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y14_N12
\u1|q_1us[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[0]~6_combout\ = \u1|q_1us\(0) $ (VCC)
-- \u1|q_1us[0]~7\ = CARRY(\u1|q_1us\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1us\(0),
	datad => VCC,
	combout => \u1|q_1us[0]~6_combout\,
	cout => \u1|q_1us[0]~7\);

-- Location: FF_X13_Y14_N13
\u1|q_1us[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|q_1us[0]~6_combout\,
	sclr => \u1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1us\(0));

-- Location: LCCOMB_X13_Y14_N14
\u1|q_1us[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[1]~8_combout\ = (\u1|q_1us\(1) & (!\u1|q_1us[0]~7\)) # (!\u1|q_1us\(1) & ((\u1|q_1us[0]~7\) # (GND)))
-- \u1|q_1us[1]~9\ = CARRY((!\u1|q_1us[0]~7\) # (!\u1|q_1us\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1us\(1),
	datad => VCC,
	cin => \u1|q_1us[0]~7\,
	combout => \u1|q_1us[1]~8_combout\,
	cout => \u1|q_1us[1]~9\);

-- Location: FF_X13_Y14_N15
\u1|q_1us[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|q_1us[1]~8_combout\,
	sclr => \u1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1us\(1));

-- Location: LCCOMB_X13_Y14_N16
\u1|q_1us[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[2]~10_combout\ = (\u1|q_1us\(2) & (\u1|q_1us[1]~9\ $ (GND))) # (!\u1|q_1us\(2) & (!\u1|q_1us[1]~9\ & VCC))
-- \u1|q_1us[2]~11\ = CARRY((\u1|q_1us\(2) & !\u1|q_1us[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1us\(2),
	datad => VCC,
	cin => \u1|q_1us[1]~9\,
	combout => \u1|q_1us[2]~10_combout\,
	cout => \u1|q_1us[2]~11\);

-- Location: FF_X13_Y14_N17
\u1|q_1us[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|q_1us[2]~10_combout\,
	sclr => \u1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1us\(2));

-- Location: LCCOMB_X13_Y14_N18
\u1|q_1us[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[3]~12_combout\ = (\u1|q_1us\(3) & (!\u1|q_1us[2]~11\)) # (!\u1|q_1us\(3) & ((\u1|q_1us[2]~11\) # (GND)))
-- \u1|q_1us[3]~13\ = CARRY((!\u1|q_1us[2]~11\) # (!\u1|q_1us\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1us\(3),
	datad => VCC,
	cin => \u1|q_1us[2]~11\,
	combout => \u1|q_1us[3]~12_combout\,
	cout => \u1|q_1us[3]~13\);

-- Location: FF_X13_Y14_N19
\u1|q_1us[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|q_1us[3]~12_combout\,
	sclr => \u1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1us\(3));

-- Location: LCCOMB_X13_Y14_N20
\u1|q_1us[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[4]~14_combout\ = (\u1|q_1us\(4) & (\u1|q_1us[3]~13\ $ (GND))) # (!\u1|q_1us\(4) & (!\u1|q_1us[3]~13\ & VCC))
-- \u1|q_1us[4]~15\ = CARRY((\u1|q_1us\(4) & !\u1|q_1us[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1us\(4),
	datad => VCC,
	cin => \u1|q_1us[3]~13\,
	combout => \u1|q_1us[4]~14_combout\,
	cout => \u1|q_1us[4]~15\);

-- Location: FF_X13_Y14_N21
\u1|q_1us[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|q_1us[4]~14_combout\,
	sclr => \u1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1us\(4));

-- Location: LCCOMB_X13_Y14_N22
\u1|q_1us[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[5]~16_combout\ = \u1|q_1us\(5) $ (\u1|q_1us[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1us\(5),
	cin => \u1|q_1us[4]~15\,
	combout => \u1|q_1us[5]~16_combout\);

-- Location: FF_X13_Y14_N23
\u1|q_1us[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|q_1us[5]~16_combout\,
	sclr => \u1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1us\(5));

-- Location: LCCOMB_X13_Y14_N28
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|q_1us\(0) & (!\u1|q_1us\(2) & (!\u1|q_1us\(1) & !\u1|q_1us\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1us\(0),
	datab => \u1|q_1us\(2),
	datac => \u1|q_1us\(1),
	datad => \u1|q_1us\(3),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y14_N24
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (\u1|q_1us\(4) & (\u1|q_1us\(5) & !\u1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1us\(4),
	datac => \u1|q_1us\(5),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y14_N26
\u1|sig_1us~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sig_1us~feeder_combout\ = \u1|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|LessThan0~1_combout\,
	combout => \u1|sig_1us~feeder_combout\);

-- Location: FF_X13_Y14_N27
\u1|sig_1us\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|sig_1us~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_1us~q\);

-- Location: CLKCTRL_G1
\u1|sig_1us~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|sig_1us~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|sig_1us~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y14_N2
\u1|q_1ms[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[0]~10_combout\ = \u1|q_1ms\(0) $ (VCC)
-- \u1|q_1ms[0]~11\ = CARRY(\u1|q_1ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(0),
	datad => VCC,
	combout => \u1|q_1ms[0]~10_combout\,
	cout => \u1|q_1ms[0]~11\);

-- Location: FF_X26_Y14_N3
\u1|q_1ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[0]~10_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(0));

-- Location: LCCOMB_X26_Y14_N4
\u1|q_1ms[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[1]~12_combout\ = (\u1|q_1ms\(1) & (!\u1|q_1ms[0]~11\)) # (!\u1|q_1ms\(1) & ((\u1|q_1ms[0]~11\) # (GND)))
-- \u1|q_1ms[1]~13\ = CARRY((!\u1|q_1ms[0]~11\) # (!\u1|q_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(1),
	datad => VCC,
	cin => \u1|q_1ms[0]~11\,
	combout => \u1|q_1ms[1]~12_combout\,
	cout => \u1|q_1ms[1]~13\);

-- Location: FF_X26_Y14_N5
\u1|q_1ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[1]~12_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(1));

-- Location: LCCOMB_X26_Y14_N6
\u1|q_1ms[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[2]~14_combout\ = (\u1|q_1ms\(2) & (\u1|q_1ms[1]~13\ $ (GND))) # (!\u1|q_1ms\(2) & (!\u1|q_1ms[1]~13\ & VCC))
-- \u1|q_1ms[2]~15\ = CARRY((\u1|q_1ms\(2) & !\u1|q_1ms[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(2),
	datad => VCC,
	cin => \u1|q_1ms[1]~13\,
	combout => \u1|q_1ms[2]~14_combout\,
	cout => \u1|q_1ms[2]~15\);

-- Location: FF_X26_Y14_N7
\u1|q_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[2]~14_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(2));

-- Location: LCCOMB_X26_Y14_N8
\u1|q_1ms[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[3]~16_combout\ = (\u1|q_1ms\(3) & (!\u1|q_1ms[2]~15\)) # (!\u1|q_1ms\(3) & ((\u1|q_1ms[2]~15\) # (GND)))
-- \u1|q_1ms[3]~17\ = CARRY((!\u1|q_1ms[2]~15\) # (!\u1|q_1ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(3),
	datad => VCC,
	cin => \u1|q_1ms[2]~15\,
	combout => \u1|q_1ms[3]~16_combout\,
	cout => \u1|q_1ms[3]~17\);

-- Location: FF_X26_Y14_N9
\u1|q_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[3]~16_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(3));

-- Location: LCCOMB_X26_Y14_N10
\u1|q_1ms[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[4]~18_combout\ = (\u1|q_1ms\(4) & (\u1|q_1ms[3]~17\ $ (GND))) # (!\u1|q_1ms\(4) & (!\u1|q_1ms[3]~17\ & VCC))
-- \u1|q_1ms[4]~19\ = CARRY((\u1|q_1ms\(4) & !\u1|q_1ms[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(4),
	datad => VCC,
	cin => \u1|q_1ms[3]~17\,
	combout => \u1|q_1ms[4]~18_combout\,
	cout => \u1|q_1ms[4]~19\);

-- Location: FF_X26_Y14_N11
\u1|q_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[4]~18_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(4));

-- Location: LCCOMB_X26_Y14_N12
\u1|q_1ms[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[5]~20_combout\ = (\u1|q_1ms\(5) & (!\u1|q_1ms[4]~19\)) # (!\u1|q_1ms\(5) & ((\u1|q_1ms[4]~19\) # (GND)))
-- \u1|q_1ms[5]~21\ = CARRY((!\u1|q_1ms[4]~19\) # (!\u1|q_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(5),
	datad => VCC,
	cin => \u1|q_1ms[4]~19\,
	combout => \u1|q_1ms[5]~20_combout\,
	cout => \u1|q_1ms[5]~21\);

-- Location: FF_X26_Y14_N13
\u1|q_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[5]~20_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(5));

-- Location: LCCOMB_X26_Y14_N14
\u1|q_1ms[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[6]~22_combout\ = (\u1|q_1ms\(6) & (\u1|q_1ms[5]~21\ $ (GND))) # (!\u1|q_1ms\(6) & (!\u1|q_1ms[5]~21\ & VCC))
-- \u1|q_1ms[6]~23\ = CARRY((\u1|q_1ms\(6) & !\u1|q_1ms[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(6),
	datad => VCC,
	cin => \u1|q_1ms[5]~21\,
	combout => \u1|q_1ms[6]~22_combout\,
	cout => \u1|q_1ms[6]~23\);

-- Location: FF_X26_Y14_N15
\u1|q_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[6]~22_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(6));

-- Location: LCCOMB_X26_Y14_N16
\u1|q_1ms[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[7]~24_combout\ = (\u1|q_1ms\(7) & (!\u1|q_1ms[6]~23\)) # (!\u1|q_1ms\(7) & ((\u1|q_1ms[6]~23\) # (GND)))
-- \u1|q_1ms[7]~25\ = CARRY((!\u1|q_1ms[6]~23\) # (!\u1|q_1ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(7),
	datad => VCC,
	cin => \u1|q_1ms[6]~23\,
	combout => \u1|q_1ms[7]~24_combout\,
	cout => \u1|q_1ms[7]~25\);

-- Location: FF_X26_Y14_N17
\u1|q_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[7]~24_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(7));

-- Location: LCCOMB_X26_Y14_N18
\u1|q_1ms[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[8]~26_combout\ = (\u1|q_1ms\(8) & (\u1|q_1ms[7]~25\ $ (GND))) # (!\u1|q_1ms\(8) & (!\u1|q_1ms[7]~25\ & VCC))
-- \u1|q_1ms[8]~27\ = CARRY((\u1|q_1ms\(8) & !\u1|q_1ms[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(8),
	datad => VCC,
	cin => \u1|q_1ms[7]~25\,
	combout => \u1|q_1ms[8]~26_combout\,
	cout => \u1|q_1ms[8]~27\);

-- Location: FF_X26_Y14_N19
\u1|q_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[8]~26_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(8));

-- Location: LCCOMB_X26_Y14_N20
\u1|q_1ms[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[9]~28_combout\ = \u1|q_1ms[8]~27\ $ (\u1|q_1ms\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|q_1ms\(9),
	cin => \u1|q_1ms[8]~27\,
	combout => \u1|q_1ms[9]~28_combout\);

-- Location: FF_X26_Y14_N21
\u1|q_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|q_1ms[9]~28_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1ms\(9));

-- Location: LCCOMB_X26_Y14_N26
\u1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~1_combout\ = (!\u1|q_1ms\(3) & (((!\u1|q_1ms\(0)) # (!\u1|q_1ms\(1))) # (!\u1|q_1ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(2),
	datab => \u1|q_1ms\(1),
	datac => \u1|q_1ms\(3),
	datad => \u1|q_1ms\(0),
	combout => \u1|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y14_N24
\u1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~0_combout\ = (((!\u1|q_1ms\(7)) # (!\u1|q_1ms\(6))) # (!\u1|q_1ms\(8))) # (!\u1|q_1ms\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(5),
	datab => \u1|q_1ms\(8),
	datac => \u1|q_1ms\(6),
	datad => \u1|q_1ms\(7),
	combout => \u1|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y14_N22
\u1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~2_combout\ = (\u1|q_1ms\(9) & (!\u1|LessThan1~0_combout\ & ((\u1|q_1ms\(4)) # (!\u1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(4),
	datab => \u1|q_1ms\(9),
	datac => \u1|LessThan1~1_combout\,
	datad => \u1|LessThan1~0_combout\,
	combout => \u1|LessThan1~2_combout\);

-- Location: LCCOMB_X26_Y14_N30
\u1|sig_1ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sig_1ms~feeder_combout\ = \u1|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|LessThan1~2_combout\,
	combout => \u1|sig_1ms~feeder_combout\);

-- Location: FF_X26_Y14_N31
\u1|sig_1ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1us~clkctrl_outclk\,
	d => \u1|sig_1ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_1ms~q\);

-- Location: LCCOMB_X23_Y14_N8
\u1|clk_ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clk_ms~feeder_combout\ = \u1|sig_1ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|sig_1ms~q\,
	combout => \u1|clk_ms~feeder_combout\);

-- Location: FF_X23_Y14_N9
\u1|clk_ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|clk_ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_ms~q\);

-- Location: CLKCTRL_G7
\u1|clk_ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|clk_ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|clk_ms~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\SET_MODE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_MODE,
	o => \SET_MODE~input_o\);

-- Location: LCCOMB_X25_Y13_N22
\u5|COUNT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~6_combout\ = \u5|COUNT\(0) $ ((((!\u5|COUNT\(2) & !\u5|COUNT\(1))) # (!\u5|COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(2),
	datab => \u5|COUNT\(0),
	datac => \u5|COUNT\(1),
	datad => \u5|COUNT\(3),
	combout => \u5|COUNT~6_combout\);

-- Location: LCCOMB_X25_Y13_N12
\u5|COUNT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~7_combout\ = (!\SET_MODE~input_o\ & \u5|COUNT~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datac => \u5|COUNT~6_combout\,
	combout => \u5|COUNT~7_combout\);

-- Location: FF_X25_Y13_N13
\u5|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u5|COUNT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|COUNT\(0));

-- Location: LCCOMB_X25_Y13_N28
\u5|COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~2_combout\ = (\u5|COUNT\(0) & ((\u5|COUNT\(1) & ((\u5|COUNT\(3)))) # (!\u5|COUNT\(1) & ((!\u5|COUNT\(3)) # (!\u5|COUNT\(2)))))) # (!\u5|COUNT\(0) & (((\u5|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(2),
	datab => \u5|COUNT\(0),
	datac => \u5|COUNT\(1),
	datad => \u5|COUNT\(3),
	combout => \u5|COUNT~2_combout\);

-- Location: LCCOMB_X25_Y13_N14
\u5|COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~3_combout\ = (!\SET_MODE~input_o\ & \u5|COUNT~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datad => \u5|COUNT~2_combout\,
	combout => \u5|COUNT~3_combout\);

-- Location: FF_X25_Y13_N15
\u5|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u5|COUNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|COUNT\(1));

-- Location: LCCOMB_X25_Y13_N16
\u5|COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~4_combout\ = (\u5|COUNT\(3)) # (!\u5|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(0),
	datad => \u5|COUNT\(3),
	combout => \u5|COUNT~4_combout\);

-- Location: LCCOMB_X25_Y13_N26
\u5|COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~5_combout\ = (!\SET_MODE~input_o\ & (\u5|COUNT\(2) $ (((\u5|COUNT\(1) & !\u5|COUNT~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datab => \u5|COUNT\(1),
	datac => \u5|COUNT\(2),
	datad => \u5|COUNT~4_combout\,
	combout => \u5|COUNT~5_combout\);

-- Location: FF_X25_Y13_N27
\u5|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u5|COUNT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|COUNT\(2));

-- Location: LCCOMB_X25_Y13_N24
\u5|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~0_combout\ = (\u5|COUNT\(3)) # ((\u5|COUNT\(2) & (\u5|COUNT\(0) & \u5|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(2),
	datab => \u5|COUNT\(0),
	datac => \u5|COUNT\(1),
	datad => \u5|COUNT\(3),
	combout => \u5|COUNT~0_combout\);

-- Location: LCCOMB_X25_Y13_N18
\u5|COUNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~1_combout\ = (!\SET_MODE~input_o\ & \u5|COUNT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datad => \u5|COUNT~0_combout\,
	combout => \u5|COUNT~1_combout\);

-- Location: FF_X25_Y13_N19
\u5|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u5|COUNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|COUNT\(3));

-- Location: LCCOMB_X25_Y13_N10
\u5|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|KEY_OUT~0_combout\ = (!\u5|COUNT\(2) & (!\SET_MODE~input_o\ & (!\u5|COUNT\(1) & !\u5|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(2),
	datab => \SET_MODE~input_o\,
	datac => \u5|COUNT\(1),
	datad => \u5|COUNT\(0),
	combout => \u5|KEY_OUT~0_combout\);

-- Location: LCCOMB_X25_Y13_N20
\u5|KEY_OUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|KEY_OUT~1_combout\ = (\SET_MODE~input_o\ & ((\u5|KEY_OUT~q\) # ((\u5|COUNT\(3) & \u5|KEY_OUT~0_combout\)))) # (!\SET_MODE~input_o\ & (\u5|COUNT\(3) & ((\u5|KEY_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datab => \u5|COUNT\(3),
	datac => \u5|KEY_OUT~q\,
	datad => \u5|KEY_OUT~0_combout\,
	combout => \u5|KEY_OUT~1_combout\);

-- Location: LCCOMB_X25_Y13_N0
\u5|KEY_OUT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|KEY_OUT~feeder_combout\ = \u5|KEY_OUT~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|KEY_OUT~1_combout\,
	combout => \u5|KEY_OUT~feeder_combout\);

-- Location: FF_X25_Y13_N1
\u5|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u5|KEY_OUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|KEY_OUT~q\);

-- Location: LCCOMB_X24_Y14_N30
\Q2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2[1]~feeder_combout\ = \Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~0_combout\,
	combout => \Q2[1]~feeder_combout\);

-- Location: FF_X24_Y14_N31
\Q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_KEY_OUT~q\,
	d => \Q2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(1));

-- Location: LCCOMB_X24_Y14_N10
\Q2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q2~0_combout\ = (!Q2(0) & !Q2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q2(0),
	datad => Q2(1),
	combout => \Q2~0_combout\);

-- Location: FF_X24_Y14_N11
\Q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_KEY_OUT~q\,
	d => \Q2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q2(0));

-- Location: LCCOMB_X24_Y14_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!Q2(1) & Q2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q2(1),
	datad => Q2(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (COUNTER_MID(4) & (!\Add1~5\)) # (!COUNTER_MID(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!COUNTER_MID(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER_MID(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X22_Y14_N20
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (COUNTER_MID(5) & (\Add1~7\ $ (GND))) # (!COUNTER_MID(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((COUNTER_MID(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X22_Y14_N21
\COUNTER_MID[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(5));

-- Location: LCCOMB_X22_Y14_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (COUNTER_MID(6) & (!\Add1~9\)) # (!COUNTER_MID(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!COUNTER_MID(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X22_Y14_N6
\COUNTER_MID~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_MID~1_combout\ = (\Add1~10_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add1~10_combout\,
	combout => \COUNTER_MID~1_combout\);

-- Location: FF_X22_Y14_N7
\COUNTER_MID[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \COUNTER_MID~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(6));

-- Location: LCCOMB_X23_Y14_N30
\MEMORY[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORY[0]~1_combout\ = !MEMORY(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MEMORY(0),
	combout => \MEMORY[0]~1_combout\);

-- Location: FF_X23_Y14_N31
\MEMORY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \MEMORY[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MEMORY(0));

-- Location: LCCOMB_X22_Y14_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!COUNTER_MID(5) & (COUNTER_MID(6) & (MEMORY(0) & COUNTER_MID(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(5),
	datab => COUNTER_MID(6),
	datac => MEMORY(0),
	datad => COUNTER_MID(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y14_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (COUNTER_MID(1) & (MEMORY(0) $ (VCC))) # (!COUNTER_MID(1) & (MEMORY(0) & VCC))
-- \Add1~1\ = CARRY((COUNTER_MID(1) & MEMORY(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(1),
	datab => MEMORY(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X22_Y14_N13
\COUNTER_MID[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(1));

-- Location: LCCOMB_X22_Y14_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (COUNTER_MID(2) & (!\Add1~1\)) # (!COUNTER_MID(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!COUNTER_MID(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X22_Y14_N15
\COUNTER_MID[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(2));

-- Location: LCCOMB_X22_Y14_N16
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (COUNTER_MID(3) & (\Add1~3\ $ (GND))) # (!COUNTER_MID(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((COUNTER_MID(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y14_N8
\COUNTER_MID~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_MID~2_combout\ = (\Add1~4_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add1~4_combout\,
	combout => \COUNTER_MID~2_combout\);

-- Location: FF_X22_Y14_N9
\COUNTER_MID[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \COUNTER_MID~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(3));

-- Location: FF_X22_Y14_N19
\COUNTER_MID[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(4));

-- Location: LCCOMB_X22_Y14_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!COUNTER_MID(4) & (!COUNTER_MID(3) & (COUNTER_MID(2) & COUNTER_MID(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(4),
	datab => COUNTER_MID(3),
	datac => COUNTER_MID(2),
	datad => COUNTER_MID(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = COUNTER_MID(7) $ (!\Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER_MID(7),
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X22_Y14_N4
\COUNTER_MID~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_MID~0_combout\ = (\Add1~12_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add1~12_combout\,
	combout => \COUNTER_MID~0_combout\);

-- Location: FF_X22_Y14_N5
\COUNTER_MID[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \COUNTER_MID~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(7));

-- Location: LCCOMB_X22_Y14_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (COUNTER_MID(5) & ((COUNTER_MID(2)) # ((COUNTER_MID(3)) # (COUNTER_MID(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(5),
	datab => COUNTER_MID(2),
	datac => COUNTER_MID(3),
	datad => COUNTER_MID(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\E_pin3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3~0_combout\ = (\Equal2~0_combout\ & ((COUNTER_MID(7)) # ((COUNTER_MID(6) & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(7),
	datab => COUNTER_MID(6),
	datac => \Equal2~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \E_pin3~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\MEMORY[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORY[1]~0_combout\ = MEMORY(0) $ (MEMORY(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datac => MEMORY(1),
	combout => \MEMORY[1]~0_combout\);

-- Location: FF_X23_Y14_N5
\MEMORY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \MEMORY[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MEMORY(1));

-- Location: LCCOMB_X24_Y14_N22
\Data_DSP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~0_combout\ = (Q2(1) & !Q2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q2(1),
	datad => Q2(0),
	combout => \Data_DSP~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Data_DSP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~1_combout\ = (\Data_DSP~0_combout\ & ((COUNTER_MID(7)) # ((COUNTER_MID(6) & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(6),
	datab => COUNTER_MID(7),
	datac => \Data_DSP~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Data_DSP~1_combout\);

-- Location: LCCOMB_X23_Y14_N20
\Data_DSP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~2_combout\ = (\Equal2~0_combout\ & (!\E_pin3~0_combout\ & (!MEMORY(1)))) # (!\Equal2~0_combout\ & ((\Data_DSP~1_combout\) # ((!\E_pin3~0_combout\ & !MEMORY(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \E_pin3~0_combout\,
	datac => MEMORY(1),
	datad => \Data_DSP~1_combout\,
	combout => \Data_DSP~2_combout\);

-- Location: IOIBUF_X34_Y12_N15
\ADD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD,
	o => \ADD~input_o\);

-- Location: LCCOMB_X28_Y14_N28
\u6|COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~2_combout\ = (\u6|COUNT\(0) & ((\u6|COUNT\(1) & ((\u6|COUNT\(3)))) # (!\u6|COUNT\(1) & ((!\u6|COUNT\(3)) # (!\u6|COUNT\(2)))))) # (!\u6|COUNT\(0) & (((\u6|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT\(0),
	datab => \u6|COUNT\(2),
	datac => \u6|COUNT\(1),
	datad => \u6|COUNT\(3),
	combout => \u6|COUNT~2_combout\);

-- Location: LCCOMB_X28_Y14_N24
\u6|COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~3_combout\ = (!\ADD~input_o\ & \u6|COUNT~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD~input_o\,
	datad => \u6|COUNT~2_combout\,
	combout => \u6|COUNT~3_combout\);

-- Location: FF_X28_Y14_N25
\u6|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u6|COUNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|COUNT\(1));

-- Location: LCCOMB_X28_Y14_N22
\u6|COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~4_combout\ = \u6|COUNT\(2) $ (((\u6|COUNT\(0) & (\u6|COUNT\(1) & !\u6|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT\(0),
	datab => \u6|COUNT\(2),
	datac => \u6|COUNT\(1),
	datad => \u6|COUNT\(3),
	combout => \u6|COUNT~4_combout\);

-- Location: LCCOMB_X28_Y14_N26
\u6|COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~5_combout\ = (\u6|COUNT~4_combout\ & !\ADD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT~4_combout\,
	datac => \ADD~input_o\,
	combout => \u6|COUNT~5_combout\);

-- Location: FF_X28_Y14_N27
\u6|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u6|COUNT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|COUNT\(2));

-- Location: LCCOMB_X28_Y14_N30
\u6|COUNT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~6_combout\ = \u6|COUNT\(0) $ ((((!\u6|COUNT\(2) & !\u6|COUNT\(1))) # (!\u6|COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT\(0),
	datab => \u6|COUNT\(2),
	datac => \u6|COUNT\(1),
	datad => \u6|COUNT\(3),
	combout => \u6|COUNT~6_combout\);

-- Location: LCCOMB_X28_Y14_N14
\u6|COUNT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~7_combout\ = (\u6|COUNT~6_combout\ & !\ADD~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT~6_combout\,
	datac => \ADD~input_o\,
	combout => \u6|COUNT~7_combout\);

-- Location: FF_X28_Y14_N15
\u6|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u6|COUNT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|COUNT\(0));

-- Location: LCCOMB_X28_Y14_N18
\u6|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~0_combout\ = (\u6|COUNT\(3)) # ((\u6|COUNT\(0) & (\u6|COUNT\(2) & \u6|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT\(0),
	datab => \u6|COUNT\(2),
	datac => \u6|COUNT\(1),
	datad => \u6|COUNT\(3),
	combout => \u6|COUNT~0_combout\);

-- Location: LCCOMB_X28_Y14_N20
\u6|COUNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|COUNT~1_combout\ = (!\ADD~input_o\ & \u6|COUNT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD~input_o\,
	datad => \u6|COUNT~0_combout\,
	combout => \u6|COUNT~1_combout\);

-- Location: FF_X28_Y14_N21
\u6|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \u6|COUNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|COUNT\(3));

-- Location: LCCOMB_X28_Y14_N0
\u6|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|KEY_OUT~0_combout\ = (!\u6|COUNT\(2) & (!\ADD~input_o\ & (!\u6|COUNT\(0) & !\u6|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|COUNT\(2),
	datab => \ADD~input_o\,
	datac => \u6|COUNT\(0),
	datad => \u6|COUNT\(1),
	combout => \u6|KEY_OUT~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\u6|KEY_OUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|KEY_OUT~1_combout\ = (\ADD~input_o\ & ((\u6|KEY_OUT~q\) # ((\u6|COUNT\(3) & \u6|KEY_OUT~0_combout\)))) # (!\ADD~input_o\ & (\u6|COUNT\(3) & ((\u6|KEY_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~input_o\,
	datab => \u6|COUNT\(3),
	datac => \u6|KEY_OUT~q\,
	datad => \u6|KEY_OUT~0_combout\,
	combout => \u6|KEY_OUT~1_combout\);

-- Location: FF_X28_Y14_N7
\u6|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \u6|KEY_OUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|KEY_OUT~q\);

-- Location: LCCOMB_X24_Y14_N14
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\u6|KEY_OUT~q\ & !Q2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|KEY_OUT~q\,
	datad => Q2(0),
	combout => \Mux1~1_combout\);

-- Location: CLKCTRL_G8
\u1|sig_1ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|sig_1ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|sig_1ms~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N24
\u1|q_10ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~0_combout\ = (!\u1|q_10ms\(0) & (((!\u1|q_10ms\(1) & !\u1|q_10ms\(2))) # (!\u1|q_10ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(3),
	datab => \u1|q_10ms\(1),
	datac => \u1|q_10ms\(0),
	datad => \u1|q_10ms\(2),
	combout => \u1|q_10ms~0_combout\);

-- Location: FF_X33_Y12_N25
\u1|q_10ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1ms~clkctrl_outclk\,
	d => \u1|q_10ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_10ms\(0));

-- Location: LCCOMB_X33_Y12_N20
\u1|q_10ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~2_combout\ = (!\u1|q_10ms\(3) & (\u1|q_10ms\(2) $ (((\u1|q_10ms\(1) & \u1|q_10ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(3),
	datab => \u1|q_10ms\(1),
	datac => \u1|q_10ms\(2),
	datad => \u1|q_10ms\(0),
	combout => \u1|q_10ms~2_combout\);

-- Location: FF_X33_Y12_N21
\u1|q_10ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1ms~clkctrl_outclk\,
	d => \u1|q_10ms~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_10ms\(2));

-- Location: LCCOMB_X33_Y12_N30
\u1|q_10ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~3_combout\ = (\u1|q_10ms\(2) & (\u1|q_10ms\(1) & (!\u1|q_10ms\(3) & \u1|q_10ms\(0)))) # (!\u1|q_10ms\(2) & (!\u1|q_10ms\(1) & (\u1|q_10ms\(3) & !\u1|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(2),
	datab => \u1|q_10ms\(1),
	datac => \u1|q_10ms\(3),
	datad => \u1|q_10ms\(0),
	combout => \u1|q_10ms~3_combout\);

-- Location: FF_X33_Y12_N31
\u1|q_10ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1ms~clkctrl_outclk\,
	d => \u1|q_10ms~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_10ms\(3));

-- Location: LCCOMB_X33_Y12_N28
\u1|q_10ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~1_combout\ = (!\u1|q_10ms\(3) & (\u1|q_10ms\(1) $ (\u1|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(3),
	datac => \u1|q_10ms\(1),
	datad => \u1|q_10ms\(0),
	combout => \u1|q_10ms~1_combout\);

-- Location: FF_X33_Y12_N29
\u1|q_10ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1ms~clkctrl_outclk\,
	d => \u1|q_10ms~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_10ms\(1));

-- Location: LCCOMB_X33_Y12_N22
\u1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan2~0_combout\ = (\u1|q_10ms\(3) & ((\u1|q_10ms\(1)) # ((\u1|q_10ms\(0)) # (\u1|q_10ms\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(1),
	datab => \u1|q_10ms\(0),
	datac => \u1|q_10ms\(3),
	datad => \u1|q_10ms\(2),
	combout => \u1|LessThan2~0_combout\);

-- Location: FF_X33_Y12_N23
\u1|sig_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_1ms~clkctrl_outclk\,
	d => \u1|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_10ms~q\);

-- Location: CLKCTRL_G5
\u1|sig_10ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|sig_10ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|sig_10ms~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y14_N4
\u1|q_1s[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[0]~7_combout\ = \u1|q_1s\(0) $ (VCC)
-- \u1|q_1s[0]~8\ = CARRY(\u1|q_1s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1s\(0),
	datad => VCC,
	combout => \u1|q_1s[0]~7_combout\,
	cout => \u1|q_1s[0]~8\);

-- Location: FF_X25_Y14_N5
\u1|q_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[0]~7_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(0));

-- Location: LCCOMB_X25_Y14_N6
\u1|q_1s[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[1]~9_combout\ = (\u1|q_1s\(1) & (!\u1|q_1s[0]~8\)) # (!\u1|q_1s\(1) & ((\u1|q_1s[0]~8\) # (GND)))
-- \u1|q_1s[1]~10\ = CARRY((!\u1|q_1s[0]~8\) # (!\u1|q_1s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(1),
	datad => VCC,
	cin => \u1|q_1s[0]~8\,
	combout => \u1|q_1s[1]~9_combout\,
	cout => \u1|q_1s[1]~10\);

-- Location: FF_X25_Y14_N7
\u1|q_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[1]~9_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(1));

-- Location: LCCOMB_X25_Y14_N8
\u1|q_1s[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[2]~11_combout\ = (\u1|q_1s\(2) & (\u1|q_1s[1]~10\ $ (GND))) # (!\u1|q_1s\(2) & (!\u1|q_1s[1]~10\ & VCC))
-- \u1|q_1s[2]~12\ = CARRY((\u1|q_1s\(2) & !\u1|q_1s[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1s\(2),
	datad => VCC,
	cin => \u1|q_1s[1]~10\,
	combout => \u1|q_1s[2]~11_combout\,
	cout => \u1|q_1s[2]~12\);

-- Location: FF_X25_Y14_N9
\u1|q_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[2]~11_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(2));

-- Location: LCCOMB_X25_Y14_N10
\u1|q_1s[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[3]~13_combout\ = (\u1|q_1s\(3) & (!\u1|q_1s[2]~12\)) # (!\u1|q_1s\(3) & ((\u1|q_1s[2]~12\) # (GND)))
-- \u1|q_1s[3]~14\ = CARRY((!\u1|q_1s[2]~12\) # (!\u1|q_1s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(3),
	datad => VCC,
	cin => \u1|q_1s[2]~12\,
	combout => \u1|q_1s[3]~13_combout\,
	cout => \u1|q_1s[3]~14\);

-- Location: FF_X25_Y14_N11
\u1|q_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[3]~13_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(3));

-- Location: LCCOMB_X25_Y14_N12
\u1|q_1s[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[4]~15_combout\ = (\u1|q_1s\(4) & (\u1|q_1s[3]~14\ $ (GND))) # (!\u1|q_1s\(4) & (!\u1|q_1s[3]~14\ & VCC))
-- \u1|q_1s[4]~16\ = CARRY((\u1|q_1s\(4) & !\u1|q_1s[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(4),
	datad => VCC,
	cin => \u1|q_1s[3]~14\,
	combout => \u1|q_1s[4]~15_combout\,
	cout => \u1|q_1s[4]~16\);

-- Location: FF_X25_Y14_N13
\u1|q_1s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[4]~15_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(4));

-- Location: LCCOMB_X25_Y14_N14
\u1|q_1s[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[5]~17_combout\ = (\u1|q_1s\(5) & (!\u1|q_1s[4]~16\)) # (!\u1|q_1s\(5) & ((\u1|q_1s[4]~16\) # (GND)))
-- \u1|q_1s[5]~18\ = CARRY((!\u1|q_1s[4]~16\) # (!\u1|q_1s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1s\(5),
	datad => VCC,
	cin => \u1|q_1s[4]~16\,
	combout => \u1|q_1s[5]~17_combout\,
	cout => \u1|q_1s[5]~18\);

-- Location: FF_X25_Y14_N15
\u1|q_1s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[5]~17_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(5));

-- Location: LCCOMB_X25_Y14_N16
\u1|q_1s[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[6]~19_combout\ = \u1|q_1s[5]~18\ $ (!\u1|q_1s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|q_1s\(6),
	cin => \u1|q_1s[5]~18\,
	combout => \u1|q_1s[6]~19_combout\);

-- Location: FF_X25_Y14_N17
\u1|q_1s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|q_1s[6]~19_combout\,
	sclr => \u1|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|q_1s\(6));

-- Location: LCCOMB_X25_Y14_N18
\u1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan3~0_combout\ = (!\u1|q_1s\(3) & (!\u1|q_1s\(2) & ((!\u1|q_1s\(1)) # (!\u1|q_1s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(3),
	datab => \u1|q_1s\(2),
	datac => \u1|q_1s\(0),
	datad => \u1|q_1s\(1),
	combout => \u1|LessThan3~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\u1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan3~1_combout\ = (\u1|q_1s\(6) & (\u1|q_1s\(5) & ((\u1|q_1s\(4)) # (!\u1|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(4),
	datab => \u1|q_1s\(6),
	datac => \u1|q_1s\(5),
	datad => \u1|LessThan3~0_combout\,
	combout => \u1|LessThan3~1_combout\);

-- Location: LCCOMB_X25_Y14_N0
\u1|sig_1s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sig_1s~feeder_combout\ = \u1|LessThan3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|LessThan3~1_combout\,
	combout => \u1|sig_1s~feeder_combout\);

-- Location: FF_X25_Y14_N1
\u1|sig_1s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|sig_10ms~clkctrl_outclk\,
	d => \u1|sig_1s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|sig_1s~q\);

-- Location: FF_X24_Y14_N17
\u1|clk_second\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	asdata => \u1|sig_1s~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_second~q\);

-- Location: LCCOMB_X24_Y14_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (Q2(0) & (\u6|KEY_OUT~q\)) # (!Q2(0) & ((\u1|clk_second~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|KEY_OUT~q\,
	datac => \u1|clk_second~q\,
	datad => Q2(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((!Q2(1) & \Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q2(1),
	datad => \Mux0~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G9
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y16_N30
\u2|COUNTER_GE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|COUNTER_GE~0_combout\ = (!\u2|COUNTER_GE\(0) & (((!\u2|COUNTER_GE\(2) & !\u2|COUNTER_GE\(1))) # (!\u2|COUNTER_GE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(3),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(0),
	datad => \u2|COUNTER_GE\(1),
	combout => \u2|COUNTER_GE~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\C_RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_RESET,
	o => \C_RESET~input_o\);

-- Location: CLKCTRL_G3
\C_RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C_RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C_RESET~inputclkctrl_outclk\);

-- Location: FF_X23_Y16_N31
\u2|COUNTER_GE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|COUNTER_GE~0_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|COUNTER_GE\(0));

-- Location: LCCOMB_X23_Y16_N0
\u2|COUNTER_GE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|COUNTER_GE~2_combout\ = (!\u2|COUNTER_GE\(3) & (\u2|COUNTER_GE\(2) $ (((\u2|COUNTER_GE\(0) & \u2|COUNTER_GE\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(3),
	datac => \u2|COUNTER_GE\(2),
	datad => \u2|COUNTER_GE\(1),
	combout => \u2|COUNTER_GE~2_combout\);

-- Location: FF_X23_Y16_N1
\u2|COUNTER_GE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|COUNTER_GE~2_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|COUNTER_GE\(2));

-- Location: LCCOMB_X23_Y16_N14
\u2|COUNTER_GE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|COUNTER_GE~3_combout\ = (\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(2) & (!\u2|COUNTER_GE\(3) & \u2|COUNTER_GE\(0)))) # (!\u2|COUNTER_GE\(1) & (!\u2|COUNTER_GE\(2) & (\u2|COUNTER_GE\(3) & !\u2|COUNTER_GE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(0),
	combout => \u2|COUNTER_GE~3_combout\);

-- Location: FF_X23_Y16_N15
\u2|COUNTER_GE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|COUNTER_GE~3_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|COUNTER_GE\(3));

-- Location: LCCOMB_X23_Y16_N10
\u2|COUNTER_GE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|COUNTER_GE~1_combout\ = (!\u2|COUNTER_GE\(3) & (\u2|COUNTER_GE\(1) $ (\u2|COUNTER_GE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|COUNTER_GE\(3),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(0),
	combout => \u2|COUNTER_GE~1_combout\);

-- Location: FF_X23_Y16_N11
\u2|COUNTER_GE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|COUNTER_GE~1_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|COUNTER_GE\(1));

-- Location: LCCOMB_X23_Y16_N6
\u2|jin_wei~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|jin_wei~0_combout\ = (!\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(3) & (\u2|COUNTER_GE\(0) & !\u2|COUNTER_GE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(3),
	datac => \u2|COUNTER_GE\(0),
	datad => \u2|COUNTER_GE\(2),
	combout => \u2|jin_wei~0_combout\);

-- Location: FF_X23_Y16_N7
\u2|jin_wei\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|jin_wei~0_combout\,
	ena => \C_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|jin_wei~q\);

-- Location: CLKCTRL_G6
\u2|jin_wei~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|jin_wei~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|jin_wei~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y16_N22
\u3|COUNTER_SHI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|COUNTER_SHI~0_combout\ = (\u3|COUNTER_SHI\(1) & (!\u3|COUNTER_SHI\(2) & \u3|COUNTER_SHI\(0))) # (!\u3|COUNTER_SHI\(1) & (\u3|COUNTER_SHI\(2) & !\u3|COUNTER_SHI\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(1),
	datac => \u3|COUNTER_SHI\(2),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u3|COUNTER_SHI~0_combout\);

-- Location: FF_X24_Y16_N23
\u3|COUNTER_SHI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|jin_wei~clkctrl_outclk\,
	d => \u3|COUNTER_SHI~0_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|COUNTER_SHI\(2));

-- Location: LCCOMB_X24_Y16_N24
\u3|COUNTER_SHI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|COUNTER_SHI~2_combout\ = (!\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(1) $ (\u3|COUNTER_SHI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u3|COUNTER_SHI~2_combout\);

-- Location: FF_X24_Y16_N25
\u3|COUNTER_SHI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|jin_wei~clkctrl_outclk\,
	d => \u3|COUNTER_SHI~2_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|COUNTER_SHI\(1));

-- Location: LCCOMB_X24_Y16_N14
\u3|COUNTER_SHI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|COUNTER_SHI~1_combout\ = (!\u3|COUNTER_SHI\(0) & ((!\u3|COUNTER_SHI\(2)) # (!\u3|COUNTER_SHI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(1),
	datac => \u3|COUNTER_SHI\(0),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u3|COUNTER_SHI~1_combout\);

-- Location: FF_X24_Y16_N15
\u3|COUNTER_SHI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|jin_wei~clkctrl_outclk\,
	d => \u3|COUNTER_SHI~1_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|COUNTER_SHI\(0));

-- Location: LCCOMB_X24_Y16_N2
\u3|jin_wei~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|jin_wei~0_combout\ = (\u3|COUNTER_SHI\(0) & (\u3|COUNTER_SHI\(2) & !\u3|COUNTER_SHI\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(2),
	datad => \u3|COUNTER_SHI\(1),
	combout => \u3|jin_wei~0_combout\);

-- Location: FF_X24_Y16_N3
\u3|jin_wei\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|jin_wei~clkctrl_outclk\,
	d => \u3|jin_wei~0_combout\,
	ena => \C_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|jin_wei~q\);

-- Location: LCCOMB_X24_Y14_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\u3|jin_wei~q\ & !Q2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|jin_wei~q\,
	datad => Q2(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\rtl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((Q2(1) & (\Mux1~1_combout\)) # (!Q2(1) & ((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~1_combout\,
	datac => \Mux1~0_combout\,
	datad => Q2(1),
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G0
\rtl~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X25_Y15_N26
\u4|COUNT_GE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~3_combout\ = (\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(1) & (!\u4|COUNT_GE\(3) & \u4|COUNT_GE\(0)))) # (!\u4|COUNT_GE\(2) & (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(3) & !\u4|COUNT_GE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(3),
	datad => \u4|COUNT_GE\(0),
	combout => \u4|COUNT_GE~3_combout\);

-- Location: FF_X25_Y15_N27
\u4|COUNT_GE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_GE~3_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_GE\(3));

-- Location: LCCOMB_X25_Y15_N30
\u4|COUNT_GE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~1_combout\ = (!\u4|COUNT_GE\(3) & (\u4|COUNT_GE\(0) $ (\u4|COUNT_GE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u4|COUNT_GE~1_combout\);

-- Location: FF_X25_Y15_N31
\u4|COUNT_GE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_GE~1_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_GE\(1));

-- Location: LCCOMB_X25_Y15_N24
\u4|COUNT_GE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~0_combout\ = (!\u4|COUNT_GE\(0) & (((!\u4|COUNT_GE\(2) & !\u4|COUNT_GE\(1))) # (!\u4|COUNT_GE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u4|COUNT_GE~0_combout\);

-- Location: FF_X25_Y15_N25
\u4|COUNT_GE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_GE~0_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_GE\(0));

-- Location: LCCOMB_X25_Y15_N8
\u4|COUNT_GE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~2_combout\ = (!\u4|COUNT_GE\(3) & (\u4|COUNT_GE\(2) $ (((\u4|COUNT_GE\(0) & \u4|COUNT_GE\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(0),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(2),
	datad => \u4|COUNT_GE\(3),
	combout => \u4|COUNT_GE~2_combout\);

-- Location: FF_X25_Y15_N9
\u4|COUNT_GE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_GE~2_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_GE\(2));

-- Location: LCCOMB_X24_Y15_N14
\u9|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux6~0_combout\ = (\u4|COUNT_GE\(1) & (((\u4|COUNT_GE\(3))))) # (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(2) $ (((\u4|COUNT_GE\(0) & !\u4|COUNT_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y15_N16
\u4|COUNT_SHI~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~8_combout\ = (\u4|COUNT_SHI[2]~4_combout\ & (\u4|COUNT_SHI\(2) $ (((\u4|COUNT_SHI\(1) & \u4|COUNT_SHI\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(1),
	datab => \u4|COUNT_SHI\(0),
	datac => \u4|COUNT_SHI\(2),
	datad => \u4|COUNT_SHI[2]~4_combout\,
	combout => \u4|COUNT_SHI~8_combout\);

-- Location: LCCOMB_X25_Y15_N4
\u4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|LessThan0~0_combout\ = (\u4|COUNT_GE\(3) & ((\u4|COUNT_GE\(1)) # ((\u4|COUNT_GE\(0)) # (\u4|COUNT_GE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(1),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(3),
	datad => \u4|COUNT_GE\(2),
	combout => \u4|LessThan0~0_combout\);

-- Location: FF_X25_Y15_N17
\u4|COUNT_SHI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_SHI~8_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	ena => \u4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_SHI\(2));

-- Location: LCCOMB_X25_Y15_N10
\u4|COUNT_SHI[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI[2]~2_combout\ = (!\u4|COUNT_GE\(1) & (!\u4|COUNT_GE\(2) & \u4|COUNT_GE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(2),
	datad => \u4|COUNT_GE\(0),
	combout => \u4|COUNT_SHI[2]~2_combout\);

-- Location: LCCOMB_X25_Y15_N28
\u4|COUNT_SHI[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI[2]~3_combout\ = (\u4|COUNT_SHI\(0) & (\u4|COUNT_GE\(3) & \u4|COUNT_SHI[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|COUNT_SHI\(0),
	datac => \u4|COUNT_GE\(3),
	datad => \u4|COUNT_SHI[2]~2_combout\,
	combout => \u4|COUNT_SHI[2]~3_combout\);

-- Location: LCCOMB_X25_Y15_N2
\u4|COUNT_SHI[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI[2]~4_combout\ = (\u4|COUNT_SHI\(1) & (((!\u4|COUNT_SHI\(3))))) # (!\u4|COUNT_SHI\(1) & (((!\u4|COUNT_SHI\(3) & !\u4|COUNT_SHI[2]~3_combout\)) # (!\u4|COUNT_SHI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(1),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(3),
	datad => \u4|COUNT_SHI[2]~3_combout\,
	combout => \u4|COUNT_SHI[2]~4_combout\);

-- Location: LCCOMB_X25_Y15_N0
\u4|COUNT_SHI~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~5_combout\ = (!\u4|COUNT_SHI\(0) & \u4|COUNT_SHI[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI[2]~4_combout\,
	combout => \u4|COUNT_SHI~5_combout\);

-- Location: FF_X25_Y15_N1
\u4|COUNT_SHI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_SHI~5_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	ena => \u4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_SHI\(0));

-- Location: LCCOMB_X25_Y15_N18
\u4|COUNT_SHI~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~6_combout\ = (\u4|COUNT_SHI[2]~4_combout\ & (\u4|COUNT_SHI\(0) $ (\u4|COUNT_SHI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|COUNT_SHI\(0),
	datac => \u4|COUNT_SHI\(1),
	datad => \u4|COUNT_SHI[2]~4_combout\,
	combout => \u4|COUNT_SHI~6_combout\);

-- Location: FF_X25_Y15_N19
\u4|COUNT_SHI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_SHI~6_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	ena => \u4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_SHI\(1));

-- Location: LCCOMB_X25_Y15_N22
\u4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Add1~0_combout\ = (\u4|COUNT_SHI\(1) & \u4|COUNT_SHI\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|COUNT_SHI\(1),
	datad => \u4|COUNT_SHI\(0),
	combout => \u4|Add1~0_combout\);

-- Location: LCCOMB_X25_Y15_N14
\u4|COUNT_SHI~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~7_combout\ = (\u4|COUNT_SHI[2]~4_combout\ & (\u4|COUNT_SHI\(3) $ (((\u4|Add1~0_combout\ & \u4|COUNT_SHI\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~0_combout\,
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(3),
	datad => \u4|COUNT_SHI[2]~4_combout\,
	combout => \u4|COUNT_SHI~7_combout\);

-- Location: FF_X25_Y15_N15
\u4|COUNT_SHI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \u4|COUNT_SHI~7_combout\,
	clrn => \C_RESET~inputclkctrl_outclk\,
	ena => \u4|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|COUNT_SHI\(3));

-- Location: LCCOMB_X24_Y15_N12
\u10|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux6~0_combout\ = (\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(3))) # (!\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(2) $ (((!\u4|COUNT_SHI\(3) & \u4|COUNT_SHI\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(1),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(2),
	combout => \u10|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\Data_DSP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~3_combout\ = (\Data_DSP~2_combout\ & (((MEMORY(0))))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & ((\u10|Mux6~0_combout\))) # (!MEMORY(0) & (\u9|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u9|Mux6~0_combout\,
	datac => MEMORY(0),
	datad => \u10|Mux6~0_combout\,
	combout => \Data_DSP~3_combout\);

-- Location: LCCOMB_X24_Y16_N30
\u8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux6~0_combout\ = (!\u3|COUNTER_SHI\(1) & (\u3|COUNTER_SHI\(2) $ (\u3|COUNTER_SHI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\u7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux6~0_combout\ = (\u2|COUNTER_GE\(1) & (((\u2|COUNTER_GE\(3))))) # (!\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(2) $ (((\u2|COUNTER_GE\(0) & !\u2|COUNTER_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Data_DSP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~4_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~3_combout\ & (\u8|Mux6~0_combout\)) # (!\Data_DSP~3_combout\ & ((\u7|Mux6~0_combout\))))) # (!\Data_DSP~2_combout\ & (\Data_DSP~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \Data_DSP~3_combout\,
	datac => \u8|Mux6~0_combout\,
	datad => \u7|Mux6~0_combout\,
	combout => \Data_DSP~4_combout\);

-- Location: LCCOMB_X24_Y15_N28
\u9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux5~0_combout\ = (\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(3)) # (\u4|COUNT_GE\(1) $ (\u4|COUNT_GE\(0))))) # (!\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y15_N22
\u10|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux5~0_combout\ = (\u4|COUNT_SHI\(3) & ((\u4|COUNT_SHI\(1)) # ((\u4|COUNT_SHI\(2))))) # (!\u4|COUNT_SHI\(3) & (\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(1) $ (\u4|COUNT_SHI\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(1),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(2),
	combout => \u10|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Data_DSP~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~5_combout\ = (MEMORY(0) & (((\u10|Mux5~0_combout\) # (\Data_DSP~2_combout\)))) # (!MEMORY(0) & (\u9|Mux5~0_combout\ & ((!\Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datab => \u9|Mux5~0_combout\,
	datac => \u10|Mux5~0_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~5_combout\);

-- Location: LCCOMB_X24_Y16_N8
\u8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux5~0_combout\ = (\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(1) $ (\u3|COUNTER_SHI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\u7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux5~0_combout\ = (\u2|COUNTER_GE\(3) & ((\u2|COUNTER_GE\(1)) # ((\u2|COUNTER_GE\(2))))) # (!\u2|COUNTER_GE\(3) & (\u2|COUNTER_GE\(2) & (\u2|COUNTER_GE\(1) $ (\u2|COUNTER_GE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Data_DSP~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~6_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~5_combout\ & (\u8|Mux5~0_combout\)) # (!\Data_DSP~5_combout\ & ((\u7|Mux5~0_combout\))))) # (!\Data_DSP~2_combout\ & (\Data_DSP~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \Data_DSP~5_combout\,
	datac => \u8|Mux5~0_combout\,
	datad => \u7|Mux5~0_combout\,
	combout => \Data_DSP~6_combout\);

-- Location: LCCOMB_X23_Y16_N20
\u7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux4~0_combout\ = (\u2|COUNTER_GE\(2) & (((\u2|COUNTER_GE\(3))))) # (!\u2|COUNTER_GE\(2) & (\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(3)) # (!\u2|COUNTER_GE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y15_N20
\u10|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux4~0_combout\ = (\u4|COUNT_SHI\(2) & (((\u4|COUNT_SHI\(3))))) # (!\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(1) & ((\u4|COUNT_SHI\(3)) # (!\u4|COUNT_SHI\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(1),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(3),
	datad => \u4|COUNT_SHI\(0),
	combout => \u10|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\u9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux4~0_combout\ = (\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(3))) # (!\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)) # (!\u4|COUNT_GE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(3),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(1),
	combout => \u9|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Data_DSP~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~7_combout\ = (\Data_DSP~2_combout\ & (((MEMORY(0))))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & (\u10|Mux4~0_combout\)) # (!MEMORY(0) & ((\u9|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u10|Mux4~0_combout\,
	datac => MEMORY(0),
	datad => \u9|Mux4~0_combout\,
	combout => \Data_DSP~7_combout\);

-- Location: LCCOMB_X24_Y16_N18
\u8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux4~0_combout\ = (!\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(1) & !\u3|COUNTER_SHI\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\Data_DSP~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~8_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~7_combout\ & ((\u8|Mux4~0_combout\))) # (!\Data_DSP~7_combout\ & (\u7|Mux4~0_combout\)))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Mux4~0_combout\,
	datab => \Data_DSP~2_combout\,
	datac => \Data_DSP~7_combout\,
	datad => \u8|Mux4~0_combout\,
	combout => \Data_DSP~8_combout\);

-- Location: LCCOMB_X24_Y16_N6
\u8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux3~0_combout\ = (\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(1) $ (!\u3|COUNTER_SHI\(0)))) # (!\u3|COUNTER_SHI\(2) & (!\u3|COUNTER_SHI\(1) & \u3|COUNTER_SHI\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y15_N20
\u9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux3~0_combout\ = (\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)) # ((\u4|COUNT_GE\(2) & \u4|COUNT_GE\(0))))) # (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(2) $ (((\u4|COUNT_GE\(0) & !\u4|COUNT_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\u10|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux3~0_combout\ = (\u4|COUNT_SHI\(1) & ((\u4|COUNT_SHI\(3)) # ((\u4|COUNT_SHI\(0) & \u4|COUNT_SHI\(2))))) # (!\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(2) $ (((!\u4|COUNT_SHI\(3) & \u4|COUNT_SHI\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(1),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(2),
	combout => \u10|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Data_DSP~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~9_combout\ = (\Data_DSP~2_combout\ & (((MEMORY(0))))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & ((\u10|Mux3~0_combout\))) # (!MEMORY(0) & (\u9|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u9|Mux3~0_combout\,
	datac => MEMORY(0),
	datad => \u10|Mux3~0_combout\,
	combout => \Data_DSP~9_combout\);

-- Location: LCCOMB_X23_Y16_N22
\u7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux3~0_combout\ = (\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(3)) # ((\u2|COUNTER_GE\(0) & \u2|COUNTER_GE\(2))))) # (!\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(2) $ (((\u2|COUNTER_GE\(0) & !\u2|COUNTER_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\Data_DSP~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~10_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~9_combout\ & (\u8|Mux3~0_combout\)) # (!\Data_DSP~9_combout\ & ((\u7|Mux3~0_combout\))))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Mux3~0_combout\,
	datab => \Data_DSP~2_combout\,
	datac => \Data_DSP~9_combout\,
	datad => \u7|Mux3~0_combout\,
	combout => \Data_DSP~10_combout\);

-- Location: LCCOMB_X24_Y16_N28
\u8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux2~0_combout\ = (\u3|COUNTER_SHI\(0)) # ((\u3|COUNTER_SHI\(2) & !\u3|COUNTER_SHI\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\u9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux2~0_combout\ = (\u4|COUNT_GE\(0)) # ((\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)))) # (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y15_N12
\u10|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux2~0_combout\ = (\u4|COUNT_SHI\(0)) # ((\u4|COUNT_SHI\(1) & ((\u4|COUNT_SHI\(3)))) # (!\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(1),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(3),
	datad => \u4|COUNT_SHI\(0),
	combout => \u10|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\Data_DSP~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~11_combout\ = (\Data_DSP~2_combout\ & (((MEMORY(0))))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & ((\u10|Mux2~0_combout\))) # (!MEMORY(0) & (\u9|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u9|Mux2~0_combout\,
	datac => MEMORY(0),
	datad => \u10|Mux2~0_combout\,
	combout => \Data_DSP~11_combout\);

-- Location: LCCOMB_X23_Y16_N18
\u7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux2~0_combout\ = (\u2|COUNTER_GE\(0)) # ((\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(3))) # (!\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y16_N16
\Data_DSP~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~12_combout\ = (\Data_DSP~11_combout\ & ((\u8|Mux2~0_combout\) # ((!\Data_DSP~2_combout\)))) # (!\Data_DSP~11_combout\ & (((\Data_DSP~2_combout\ & \u7|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Mux2~0_combout\,
	datab => \Data_DSP~11_combout\,
	datac => \Data_DSP~2_combout\,
	datad => \u7|Mux2~0_combout\,
	combout => \Data_DSP~12_combout\);

-- Location: LCCOMB_X24_Y16_N20
\u8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux1~0_combout\ = (\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(1) & \u3|COUNTER_SHI\(0))) # (!\u3|COUNTER_SHI\(2) & ((\u3|COUNTER_SHI\(1)) # (\u3|COUNTER_SHI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\u9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux1~0_combout\ = (\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(3)) # ((\u4|COUNT_GE\(1) & \u4|COUNT_GE\(0))))) # (!\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(1)) # ((\u4|COUNT_GE\(0) & !\u4|COUNT_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y15_N24
\u10|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux1~0_combout\ = (\u4|COUNT_SHI\(0) & ((\u4|COUNT_SHI\(1)) # (\u4|COUNT_SHI\(3) $ (!\u4|COUNT_SHI\(2))))) # (!\u4|COUNT_SHI\(0) & ((\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(3))) # (!\u4|COUNT_SHI\(2) & ((\u4|COUNT_SHI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(1),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(2),
	combout => \u10|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\Data_DSP~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~13_combout\ = (MEMORY(0) & ((\Data_DSP~2_combout\) # ((\u10|Mux1~0_combout\)))) # (!MEMORY(0) & (!\Data_DSP~2_combout\ & (\u9|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datab => \Data_DSP~2_combout\,
	datac => \u9|Mux1~0_combout\,
	datad => \u10|Mux1~0_combout\,
	combout => \Data_DSP~13_combout\);

-- Location: LCCOMB_X23_Y16_N28
\u7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux1~0_combout\ = (\u2|COUNTER_GE\(0) & ((\u2|COUNTER_GE\(1)) # (\u2|COUNTER_GE\(3) $ (!\u2|COUNTER_GE\(2))))) # (!\u2|COUNTER_GE\(0) & ((\u2|COUNTER_GE\(2) & ((\u2|COUNTER_GE\(3)))) # (!\u2|COUNTER_GE\(2) & (\u2|COUNTER_GE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y16_N16
\Data_DSP~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~14_combout\ = (\Data_DSP~13_combout\ & ((\u8|Mux1~0_combout\) # ((!\Data_DSP~2_combout\)))) # (!\Data_DSP~13_combout\ & (((\u7|Mux1~0_combout\ & \Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Mux1~0_combout\,
	datab => \Data_DSP~13_combout\,
	datac => \u7|Mux1~0_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~14_combout\);

-- Location: LCCOMB_X23_Y16_N24
\u7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux0~0_combout\ = (\u2|COUNTER_GE\(1) & (!\u2|COUNTER_GE\(3) & ((!\u2|COUNTER_GE\(2)) # (!\u2|COUNTER_GE\(0))))) # (!\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(3) $ (\u2|COUNTER_GE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(0),
	datac => \u2|COUNTER_GE\(3),
	datad => \u2|COUNTER_GE\(2),
	combout => \u7|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\u8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux0~0_combout\ = (\u3|COUNTER_SHI\(2) & ((!\u3|COUNTER_SHI\(0)) # (!\u3|COUNTER_SHI\(1)))) # (!\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|COUNTER_SHI\(2),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u8|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\u10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux0~0_combout\ = (\u4|COUNT_SHI\(1) & (!\u4|COUNT_SHI\(3) & ((!\u4|COUNT_SHI\(2)) # (!\u4|COUNT_SHI\(0))))) # (!\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(3) $ (((\u4|COUNT_SHI\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(1),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(2),
	combout => \u10|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y15_N18
\u9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux0~0_combout\ = (\u4|COUNT_GE\(2) & (!\u4|COUNT_GE\(3) & ((!\u4|COUNT_GE\(0)) # (!\u4|COUNT_GE\(1))))) # (!\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(1) $ (((\u4|COUNT_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\Data_DSP~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~15_combout\ = (\Data_DSP~2_combout\ & (MEMORY(0))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & (!\u10|Mux0~0_combout\)) # (!MEMORY(0) & ((!\u9|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => MEMORY(0),
	datac => \u10|Mux0~0_combout\,
	datad => \u9|Mux0~0_combout\,
	combout => \Data_DSP~15_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Data_DSP~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~16_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~15_combout\ & ((!\u8|Mux0~0_combout\))) # (!\Data_DSP~15_combout\ & (!\u7|Mux0~0_combout\)))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Mux0~0_combout\,
	datab => \Data_DSP~2_combout\,
	datac => \u8|Mux0~0_combout\,
	datad => \Data_DSP~15_combout\,
	combout => \Data_DSP~16_combout\);

-- Location: FF_X23_Y14_N3
\u1|clk_us\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	asdata => \u1|sig_1us~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_us~q\);

-- Location: LCCOMB_X23_Y14_N10
\E_pin1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1~2_combout\ = (\u1|clk_us~q\ & ((\Data_DSP~1_combout\) # (!MEMORY(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datac => MEMORY(0),
	datad => \u1|clk_us~q\,
	combout => \E_pin1~2_combout\);

-- Location: LCCOMB_X23_Y14_N0
\E_pin1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1~4_combout\ = (MEMORY(1) & (((!Q2(1) & Q2(0))) # (!\Data_DSP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q2(1),
	datab => \Data_DSP~1_combout\,
	datac => MEMORY(1),
	datad => Q2(0),
	combout => \E_pin1~4_combout\);

-- Location: LCCOMB_X23_Y14_N2
\E_pin1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1~3_combout\ = (MEMORY(0)) # ((\E_pin1~4_combout\) # (\E_pin3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datab => \E_pin1~4_combout\,
	datad => \E_pin3~0_combout\,
	combout => \E_pin1~3_combout\);

-- Location: LCCOMB_X23_Y14_N22
\E_pin1$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1$latch~combout\ = (\E_pin1~3_combout\ & (\E_pin1$latch~combout\)) # (!\E_pin1~3_combout\ & ((\E_pin1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_pin1$latch~combout\,
	datab => \E_pin1~2_combout\,
	datac => \E_pin1~3_combout\,
	combout => \E_pin1$latch~combout\);

-- Location: LCCOMB_X22_Y14_N10
\E_pin2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin2~0_combout\ = (\u1|clk_us~q\ & ((MEMORY(0)) # (\Data_DSP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datac => \u1|clk_us~q\,
	datad => \Data_DSP~1_combout\,
	combout => \E_pin2~0_combout\);

-- Location: LCCOMB_X23_Y14_N26
\E_pin2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin2~1_combout\ = (MEMORY(0) & \Data_DSP~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MEMORY(0),
	datad => \Data_DSP~2_combout\,
	combout => \E_pin2~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\E_pin2$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin2$latch~combout\ = (\E_pin2~1_combout\ & (\E_pin2~0_combout\)) # (!\E_pin2~1_combout\ & ((\E_pin2$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_pin2~0_combout\,
	datac => \E_pin2$latch~combout\,
	datad => \E_pin2~1_combout\,
	combout => \E_pin2$latch~combout\);

-- Location: LCCOMB_X23_Y14_N28
\E_pin3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3~1_combout\ = (\u1|clk_us~q\ & ((\E_pin3~0_combout\) # (!MEMORY(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datac => \E_pin3~0_combout\,
	datad => \u1|clk_us~q\,
	combout => \E_pin3~1_combout\);

-- Location: LCCOMB_X23_Y14_N14
\E_pin3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3~2_combout\ = (!MEMORY(0) & ((\E_pin3~0_combout\) # ((!\Data_DSP~1_combout\ & MEMORY(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => MEMORY(1),
	datac => MEMORY(0),
	datad => \E_pin3~0_combout\,
	combout => \E_pin3~2_combout\);

-- Location: LCCOMB_X23_Y14_N6
\E_pin3$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3$latch~combout\ = (\E_pin3~2_combout\ & (\E_pin3~1_combout\)) # (!\E_pin3~2_combout\ & ((\E_pin3$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_pin3~1_combout\,
	datac => \E_pin3~2_combout\,
	datad => \E_pin3$latch~combout\,
	combout => \E_pin3$latch~combout\);

-- Location: LCCOMB_X23_Y14_N18
\E_pin4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin4~0_combout\ = (\u1|clk_us~q\ & ((MEMORY(0)) # (\E_pin3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MEMORY(0),
	datac => \E_pin3~0_combout\,
	datad => \u1|clk_us~q\,
	combout => \E_pin4~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\E_pin4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin4~1_combout\ = (MEMORY(0) & ((\E_pin3~0_combout\) # ((!\Data_DSP~1_combout\ & MEMORY(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => MEMORY(1),
	datac => MEMORY(0),
	datad => \E_pin3~0_combout\,
	combout => \E_pin4~1_combout\);

-- Location: LCCOMB_X23_Y14_N12
\E_pin4$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin4$latch~combout\ = (\E_pin4~1_combout\ & ((\E_pin4~0_combout\))) # (!\E_pin4~1_combout\ & (\E_pin4$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_pin4$latch~combout\,
	datac => \E_pin4~0_combout\,
	datad => \E_pin4~1_combout\,
	combout => \E_pin4$latch~combout\);

ww_Data_DSP(0) <= \Data_DSP[0]~output_o\;

ww_Data_DSP(1) <= \Data_DSP[1]~output_o\;

ww_Data_DSP(2) <= \Data_DSP[2]~output_o\;

ww_Data_DSP(3) <= \Data_DSP[3]~output_o\;

ww_Data_DSP(4) <= \Data_DSP[4]~output_o\;

ww_Data_DSP(5) <= \Data_DSP[5]~output_o\;

ww_Data_DSP(6) <= \Data_DSP[6]~output_o\;

ww_Data_DSP(7) <= \Data_DSP[7]~output_o\;

ww_E_pin1 <= \E_pin1~output_o\;

ww_E_pin2 <= \E_pin2~output_o\;

ww_E_pin3 <= \E_pin3~output_o\;

ww_E_pin4 <= \E_pin4~output_o\;
END structure;


