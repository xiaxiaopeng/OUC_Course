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

-- DATE "12/17/2019 16:29:52"

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
	C_RESET : IN std_logic;
	Data_DSP : OUT std_logic_vector(7 DOWNTO 0);
	E_pin1 : OUT std_logic;
	E_pin2 : OUT std_logic;
	E_pin3 : OUT std_logic;
	E_pin4 : OUT std_logic
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
SIGNAL \u1|clk_ms~q\ : std_logic;
SIGNAL \u1|clk_ms~clkctrl_outclk\ : std_logic;
SIGNAL \MEMORY[0]~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \COUNTER_MID~1_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \COUNTER_MID~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \COUNTER_MID~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \SET_MODE~input_o\ : std_logic;
SIGNAL \u5|COUNT~2_combout\ : std_logic;
SIGNAL \u5|COUNT~3_combout\ : std_logic;
SIGNAL \u5|COUNT~4_combout\ : std_logic;
SIGNAL \u5|COUNT~5_combout\ : std_logic;
SIGNAL \u5|COUNT~6_combout\ : std_logic;
SIGNAL \u5|COUNT~7_combout\ : std_logic;
SIGNAL \u5|COUNT~0_combout\ : std_logic;
SIGNAL \u5|COUNT~1_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~0_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~1_combout\ : std_logic;
SIGNAL \u5|KEY_OUT~q\ : std_logic;
SIGNAL \RECODE~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \VAR~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \VAR~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \VAR~1_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \VAR~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \VAR~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Data_DSP~0_combout\ : std_logic;
SIGNAL \Data_DSP~1_combout\ : std_logic;
SIGNAL \MEMORY[1]~0_combout\ : std_logic;
SIGNAL \E_pin3~0_combout\ : std_logic;
SIGNAL \Data_DSP~2_combout\ : std_logic;
SIGNAL \NO_JITTER~combout\ : std_logic;
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
SIGNAL \u1|clk_second~feeder_combout\ : std_logic;
SIGNAL \u1|clk_second~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \u2|COUNTER_GE~2_combout\ : std_logic;
SIGNAL \C_RESET~input_o\ : std_logic;
SIGNAL \C_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|COUNTER_GE~3_combout\ : std_logic;
SIGNAL \u2|COUNTER_GE~1_combout\ : std_logic;
SIGNAL \u2|COUNTER_GE~0_combout\ : std_logic;
SIGNAL \u7|Mux6~0_combout\ : std_logic;
SIGNAL \u2|jin_wei~0_combout\ : std_logic;
SIGNAL \u2|jin_wei~q\ : std_logic;
SIGNAL \u2|jin_wei~clkctrl_outclk\ : std_logic;
SIGNAL \u3|COUNTER_SHI~0_combout\ : std_logic;
SIGNAL \u3|COUNTER_SHI~2_combout\ : std_logic;
SIGNAL \u3|COUNTER_SHI~1_combout\ : std_logic;
SIGNAL \u8|Mux6~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \u3|jin_wei~0_combout\ : std_logic;
SIGNAL \u3|jin_wei~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \u4|COUNT_GE~3_combout\ : std_logic;
SIGNAL \u4|COUNT_GE~0_combout\ : std_logic;
SIGNAL \u4|COUNT_GE~1_combout\ : std_logic;
SIGNAL \u4|COUNT_GE~2_combout\ : std_logic;
SIGNAL \u9|Mux6~0_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~8_combout\ : std_logic;
SIGNAL \u4|LessThan0~0_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI[3]~2_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI[3]~3_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI[3]~4_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~5_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~6_combout\ : std_logic;
SIGNAL \u4|Add1~0_combout\ : std_logic;
SIGNAL \u4|COUNT_SHI~7_combout\ : std_logic;
SIGNAL \u10|Mux6~0_combout\ : std_logic;
SIGNAL \Data_DSP~3_combout\ : std_logic;
SIGNAL \Data_DSP~4_combout\ : std_logic;
SIGNAL \u7|Mux5~0_combout\ : std_logic;
SIGNAL \u8|Mux5~0_combout\ : std_logic;
SIGNAL \u10|Mux5~0_combout\ : std_logic;
SIGNAL \u9|Mux5~0_combout\ : std_logic;
SIGNAL \Data_DSP~5_combout\ : std_logic;
SIGNAL \Data_DSP~6_combout\ : std_logic;
SIGNAL \u7|Mux4~0_combout\ : std_logic;
SIGNAL \u8|Mux4~0_combout\ : std_logic;
SIGNAL \u9|Mux4~0_combout\ : std_logic;
SIGNAL \u10|Mux4~0_combout\ : std_logic;
SIGNAL \Data_DSP~7_combout\ : std_logic;
SIGNAL \Data_DSP~8_combout\ : std_logic;
SIGNAL \u8|Mux3~0_combout\ : std_logic;
SIGNAL \u10|Mux3~0_combout\ : std_logic;
SIGNAL \u9|Mux3~0_combout\ : std_logic;
SIGNAL \Data_DSP~9_combout\ : std_logic;
SIGNAL \u7|Mux3~0_combout\ : std_logic;
SIGNAL \Data_DSP~10_combout\ : std_logic;
SIGNAL \u7|Mux2~0_combout\ : std_logic;
SIGNAL \u8|Mux2~0_combout\ : std_logic;
SIGNAL \u9|Mux2~0_combout\ : std_logic;
SIGNAL \u10|Mux2~0_combout\ : std_logic;
SIGNAL \Data_DSP~11_combout\ : std_logic;
SIGNAL \Data_DSP~12_combout\ : std_logic;
SIGNAL \u8|Mux1~0_combout\ : std_logic;
SIGNAL \u9|Mux1~0_combout\ : std_logic;
SIGNAL \u10|Mux1~0_combout\ : std_logic;
SIGNAL \Data_DSP~13_combout\ : std_logic;
SIGNAL \u7|Mux1~0_combout\ : std_logic;
SIGNAL \Data_DSP~14_combout\ : std_logic;
SIGNAL \u7|Mux0~0_combout\ : std_logic;
SIGNAL \u8|Mux0~0_combout\ : std_logic;
SIGNAL \u9|Mux0~0_combout\ : std_logic;
SIGNAL \u10|Mux0~0_combout\ : std_logic;
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
SIGNAL RECODE : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|COUNTER_SHI\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL VAR : std_logic_vector(13 DOWNTO 0);
SIGNAL \u1|q_10ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \u5|ALT_INV_KEY_OUT~q\ : std_logic;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_SET_MODE <= SET_MODE;
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

-- Location: LCCOMB_X26_Y12_N6
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

-- Location: FF_X26_Y12_N7
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

-- Location: LCCOMB_X26_Y12_N8
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

-- Location: FF_X26_Y12_N9
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

-- Location: LCCOMB_X26_Y12_N10
\u1|q_1us[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[2]~10_combout\ = (\u1|q_1us\(2) & (\u1|q_1us[1]~9\ $ (GND))) # (!\u1|q_1us\(2) & (!\u1|q_1us[1]~9\ & VCC))
-- \u1|q_1us[2]~11\ = CARRY((\u1|q_1us\(2) & !\u1|q_1us[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1us\(2),
	datad => VCC,
	cin => \u1|q_1us[1]~9\,
	combout => \u1|q_1us[2]~10_combout\,
	cout => \u1|q_1us[2]~11\);

-- Location: FF_X26_Y12_N11
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

-- Location: LCCOMB_X26_Y12_N12
\u1|q_1us[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[3]~12_combout\ = (\u1|q_1us\(3) & (!\u1|q_1us[2]~11\)) # (!\u1|q_1us\(3) & ((\u1|q_1us[2]~11\) # (GND)))
-- \u1|q_1us[3]~13\ = CARRY((!\u1|q_1us[2]~11\) # (!\u1|q_1us\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1us\(3),
	datad => VCC,
	cin => \u1|q_1us[2]~11\,
	combout => \u1|q_1us[3]~12_combout\,
	cout => \u1|q_1us[3]~13\);

-- Location: FF_X26_Y12_N13
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

-- Location: LCCOMB_X26_Y12_N14
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

-- Location: FF_X26_Y12_N15
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

-- Location: LCCOMB_X26_Y12_N16
\u1|q_1us[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1us[5]~16_combout\ = \u1|q_1us[4]~15\ $ (\u1|q_1us\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|q_1us\(5),
	cin => \u1|q_1us[4]~15\,
	combout => \u1|q_1us[5]~16_combout\);

-- Location: FF_X26_Y12_N17
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

-- Location: LCCOMB_X26_Y12_N28
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|q_1us\(0) & (!\u1|q_1us\(3) & (!\u1|q_1us\(1) & !\u1|q_1us\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1us\(0),
	datab => \u1|q_1us\(3),
	datac => \u1|q_1us\(1),
	datad => \u1|q_1us\(2),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y12_N26
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (\u1|q_1us\(5) & (\u1|q_1us\(4) & !\u1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1us\(5),
	datac => \u1|q_1us\(4),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y12_N18
\u1|sig_1us~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sig_1us~feeder_combout\ = \u1|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|LessThan0~1_combout\,
	combout => \u1|sig_1us~feeder_combout\);

-- Location: FF_X26_Y12_N19
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X33_Y12_N8
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

-- Location: FF_X33_Y12_N9
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

-- Location: LCCOMB_X33_Y12_N10
\u1|q_1ms[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[1]~12_combout\ = (\u1|q_1ms\(1) & (!\u1|q_1ms[0]~11\)) # (!\u1|q_1ms\(1) & ((\u1|q_1ms[0]~11\) # (GND)))
-- \u1|q_1ms[1]~13\ = CARRY((!\u1|q_1ms[0]~11\) # (!\u1|q_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(1),
	datad => VCC,
	cin => \u1|q_1ms[0]~11\,
	combout => \u1|q_1ms[1]~12_combout\,
	cout => \u1|q_1ms[1]~13\);

-- Location: FF_X33_Y12_N11
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

-- Location: LCCOMB_X33_Y12_N12
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

-- Location: FF_X33_Y12_N13
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

-- Location: LCCOMB_X33_Y12_N14
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

-- Location: FF_X33_Y12_N15
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

-- Location: LCCOMB_X33_Y12_N16
\u1|q_1ms[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[4]~18_combout\ = (\u1|q_1ms\(4) & (\u1|q_1ms[3]~17\ $ (GND))) # (!\u1|q_1ms\(4) & (!\u1|q_1ms[3]~17\ & VCC))
-- \u1|q_1ms[4]~19\ = CARRY((\u1|q_1ms\(4) & !\u1|q_1ms[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(4),
	datad => VCC,
	cin => \u1|q_1ms[3]~17\,
	combout => \u1|q_1ms[4]~18_combout\,
	cout => \u1|q_1ms[4]~19\);

-- Location: FF_X33_Y12_N17
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

-- Location: LCCOMB_X33_Y12_N18
\u1|q_1ms[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[5]~20_combout\ = (\u1|q_1ms\(5) & (!\u1|q_1ms[4]~19\)) # (!\u1|q_1ms\(5) & ((\u1|q_1ms[4]~19\) # (GND)))
-- \u1|q_1ms[5]~21\ = CARRY((!\u1|q_1ms[4]~19\) # (!\u1|q_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1ms\(5),
	datad => VCC,
	cin => \u1|q_1ms[4]~19\,
	combout => \u1|q_1ms[5]~20_combout\,
	cout => \u1|q_1ms[5]~21\);

-- Location: FF_X33_Y12_N19
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

-- Location: LCCOMB_X33_Y12_N20
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

-- Location: FF_X33_Y12_N21
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

-- Location: LCCOMB_X33_Y12_N22
\u1|q_1ms[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[7]~24_combout\ = (\u1|q_1ms\(7) & (!\u1|q_1ms[6]~23\)) # (!\u1|q_1ms\(7) & ((\u1|q_1ms[6]~23\) # (GND)))
-- \u1|q_1ms[7]~25\ = CARRY((!\u1|q_1ms[6]~23\) # (!\u1|q_1ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(7),
	datad => VCC,
	cin => \u1|q_1ms[6]~23\,
	combout => \u1|q_1ms[7]~24_combout\,
	cout => \u1|q_1ms[7]~25\);

-- Location: FF_X33_Y12_N23
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

-- Location: LCCOMB_X33_Y12_N24
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

-- Location: FF_X33_Y12_N25
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

-- Location: LCCOMB_X33_Y12_N26
\u1|q_1ms[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1ms[9]~28_combout\ = \u1|q_1ms\(9) $ (\u1|q_1ms[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(9),
	cin => \u1|q_1ms[8]~27\,
	combout => \u1|q_1ms[9]~28_combout\);

-- Location: FF_X33_Y12_N27
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

-- Location: LCCOMB_X33_Y12_N30
\u1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~1_combout\ = (!\u1|q_1ms\(3) & (((!\u1|q_1ms\(2)) # (!\u1|q_1ms\(0))) # (!\u1|q_1ms\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(1),
	datab => \u1|q_1ms\(0),
	datac => \u1|q_1ms\(3),
	datad => \u1|q_1ms\(2),
	combout => \u1|LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y12_N2
\u1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~0_combout\ = (((!\u1|q_1ms\(8)) # (!\u1|q_1ms\(6))) # (!\u1|q_1ms\(5))) # (!\u1|q_1ms\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(7),
	datab => \u1|q_1ms\(5),
	datac => \u1|q_1ms\(6),
	datad => \u1|q_1ms\(8),
	combout => \u1|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\u1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~2_combout\ = (\u1|q_1ms\(9) & (!\u1|LessThan1~0_combout\ & ((\u1|q_1ms\(4)) # (!\u1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1ms\(9),
	datab => \u1|q_1ms\(4),
	datac => \u1|LessThan1~1_combout\,
	datad => \u1|LessThan1~0_combout\,
	combout => \u1|LessThan1~2_combout\);

-- Location: LCCOMB_X33_Y12_N28
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

-- Location: FF_X33_Y12_N29
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

-- Location: FF_X18_Y15_N19
\u1|clk_ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	asdata => \u1|sig_1ms~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_ms~q\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X19_Y15_N26
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

-- Location: FF_X19_Y15_N27
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

-- Location: LCCOMB_X19_Y15_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (COUNTER_MID(1) & (MEMORY(0) $ (VCC))) # (!COUNTER_MID(1) & (MEMORY(0) & VCC))
-- \Add2~1\ = CARRY((COUNTER_MID(1) & MEMORY(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(1),
	datab => MEMORY(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X19_Y15_N13
\COUNTER_MID[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(1));

-- Location: LCCOMB_X19_Y15_N14
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (COUNTER_MID(2) & (!\Add2~1\)) # (!COUNTER_MID(2) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!COUNTER_MID(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X19_Y15_N15
\COUNTER_MID[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(2));

-- Location: LCCOMB_X19_Y15_N16
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (COUNTER_MID(3) & (\Add2~3\ $ (GND))) # (!COUNTER_MID(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((COUNTER_MID(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X19_Y15_N18
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (COUNTER_MID(4) & (!\Add2~5\)) # (!COUNTER_MID(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!COUNTER_MID(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X19_Y15_N19
\COUNTER_MID[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(4));

-- Location: LCCOMB_X19_Y15_N2
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (COUNTER_MID(2) & (!COUNTER_MID(3) & (!COUNTER_MID(4) & COUNTER_MID(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(2),
	datab => COUNTER_MID(3),
	datac => COUNTER_MID(4),
	datad => COUNTER_MID(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X19_Y15_N20
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (COUNTER_MID(5) & (\Add2~7\ $ (GND))) # (!COUNTER_MID(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((COUNTER_MID(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER_MID(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X19_Y15_N21
\COUNTER_MID[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER_MID(5));

-- Location: LCCOMB_X19_Y15_N22
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (COUNTER_MID(6) & (!\Add2~9\)) # (!COUNTER_MID(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!COUNTER_MID(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X19_Y15_N0
\COUNTER_MID~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_MID~1_combout\ = (\Add2~10_combout\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Add2~10_combout\,
	datad => \Equal1~1_combout\,
	combout => \COUNTER_MID~1_combout\);

-- Location: FF_X19_Y15_N1
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

-- Location: LCCOMB_X19_Y15_N24
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = COUNTER_MID(7) $ (!\Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER_MID(7),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X19_Y15_N28
\COUNTER_MID~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_MID~0_combout\ = (\Add2~12_combout\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add2~12_combout\,
	combout => \COUNTER_MID~0_combout\);

-- Location: FF_X19_Y15_N29
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

-- Location: LCCOMB_X19_Y15_N8
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!COUNTER_MID(5) & (COUNTER_MID(7) & (COUNTER_MID(6) & MEMORY(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(5),
	datab => COUNTER_MID(7),
	datac => COUNTER_MID(6),
	datad => MEMORY(0),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X19_Y15_N6
\COUNTER_MID~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER_MID~2_combout\ = (\Add2~4_combout\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add2~4_combout\,
	combout => \COUNTER_MID~2_combout\);

-- Location: FF_X19_Y15_N7
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

-- Location: LCCOMB_X19_Y15_N30
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (COUNTER_MID(5) & ((COUNTER_MID(3)) # ((COUNTER_MID(2)) # (COUNTER_MID(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER_MID(3),
	datab => COUNTER_MID(5),
	datac => COUNTER_MID(2),
	datad => COUNTER_MID(4),
	combout => \LessThan1~0_combout\);

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

-- Location: LCCOMB_X19_Y14_N18
\u5|COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~2_combout\ = (\u5|COUNT\(0) & ((\u5|COUNT\(3) & ((\u5|COUNT\(1)) # (!\u5|COUNT\(2)))) # (!\u5|COUNT\(3) & ((!\u5|COUNT\(1)))))) # (!\u5|COUNT\(0) & (((\u5|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(0),
	datab => \u5|COUNT\(2),
	datac => \u5|COUNT\(3),
	datad => \u5|COUNT\(1),
	combout => \u5|COUNT~2_combout\);

-- Location: LCCOMB_X19_Y14_N14
\u5|COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~3_combout\ = (\u5|COUNT~2_combout\ & !\SET_MODE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|COUNT~2_combout\,
	datad => \SET_MODE~input_o\,
	combout => \u5|COUNT~3_combout\);

-- Location: FF_X19_Y14_N15
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

-- Location: LCCOMB_X19_Y14_N12
\u5|COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~4_combout\ = \u5|COUNT\(2) $ (((\u5|COUNT\(0) & (!\u5|COUNT\(3) & \u5|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(0),
	datab => \u5|COUNT\(2),
	datac => \u5|COUNT\(3),
	datad => \u5|COUNT\(1),
	combout => \u5|COUNT~4_combout\);

-- Location: LCCOMB_X19_Y14_N10
\u5|COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~5_combout\ = (!\SET_MODE~input_o\ & \u5|COUNT~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datad => \u5|COUNT~4_combout\,
	combout => \u5|COUNT~5_combout\);

-- Location: FF_X19_Y14_N11
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

-- Location: LCCOMB_X19_Y14_N16
\u5|COUNT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~6_combout\ = \u5|COUNT\(0) $ ((((!\u5|COUNT\(2) & !\u5|COUNT\(1))) # (!\u5|COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(0),
	datab => \u5|COUNT\(3),
	datac => \u5|COUNT\(2),
	datad => \u5|COUNT\(1),
	combout => \u5|COUNT~6_combout\);

-- Location: LCCOMB_X19_Y14_N20
\u5|COUNT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~7_combout\ = (!\SET_MODE~input_o\ & \u5|COUNT~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_MODE~input_o\,
	datad => \u5|COUNT~6_combout\,
	combout => \u5|COUNT~7_combout\);

-- Location: FF_X19_Y14_N21
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

-- Location: LCCOMB_X19_Y14_N28
\u5|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|COUNT~0_combout\ = (\u5|COUNT\(3)) # ((\u5|COUNT\(0) & (\u5|COUNT\(2) & \u5|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|COUNT\(0),
	datab => \u5|COUNT\(2),
	datac => \u5|COUNT\(3),
	datad => \u5|COUNT\(1),
	combout => \u5|COUNT~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
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

-- Location: FF_X19_Y14_N5
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

-- Location: LCCOMB_X19_Y14_N2
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

-- Location: LCCOMB_X19_Y14_N22
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

-- Location: FF_X19_Y14_N1
\u5|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	asdata => \u5|KEY_OUT~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|KEY_OUT~q\);

-- Location: LCCOMB_X18_Y14_N14
\RECODE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RECODE~0_combout\ = (!RECODE(0) & !RECODE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RECODE(0),
	datad => RECODE(1),
	combout => \RECODE~0_combout\);

-- Location: LCCOMB_X17_Y14_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = VAR(0) $ (VCC)
-- \Add0~1\ = CARRY(VAR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VAR(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X17_Y14_N1
\VAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(0));

-- Location: LCCOMB_X17_Y14_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (VAR(1) & (!\Add0~1\)) # (!VAR(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!VAR(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X17_Y14_N3
\VAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(1));

-- Location: LCCOMB_X17_Y14_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (VAR(2) & (\Add0~3\ $ (GND))) # (!VAR(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((VAR(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X17_Y14_N5
\VAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(2));

-- Location: LCCOMB_X17_Y14_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (VAR(3) & (!\Add0~5\)) # (!VAR(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!VAR(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAR(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X17_Y14_N7
\VAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(3));

-- Location: LCCOMB_X16_Y14_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (VAR(3) & (VAR(0) & (VAR(2) & VAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAR(3),
	datab => VAR(0),
	datac => VAR(2),
	datad => VAR(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y14_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (VAR(7) & (!\Add0~13\)) # (!VAR(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!VAR(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X17_Y14_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (VAR(8) & (\Add0~15\ $ (GND))) # (!VAR(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((VAR(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y14_N24
\VAR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAR~3_combout\ = (\Add0~16_combout\ & (((!\Equal0~3_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Add0~16_combout\,
	combout => \VAR~3_combout\);

-- Location: FF_X19_Y14_N25
\VAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \VAR~3_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(8));

-- Location: LCCOMB_X17_Y14_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (VAR(9) & (!\Add0~17\)) # (!VAR(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!VAR(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X18_Y14_N10
\VAR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAR~0_combout\ = (\Add0~18_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~18_combout\,
	combout => \VAR~0_combout\);

-- Location: FF_X18_Y14_N11
\VAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \VAR~0_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(9));

-- Location: LCCOMB_X17_Y14_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (VAR(10) & (\Add0~19\ $ (GND))) # (!VAR(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((VAR(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X18_Y14_N18
\VAR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAR~1_combout\ = (\Add0~20_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~20_combout\,
	combout => \VAR~1_combout\);

-- Location: FF_X18_Y14_N19
\VAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \VAR~1_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(10));

-- Location: LCCOMB_X17_Y14_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (VAR(11) & (!\Add0~21\)) # (!VAR(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!VAR(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAR(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X17_Y14_N23
\VAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(11));

-- Location: LCCOMB_X17_Y14_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (VAR(12) & (\Add0~23\ $ (GND))) # (!VAR(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((VAR(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X17_Y14_N25
\VAR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(12));

-- Location: LCCOMB_X16_Y14_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (VAR(9) & (!VAR(11) & (VAR(10) & VAR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAR(9),
	datab => VAR(11),
	datac => VAR(10),
	datad => VAR(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y14_N14
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (VAR(13) & (!VAR(12) & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAR(13),
	datac => VAR(12),
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y14_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (VAR(4) & (\Add0~7\ $ (GND))) # (!VAR(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((VAR(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VAR(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y14_N28
\VAR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAR~2_combout\ = (\Add0~8_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~8_combout\,
	combout => \VAR~2_combout\);

-- Location: FF_X18_Y14_N29
\VAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \VAR~2_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(4));

-- Location: LCCOMB_X17_Y14_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (VAR(5) & (!\Add0~9\)) # (!VAR(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!VAR(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAR(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X17_Y14_N11
\VAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(5));

-- Location: LCCOMB_X17_Y14_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (VAR(6) & (\Add0~11\ $ (GND))) # (!VAR(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((VAR(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VAR(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X17_Y14_N13
\VAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(6));

-- Location: FF_X17_Y14_N15
\VAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(7));

-- Location: LCCOMB_X16_Y14_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!VAR(7) & (!VAR(5) & (!VAR(6) & !VAR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VAR(7),
	datab => VAR(5),
	datac => VAR(6),
	datad => VAR(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y14_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \Add0~25\ $ (VAR(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VAR(13),
	cin => \Add0~25\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X16_Y14_N2
\VAR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VAR~4_combout\ = (\Add0~26_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~3_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~26_combout\,
	combout => \VAR~4_combout\);

-- Location: FF_X16_Y14_N3
\VAR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~clkctrl_outclk\,
	d => \VAR~4_combout\,
	clrn => \u5|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VAR(13));

-- Location: LCCOMB_X16_Y14_N18
\counter[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(13) = (\u5|KEY_OUT~q\ & (counter(13))) # (!\u5|KEY_OUT~q\ & ((VAR(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datac => \u5|KEY_OUT~q\,
	datad => VAR(13),
	combout => counter(13));

-- Location: LCCOMB_X18_Y14_N6
\counter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(4) = (\u5|KEY_OUT~q\ & (counter(4))) # (!\u5|KEY_OUT~q\ & ((VAR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \u5|KEY_OUT~q\,
	datad => VAR(4),
	combout => counter(4));

-- Location: LCCOMB_X18_Y14_N2
\counter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(3) = (\u5|KEY_OUT~q\ & ((counter(3)))) # (!\u5|KEY_OUT~q\ & (VAR(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|KEY_OUT~q\,
	datac => VAR(3),
	datad => counter(3),
	combout => counter(3));

-- Location: LCCOMB_X18_Y14_N30
\counter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(2) = (\u5|KEY_OUT~q\ & (counter(2))) # (!\u5|KEY_OUT~q\ & ((VAR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datac => VAR(2),
	datad => \u5|KEY_OUT~q\,
	combout => counter(2));

-- Location: LCCOMB_X18_Y14_N12
\counter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(5) = (\u5|KEY_OUT~q\ & (counter(5))) # (!\u5|KEY_OUT~q\ & ((VAR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datac => \u5|KEY_OUT~q\,
	datad => VAR(5),
	combout => counter(5));

-- Location: LCCOMB_X18_Y14_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(3) & !counter(2))) # (!counter(5))) # (!counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(3),
	datac => counter(2),
	datad => counter(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y14_N30
\counter[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(11) = (\u5|KEY_OUT~q\ & (counter(11))) # (!\u5|KEY_OUT~q\ & ((VAR(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datac => VAR(11),
	datad => \u5|KEY_OUT~q\,
	combout => counter(11));

-- Location: LCCOMB_X18_Y14_N16
\counter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(10) = (\u5|KEY_OUT~q\ & (counter(10))) # (!\u5|KEY_OUT~q\ & ((VAR(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datac => \u5|KEY_OUT~q\,
	datad => VAR(10),
	combout => counter(10));

-- Location: LCCOMB_X18_Y14_N20
\counter[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(9) = (\u5|KEY_OUT~q\ & (counter(9))) # (!\u5|KEY_OUT~q\ & ((VAR(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => \u5|KEY_OUT~q\,
	datad => VAR(9),
	combout => counter(9));

-- Location: LCCOMB_X17_Y14_N28
\counter[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(12) = (\u5|KEY_OUT~q\ & (counter(12))) # (!\u5|KEY_OUT~q\ & ((VAR(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datac => \u5|KEY_OUT~q\,
	datad => VAR(12),
	combout => counter(12));

-- Location: LCCOMB_X18_Y14_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(11) & (!counter(10) & (!counter(9) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(10),
	datac => counter(9),
	datad => counter(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y14_N6
\counter[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(8) = (\u5|KEY_OUT~q\ & (counter(8))) # (!\u5|KEY_OUT~q\ & ((VAR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datac => \u5|KEY_OUT~q\,
	datad => VAR(8),
	combout => counter(8));

-- Location: LCCOMB_X18_Y14_N26
\counter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(6) = (\u5|KEY_OUT~q\ & (counter(6))) # (!\u5|KEY_OUT~q\ & ((VAR(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|KEY_OUT~q\,
	datac => counter(6),
	datad => VAR(6),
	combout => counter(6));

-- Location: LCCOMB_X16_Y14_N24
\counter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(7) = (\u5|KEY_OUT~q\ & ((counter(7)))) # (!\u5|KEY_OUT~q\ & (VAR(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|KEY_OUT~q\,
	datac => VAR(7),
	datad => counter(7),
	combout => counter(7));

-- Location: LCCOMB_X18_Y14_N24
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!counter(7)) # (!counter(6))) # (!counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datac => counter(6),
	datad => counter(7),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y14_N22
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter(13)) # (((!\LessThan0~1_combout\ & !\LessThan0~2_combout\)) # (!\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X18_Y14_N15
\RECODE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_KEY_OUT~q\,
	d => \RECODE~0_combout\,
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RECODE(0));

-- Location: LCCOMB_X18_Y14_N0
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (RECODE(0) & !RECODE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RECODE(0),
	datad => RECODE(1),
	combout => \Equal3~0_combout\);

-- Location: FF_X18_Y14_N21
\RECODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_KEY_OUT~q\,
	asdata => \Equal3~0_combout\,
	sload => VCC,
	ena => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RECODE(1));

-- Location: LCCOMB_X18_Y15_N16
\Data_DSP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~0_combout\ = (RECODE(1) & !RECODE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RECODE(1),
	datad => RECODE(0),
	combout => \Data_DSP~0_combout\);

-- Location: LCCOMB_X18_Y15_N12
\Data_DSP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~1_combout\ = (\Data_DSP~0_combout\ & ((COUNTER_MID(7)) # ((\LessThan1~0_combout\ & COUNTER_MID(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => COUNTER_MID(7),
	datac => COUNTER_MID(6),
	datad => \Data_DSP~0_combout\,
	combout => \Data_DSP~1_combout\);

-- Location: LCCOMB_X19_Y15_N10
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

-- Location: FF_X18_Y15_N5
\MEMORY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clk_ms~q\,
	asdata => \MEMORY[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MEMORY(1));

-- Location: LCCOMB_X18_Y15_N2
\E_pin3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3~0_combout\ = (\Equal3~0_combout\ & ((COUNTER_MID(7)) # ((\LessThan1~0_combout\ & COUNTER_MID(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => COUNTER_MID(7),
	datac => COUNTER_MID(6),
	datad => \Equal3~0_combout\,
	combout => \E_pin3~0_combout\);

-- Location: LCCOMB_X18_Y15_N6
\Data_DSP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~2_combout\ = (\Data_DSP~1_combout\ & (((!MEMORY(1) & !\E_pin3~0_combout\)) # (!\Equal3~0_combout\))) # (!\Data_DSP~1_combout\ & (((!MEMORY(1) & !\E_pin3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => \Equal3~0_combout\,
	datac => MEMORY(1),
	datad => \E_pin3~0_combout\,
	combout => \Data_DSP~2_combout\);

-- Location: LCCOMB_X19_Y14_N8
NO_JITTER : cycloneive_lcell_comb
-- Equation(s):
-- \NO_JITTER~combout\ = (\LessThan0~3_combout\ & ((\NO_JITTER~combout\))) # (!\LessThan0~3_combout\ & (\u5|KEY_OUT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|KEY_OUT~q\,
	datac => \NO_JITTER~combout\,
	datad => \LessThan0~3_combout\,
	combout => \NO_JITTER~combout\);

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X1_Y11_N6
\u1|q_10ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~0_combout\ = (!\u1|q_10ms\(0) & (((!\u1|q_10ms\(1) & !\u1|q_10ms\(2))) # (!\u1|q_10ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(1),
	datab => \u1|q_10ms\(3),
	datac => \u1|q_10ms\(0),
	datad => \u1|q_10ms\(2),
	combout => \u1|q_10ms~0_combout\);

-- Location: FF_X1_Y11_N7
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

-- Location: LCCOMB_X1_Y11_N26
\u1|q_10ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~2_combout\ = (!\u1|q_10ms\(3) & (\u1|q_10ms\(2) $ (((\u1|q_10ms\(1) & \u1|q_10ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(1),
	datab => \u1|q_10ms\(3),
	datac => \u1|q_10ms\(2),
	datad => \u1|q_10ms\(0),
	combout => \u1|q_10ms~2_combout\);

-- Location: FF_X1_Y11_N27
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

-- Location: LCCOMB_X1_Y11_N14
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

-- Location: FF_X1_Y11_N15
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

-- Location: LCCOMB_X1_Y11_N30
\u1|q_10ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_10ms~1_combout\ = (!\u1|q_10ms\(3) & (\u1|q_10ms\(1) $ (\u1|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_10ms\(3),
	datac => \u1|q_10ms\(1),
	datad => \u1|q_10ms\(0),
	combout => \u1|q_10ms~1_combout\);

-- Location: FF_X1_Y11_N31
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

-- Location: LCCOMB_X1_Y11_N28
\u1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan2~0_combout\ = (\u1|q_10ms\(3) & ((\u1|q_10ms\(1)) # ((\u1|q_10ms\(0)) # (\u1|q_10ms\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_10ms\(1),
	datab => \u1|q_10ms\(0),
	datac => \u1|q_10ms\(2),
	datad => \u1|q_10ms\(3),
	combout => \u1|LessThan2~0_combout\);

-- Location: FF_X1_Y11_N29
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

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X23_Y14_N0
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

-- Location: FF_X23_Y14_N1
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

-- Location: LCCOMB_X23_Y14_N2
\u1|q_1s[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[1]~9_combout\ = (\u1|q_1s\(1) & (!\u1|q_1s[0]~8\)) # (!\u1|q_1s\(1) & ((\u1|q_1s[0]~8\) # (GND)))
-- \u1|q_1s[1]~10\ = CARRY((!\u1|q_1s[0]~8\) # (!\u1|q_1s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1s\(1),
	datad => VCC,
	cin => \u1|q_1s[0]~8\,
	combout => \u1|q_1s[1]~9_combout\,
	cout => \u1|q_1s[1]~10\);

-- Location: FF_X23_Y14_N3
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

-- Location: LCCOMB_X23_Y14_N4
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

-- Location: FF_X23_Y14_N5
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

-- Location: LCCOMB_X23_Y14_N6
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

-- Location: FF_X23_Y14_N7
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

-- Location: LCCOMB_X23_Y14_N8
\u1|q_1s[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[4]~15_combout\ = (\u1|q_1s\(4) & (\u1|q_1s[3]~14\ $ (GND))) # (!\u1|q_1s\(4) & (!\u1|q_1s[3]~14\ & VCC))
-- \u1|q_1s[4]~16\ = CARRY((\u1|q_1s\(4) & !\u1|q_1s[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|q_1s\(4),
	datad => VCC,
	cin => \u1|q_1s[3]~14\,
	combout => \u1|q_1s[4]~15_combout\,
	cout => \u1|q_1s[4]~16\);

-- Location: FF_X23_Y14_N9
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

-- Location: LCCOMB_X23_Y14_N10
\u1|q_1s[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|q_1s[5]~17_combout\ = (\u1|q_1s\(5) & (!\u1|q_1s[4]~16\)) # (!\u1|q_1s\(5) & ((\u1|q_1s[4]~16\) # (GND)))
-- \u1|q_1s[5]~18\ = CARRY((!\u1|q_1s[4]~16\) # (!\u1|q_1s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(5),
	datad => VCC,
	cin => \u1|q_1s[4]~16\,
	combout => \u1|q_1s[5]~17_combout\,
	cout => \u1|q_1s[5]~18\);

-- Location: FF_X23_Y14_N11
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

-- Location: LCCOMB_X23_Y14_N12
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

-- Location: FF_X23_Y14_N13
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

-- Location: LCCOMB_X23_Y14_N20
\u1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan3~0_combout\ = (!\u1|q_1s\(3) & (!\u1|q_1s\(2) & ((!\u1|q_1s\(0)) # (!\u1|q_1s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(3),
	datab => \u1|q_1s\(1),
	datac => \u1|q_1s\(2),
	datad => \u1|q_1s\(0),
	combout => \u1|LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\u1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan3~1_combout\ = (\u1|q_1s\(6) & (\u1|q_1s\(5) & ((\u1|q_1s\(4)) # (!\u1|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|q_1s\(6),
	datab => \u1|q_1s\(4),
	datac => \u1|q_1s\(5),
	datad => \u1|LessThan3~0_combout\,
	combout => \u1|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y14_N26
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

-- Location: FF_X23_Y14_N27
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

-- Location: LCCOMB_X23_Y14_N28
\u1|clk_second~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clk_second~feeder_combout\ = \u1|sig_1s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|sig_1s~q\,
	combout => \u1|clk_second~feeder_combout\);

-- Location: FF_X23_Y14_N29
\u1|clk_second\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \u1|clk_second~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clk_second~q\);

-- Location: LCCOMB_X23_Y14_N22
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (RECODE(0) & (\NO_JITTER~combout\)) # (!RECODE(0) & ((\u1|clk_second~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NO_JITTER~combout\,
	datac => RECODE(0),
	datad => \u1|clk_second~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\Mux0~0_combout\ & !RECODE(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~0_combout\,
	datad => RECODE(1),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X22_Y16_N18
\u2|COUNTER_GE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|COUNTER_GE~2_combout\ = (!\u2|COUNTER_GE\(3) & (\u2|COUNTER_GE\(2) $ (((\u2|COUNTER_GE\(1) & \u2|COUNTER_GE\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(3),
	datac => \u2|COUNTER_GE\(2),
	datad => \u2|COUNTER_GE\(0),
	combout => \u2|COUNTER_GE~2_combout\);

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

-- Location: FF_X22_Y16_N19
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

-- Location: LCCOMB_X22_Y16_N0
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

-- Location: FF_X22_Y16_N1
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

-- Location: LCCOMB_X22_Y16_N22
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

-- Location: FF_X22_Y16_N23
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

-- Location: LCCOMB_X22_Y16_N4
\u2|COUNTER_GE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|COUNTER_GE~0_combout\ = (!\u2|COUNTER_GE\(0) & (((!\u2|COUNTER_GE\(1) & !\u2|COUNTER_GE\(2))) # (!\u2|COUNTER_GE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(1),
	datab => \u2|COUNTER_GE\(3),
	datac => \u2|COUNTER_GE\(0),
	datad => \u2|COUNTER_GE\(2),
	combout => \u2|COUNTER_GE~0_combout\);

-- Location: FF_X22_Y16_N5
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

-- Location: LCCOMB_X22_Y16_N10
\u7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux6~0_combout\ = (\u2|COUNTER_GE\(1) & (((\u2|COUNTER_GE\(3))))) # (!\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(2) $ (((\u2|COUNTER_GE\(0) & !\u2|COUNTER_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y16_N20
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

-- Location: FF_X22_Y16_N21
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

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X21_Y17_N26
\u3|COUNTER_SHI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|COUNTER_SHI~0_combout\ = (\u3|COUNTER_SHI\(1) & (!\u3|COUNTER_SHI\(2) & \u3|COUNTER_SHI\(0))) # (!\u3|COUNTER_SHI\(1) & (\u3|COUNTER_SHI\(2) & !\u3|COUNTER_SHI\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(1),
	datac => \u3|COUNTER_SHI\(2),
	datad => \u3|COUNTER_SHI\(0),
	combout => \u3|COUNTER_SHI~0_combout\);

-- Location: FF_X21_Y17_N27
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

-- Location: LCCOMB_X21_Y17_N10
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

-- Location: FF_X21_Y17_N11
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

-- Location: LCCOMB_X21_Y17_N14
\u3|COUNTER_SHI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|COUNTER_SHI~1_combout\ = (!\u3|COUNTER_SHI\(0) & ((!\u3|COUNTER_SHI\(2)) # (!\u3|COUNTER_SHI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(1),
	datac => \u3|COUNTER_SHI\(0),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u3|COUNTER_SHI~1_combout\);

-- Location: FF_X21_Y17_N15
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

-- Location: LCCOMB_X21_Y17_N18
\u8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux6~0_combout\ = (!\u3|COUNTER_SHI\(1) & (\u3|COUNTER_SHI\(0) $ (\u3|COUNTER_SHI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\NO_JITTER~combout\ & !RECODE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NO_JITTER~combout\,
	datad => RECODE(0),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X21_Y17_N20
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

-- Location: FF_X21_Y17_N21
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

-- Location: LCCOMB_X19_Y14_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\u3|jin_wei~q\ & !RECODE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|jin_wei~q\,
	datad => RECODE(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y14_N30
\rtl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((RECODE(1) & (\Mux1~1_combout\)) # (!RECODE(1) & ((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~1_combout\,
	datac => \Mux1~0_combout\,
	datad => RECODE(1),
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X22_Y18_N18
\u4|COUNT_GE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~3_combout\ = (\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(0) & (!\u4|COUNT_GE\(3) & \u4|COUNT_GE\(1)))) # (!\u4|COUNT_GE\(2) & (!\u4|COUNT_GE\(0) & (\u4|COUNT_GE\(3) & !\u4|COUNT_GE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(3),
	datad => \u4|COUNT_GE\(1),
	combout => \u4|COUNT_GE~3_combout\);

-- Location: FF_X22_Y18_N19
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

-- Location: LCCOMB_X22_Y18_N0
\u4|COUNT_GE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~0_combout\ = (!\u4|COUNT_GE\(0) & (((!\u4|COUNT_GE\(2) & !\u4|COUNT_GE\(1))) # (!\u4|COUNT_GE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(3),
	datac => \u4|COUNT_GE\(0),
	datad => \u4|COUNT_GE\(1),
	combout => \u4|COUNT_GE~0_combout\);

-- Location: FF_X22_Y18_N1
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

-- Location: LCCOMB_X22_Y18_N30
\u4|COUNT_GE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~1_combout\ = (!\u4|COUNT_GE\(3) & (\u4|COUNT_GE\(0) $ (\u4|COUNT_GE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(0),
	datab => \u4|COUNT_GE\(3),
	datac => \u4|COUNT_GE\(1),
	combout => \u4|COUNT_GE~1_combout\);

-- Location: FF_X22_Y18_N31
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

-- Location: LCCOMB_X22_Y18_N4
\u4|COUNT_GE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_GE~2_combout\ = (!\u4|COUNT_GE\(3) & (\u4|COUNT_GE\(2) $ (((\u4|COUNT_GE\(1) & \u4|COUNT_GE\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(1),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(2),
	datad => \u4|COUNT_GE\(3),
	combout => \u4|COUNT_GE~2_combout\);

-- Location: FF_X22_Y18_N5
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

-- Location: LCCOMB_X22_Y17_N10
\u9|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux6~0_combout\ = (\u4|COUNT_GE\(1) & (((\u4|COUNT_GE\(3))))) # (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(2) $ (((\u4|COUNT_GE\(0) & !\u4|COUNT_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y18_N24
\u4|COUNT_SHI~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~8_combout\ = (\u4|COUNT_SHI[3]~4_combout\ & (\u4|COUNT_SHI\(2) $ (((\u4|COUNT_SHI\(0) & \u4|COUNT_SHI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(0),
	datab => \u4|COUNT_SHI\(1),
	datac => \u4|COUNT_SHI\(2),
	datad => \u4|COUNT_SHI[3]~4_combout\,
	combout => \u4|COUNT_SHI~8_combout\);

-- Location: LCCOMB_X22_Y18_N8
\u4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|LessThan0~0_combout\ = (\u4|COUNT_GE\(3) & ((\u4|COUNT_GE\(1)) # ((\u4|COUNT_GE\(0)) # (\u4|COUNT_GE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(1),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(2),
	datad => \u4|COUNT_GE\(3),
	combout => \u4|LessThan0~0_combout\);

-- Location: FF_X22_Y18_N25
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

-- Location: LCCOMB_X22_Y18_N10
\u4|COUNT_SHI[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI[3]~2_combout\ = (!\u4|COUNT_GE\(1) & (!\u4|COUNT_GE\(2) & \u4|COUNT_GE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(1),
	datac => \u4|COUNT_GE\(2),
	datad => \u4|COUNT_GE\(0),
	combout => \u4|COUNT_SHI[3]~2_combout\);

-- Location: LCCOMB_X22_Y18_N16
\u4|COUNT_SHI[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI[3]~3_combout\ = (\u4|COUNT_SHI\(0) & (\u4|COUNT_GE\(3) & \u4|COUNT_SHI[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(0),
	datab => \u4|COUNT_GE\(3),
	datad => \u4|COUNT_SHI[3]~2_combout\,
	combout => \u4|COUNT_SHI[3]~3_combout\);

-- Location: LCCOMB_X22_Y18_N6
\u4|COUNT_SHI[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI[3]~4_combout\ = (\u4|COUNT_SHI\(1) & (!\u4|COUNT_SHI\(3))) # (!\u4|COUNT_SHI\(1) & (((!\u4|COUNT_SHI\(3) & !\u4|COUNT_SHI[3]~3_combout\)) # (!\u4|COUNT_SHI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(1),
	datad => \u4|COUNT_SHI[3]~3_combout\,
	combout => \u4|COUNT_SHI[3]~4_combout\);

-- Location: LCCOMB_X22_Y18_N12
\u4|COUNT_SHI~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~5_combout\ = (!\u4|COUNT_SHI\(0) & \u4|COUNT_SHI[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI[3]~4_combout\,
	combout => \u4|COUNT_SHI~5_combout\);

-- Location: FF_X22_Y18_N13
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

-- Location: LCCOMB_X22_Y18_N2
\u4|COUNT_SHI~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~6_combout\ = (\u4|COUNT_SHI[3]~4_combout\ & (\u4|COUNT_SHI\(0) $ (\u4|COUNT_SHI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(0),
	datac => \u4|COUNT_SHI\(1),
	datad => \u4|COUNT_SHI[3]~4_combout\,
	combout => \u4|COUNT_SHI~6_combout\);

-- Location: FF_X22_Y18_N3
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

-- Location: LCCOMB_X22_Y18_N22
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

-- Location: LCCOMB_X22_Y18_N26
\u4|COUNT_SHI~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|COUNT_SHI~7_combout\ = (\u4|COUNT_SHI[3]~4_combout\ & (\u4|COUNT_SHI\(3) $ (((\u4|Add1~0_combout\ & \u4|COUNT_SHI\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~0_combout\,
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(3),
	datad => \u4|COUNT_SHI[3]~4_combout\,
	combout => \u4|COUNT_SHI~7_combout\);

-- Location: FF_X22_Y18_N27
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

-- Location: LCCOMB_X22_Y17_N8
\u10|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux6~0_combout\ = (\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(3))) # (!\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(2) $ (((!\u4|COUNT_SHI\(3) & \u4|COUNT_SHI\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(1),
	combout => \u10|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Data_DSP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~3_combout\ = (MEMORY(0) & (((\u10|Mux6~0_combout\) # (\Data_DSP~2_combout\)))) # (!MEMORY(0) & (\u9|Mux6~0_combout\ & ((!\Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|Mux6~0_combout\,
	datab => MEMORY(0),
	datac => \u10|Mux6~0_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~3_combout\);

-- Location: LCCOMB_X21_Y17_N0
\Data_DSP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~4_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~3_combout\ & ((\u8|Mux6~0_combout\))) # (!\Data_DSP~3_combout\ & (\u7|Mux6~0_combout\)))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u7|Mux6~0_combout\,
	datac => \u8|Mux6~0_combout\,
	datad => \Data_DSP~3_combout\,
	combout => \Data_DSP~4_combout\);

-- Location: LCCOMB_X22_Y16_N6
\u7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux5~0_combout\ = (\u2|COUNTER_GE\(2) & ((\u2|COUNTER_GE\(3)) # (\u2|COUNTER_GE\(0) $ (\u2|COUNTER_GE\(1))))) # (!\u2|COUNTER_GE\(2) & (((\u2|COUNTER_GE\(1) & \u2|COUNTER_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\u8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux5~0_combout\ = (\u3|COUNTER_SHI\(2) & (\u3|COUNTER_SHI\(0) $ (\u3|COUNTER_SHI\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\u10|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux5~0_combout\ = (\u4|COUNT_SHI\(3) & ((\u4|COUNT_SHI\(2)) # ((\u4|COUNT_SHI\(1))))) # (!\u4|COUNT_SHI\(3) & (\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(0) $ (\u4|COUNT_SHI\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(1),
	combout => \u10|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\u9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux5~0_combout\ = (\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(3)) # (\u4|COUNT_GE\(0) $ (\u4|COUNT_GE\(1))))) # (!\u4|COUNT_GE\(2) & (((\u4|COUNT_GE\(1) & \u4|COUNT_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\Data_DSP~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~5_combout\ = (MEMORY(0) & ((\u10|Mux5~0_combout\) # ((\Data_DSP~2_combout\)))) # (!MEMORY(0) & (((\u9|Mux5~0_combout\ & !\Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux5~0_combout\,
	datab => MEMORY(0),
	datac => \u9|Mux5~0_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~5_combout\);

-- Location: LCCOMB_X22_Y16_N14
\Data_DSP~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~6_combout\ = (\Data_DSP~5_combout\ & (((\u8|Mux5~0_combout\) # (!\Data_DSP~2_combout\)))) # (!\Data_DSP~5_combout\ & (\u7|Mux5~0_combout\ & ((\Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Mux5~0_combout\,
	datab => \u8|Mux5~0_combout\,
	datac => \Data_DSP~5_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~6_combout\);

-- Location: LCCOMB_X22_Y16_N8
\u7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux4~0_combout\ = (\u2|COUNTER_GE\(2) & (((\u2|COUNTER_GE\(3))))) # (!\u2|COUNTER_GE\(2) & (\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(3)) # (!\u2|COUNTER_GE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\u8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux4~0_combout\ = (!\u3|COUNTER_SHI\(0) & (\u3|COUNTER_SHI\(1) & !\u3|COUNTER_SHI\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\u9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux4~0_combout\ = (\u4|COUNT_GE\(2) & (((\u4|COUNT_GE\(3))))) # (!\u4|COUNT_GE\(2) & (\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)) # (!\u4|COUNT_GE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\u10|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux4~0_combout\ = (\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(3))) # (!\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(1) & ((\u4|COUNT_SHI\(3)) # (!\u4|COUNT_SHI\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(1),
	combout => \u10|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y17_N20
\Data_DSP~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~7_combout\ = (\Data_DSP~2_combout\ & (MEMORY(0))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & ((\u10|Mux4~0_combout\))) # (!MEMORY(0) & (\u9|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => MEMORY(0),
	datac => \u9|Mux4~0_combout\,
	datad => \u10|Mux4~0_combout\,
	combout => \Data_DSP~7_combout\);

-- Location: LCCOMB_X22_Y17_N6
\Data_DSP~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~8_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~7_combout\ & ((\u8|Mux4~0_combout\))) # (!\Data_DSP~7_combout\ & (\u7|Mux4~0_combout\)))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u7|Mux4~0_combout\,
	datac => \u8|Mux4~0_combout\,
	datad => \Data_DSP~7_combout\,
	combout => \Data_DSP~8_combout\);

-- Location: LCCOMB_X21_Y17_N8
\u8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux3~0_combout\ = (\u3|COUNTER_SHI\(0) & (\u3|COUNTER_SHI\(1) $ (!\u3|COUNTER_SHI\(2)))) # (!\u3|COUNTER_SHI\(0) & (!\u3|COUNTER_SHI\(1) & \u3|COUNTER_SHI\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y18_N14
\u10|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux3~0_combout\ = (\u4|COUNT_SHI\(1) & ((\u4|COUNT_SHI\(3)) # ((\u4|COUNT_SHI\(2) & \u4|COUNT_SHI\(0))))) # (!\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(2) $ (((!\u4|COUNT_SHI\(3) & \u4|COUNT_SHI\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(1),
	datad => \u4|COUNT_SHI\(0),
	combout => \u10|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\u9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux3~0_combout\ = (\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)) # ((\u4|COUNT_GE\(2) & \u4|COUNT_GE\(0))))) # (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(2) $ (((\u4|COUNT_GE\(0) & !\u4|COUNT_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\Data_DSP~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~9_combout\ = (MEMORY(0) & ((\u10|Mux3~0_combout\) # ((\Data_DSP~2_combout\)))) # (!MEMORY(0) & (((\u9|Mux3~0_combout\ & !\Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|Mux3~0_combout\,
	datab => MEMORY(0),
	datac => \u9|Mux3~0_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~9_combout\);

-- Location: LCCOMB_X22_Y16_N24
\u7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux3~0_combout\ = (\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(3)) # ((\u2|COUNTER_GE\(0) & \u2|COUNTER_GE\(2))))) # (!\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(2) $ (((\u2|COUNTER_GE\(0) & !\u2|COUNTER_GE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Data_DSP~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~10_combout\ = (\Data_DSP~9_combout\ & ((\u8|Mux3~0_combout\) # ((!\Data_DSP~2_combout\)))) # (!\Data_DSP~9_combout\ & (((\u7|Mux3~0_combout\ & \Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Mux3~0_combout\,
	datab => \Data_DSP~9_combout\,
	datac => \u7|Mux3~0_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~10_combout\);

-- Location: LCCOMB_X22_Y16_N2
\u7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux2~0_combout\ = (\u2|COUNTER_GE\(0)) # ((\u2|COUNTER_GE\(1) & ((\u2|COUNTER_GE\(3)))) # (!\u2|COUNTER_GE\(1) & (\u2|COUNTER_GE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y17_N28
\u8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux2~0_combout\ = (\u3|COUNTER_SHI\(0)) # ((!\u3|COUNTER_SHI\(1) & \u3|COUNTER_SHI\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y17_N2
\u9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux2~0_combout\ = (\u4|COUNT_GE\(0)) # ((\u4|COUNT_GE\(1) & ((\u4|COUNT_GE\(3)))) # (!\u4|COUNT_GE\(1) & (\u4|COUNT_GE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y17_N0
\u10|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux2~0_combout\ = (\u4|COUNT_SHI\(0)) # ((\u4|COUNT_SHI\(1) & (\u4|COUNT_SHI\(3))) # (!\u4|COUNT_SHI\(1) & ((\u4|COUNT_SHI\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(1),
	combout => \u10|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
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

-- Location: LCCOMB_X21_Y17_N24
\Data_DSP~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~12_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~11_combout\ & ((\u8|Mux2~0_combout\))) # (!\Data_DSP~11_combout\ & (\u7|Mux2~0_combout\)))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u7|Mux2~0_combout\,
	datac => \u8|Mux2~0_combout\,
	datad => \Data_DSP~11_combout\,
	combout => \Data_DSP~12_combout\);

-- Location: LCCOMB_X21_Y17_N22
\u8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux1~0_combout\ = (\u3|COUNTER_SHI\(0) & ((\u3|COUNTER_SHI\(1)) # (!\u3|COUNTER_SHI\(2)))) # (!\u3|COUNTER_SHI\(0) & (\u3|COUNTER_SHI\(1) & !\u3|COUNTER_SHI\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\u9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux1~0_combout\ = (\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(3)) # ((\u4|COUNT_GE\(0) & \u4|COUNT_GE\(1))))) # (!\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(1)) # ((\u4|COUNT_GE\(0) & !\u4|COUNT_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y17_N22
\u10|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux1~0_combout\ = (\u4|COUNT_SHI\(2) & ((\u4|COUNT_SHI\(3)) # ((\u4|COUNT_SHI\(0) & \u4|COUNT_SHI\(1))))) # (!\u4|COUNT_SHI\(2) & ((\u4|COUNT_SHI\(1)) # ((!\u4|COUNT_SHI\(3) & \u4|COUNT_SHI\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(1),
	combout => \u10|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\Data_DSP~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~13_combout\ = (\Data_DSP~2_combout\ & (((MEMORY(0))))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & ((\u10|Mux1~0_combout\))) # (!MEMORY(0) & (\u9|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u9|Mux1~0_combout\,
	datac => MEMORY(0),
	datad => \u10|Mux1~0_combout\,
	combout => \Data_DSP~13_combout\);

-- Location: LCCOMB_X22_Y16_N12
\u7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux1~0_combout\ = (\u2|COUNTER_GE\(0) & ((\u2|COUNTER_GE\(1)) # (\u2|COUNTER_GE\(2) $ (!\u2|COUNTER_GE\(3))))) # (!\u2|COUNTER_GE\(0) & ((\u2|COUNTER_GE\(2) & ((\u2|COUNTER_GE\(3)))) # (!\u2|COUNTER_GE\(2) & (\u2|COUNTER_GE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\Data_DSP~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~14_combout\ = (\Data_DSP~2_combout\ & ((\Data_DSP~13_combout\ & (\u8|Mux1~0_combout\)) # (!\Data_DSP~13_combout\ & ((\u7|Mux1~0_combout\))))) # (!\Data_DSP~2_combout\ & (((\Data_DSP~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u8|Mux1~0_combout\,
	datac => \Data_DSP~13_combout\,
	datad => \u7|Mux1~0_combout\,
	combout => \Data_DSP~14_combout\);

-- Location: LCCOMB_X22_Y16_N30
\u7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux0~0_combout\ = (\u2|COUNTER_GE\(2) & (!\u2|COUNTER_GE\(3) & ((!\u2|COUNTER_GE\(1)) # (!\u2|COUNTER_GE\(0))))) # (!\u2|COUNTER_GE\(2) & ((\u2|COUNTER_GE\(1) $ (\u2|COUNTER_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|COUNTER_GE\(0),
	datab => \u2|COUNTER_GE\(2),
	datac => \u2|COUNTER_GE\(1),
	datad => \u2|COUNTER_GE\(3),
	combout => \u7|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\u8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Mux0~0_combout\ = (\u3|COUNTER_SHI\(1) & ((!\u3|COUNTER_SHI\(2)) # (!\u3|COUNTER_SHI\(0)))) # (!\u3|COUNTER_SHI\(1) & ((\u3|COUNTER_SHI\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|COUNTER_SHI\(0),
	datac => \u3|COUNTER_SHI\(1),
	datad => \u3|COUNTER_SHI\(2),
	combout => \u8|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\u9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|Mux0~0_combout\ = (\u4|COUNT_GE\(2) & (!\u4|COUNT_GE\(3) & ((!\u4|COUNT_GE\(1)) # (!\u4|COUNT_GE\(0))))) # (!\u4|COUNT_GE\(2) & ((\u4|COUNT_GE\(1) $ (\u4|COUNT_GE\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_GE\(2),
	datab => \u4|COUNT_GE\(0),
	datac => \u4|COUNT_GE\(1),
	datad => \u4|COUNT_GE\(3),
	combout => \u9|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N18
\u10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|Mux0~0_combout\ = (\u4|COUNT_SHI\(2) & (!\u4|COUNT_SHI\(3) & ((!\u4|COUNT_SHI\(1)) # (!\u4|COUNT_SHI\(0))))) # (!\u4|COUNT_SHI\(2) & (\u4|COUNT_SHI\(3) $ (((\u4|COUNT_SHI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|COUNT_SHI\(3),
	datab => \u4|COUNT_SHI\(2),
	datac => \u4|COUNT_SHI\(0),
	datad => \u4|COUNT_SHI\(1),
	combout => \u10|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Data_DSP~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~15_combout\ = (\Data_DSP~2_combout\ & (((MEMORY(0))))) # (!\Data_DSP~2_combout\ & ((MEMORY(0) & ((!\u10|Mux0~0_combout\))) # (!MEMORY(0) & (!\u9|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~2_combout\,
	datab => \u9|Mux0~0_combout\,
	datac => MEMORY(0),
	datad => \u10|Mux0~0_combout\,
	combout => \Data_DSP~15_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Data_DSP~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Data_DSP~16_combout\ = (\Data_DSP~15_combout\ & (((!\Data_DSP~2_combout\) # (!\u8|Mux0~0_combout\)))) # (!\Data_DSP~15_combout\ & (!\u7|Mux0~0_combout\ & ((\Data_DSP~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Mux0~0_combout\,
	datab => \u8|Mux0~0_combout\,
	datac => \Data_DSP~15_combout\,
	datad => \Data_DSP~2_combout\,
	combout => \Data_DSP~16_combout\);

-- Location: FF_X18_Y15_N29
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

-- Location: LCCOMB_X18_Y15_N20
\E_pin1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1~2_combout\ = (\u1|clk_us~q\ & ((\Data_DSP~1_combout\) # (!MEMORY(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_DSP~1_combout\,
	datac => MEMORY(0),
	datad => \u1|clk_us~q\,
	combout => \E_pin1~2_combout\);

-- Location: LCCOMB_X18_Y15_N26
\E_pin1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1~4_combout\ = (MEMORY(1) & (((!RECODE(1) & RECODE(0))) # (!\Data_DSP~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => MEMORY(1),
	datac => RECODE(1),
	datad => RECODE(0),
	combout => \E_pin1~4_combout\);

-- Location: LCCOMB_X18_Y15_N28
\E_pin1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1~3_combout\ = (\E_pin1~4_combout\) # ((MEMORY(0)) # (\E_pin3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_pin1~4_combout\,
	datab => MEMORY(0),
	datad => \E_pin3~0_combout\,
	combout => \E_pin1~3_combout\);

-- Location: LCCOMB_X18_Y15_N30
\E_pin1$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin1$latch~combout\ = (\E_pin1~3_combout\ & ((\E_pin1$latch~combout\))) # (!\E_pin1~3_combout\ & (\E_pin1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_pin1~2_combout\,
	datac => \E_pin1~3_combout\,
	datad => \E_pin1$latch~combout\,
	combout => \E_pin1$latch~combout\);

-- Location: LCCOMB_X18_Y15_N4
\E_pin2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin2~0_combout\ = (\u1|clk_us~q\ & ((\Data_DSP~1_combout\) # (MEMORY(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => MEMORY(0),
	datad => \u1|clk_us~q\,
	combout => \E_pin2~0_combout\);

-- Location: LCCOMB_X19_Y15_N4
\E_pin2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin2~1_combout\ = (\Data_DSP~2_combout\ & MEMORY(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_DSP~2_combout\,
	datac => MEMORY(0),
	combout => \E_pin2~1_combout\);

-- Location: LCCOMB_X18_Y15_N22
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

-- Location: LCCOMB_X18_Y15_N14
\E_pin3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3~1_combout\ = (\u1|clk_us~q\ & ((\E_pin3~0_combout\) # (!MEMORY(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|clk_us~q\,
	datac => \E_pin3~0_combout\,
	datad => MEMORY(0),
	combout => \E_pin3~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\E_pin3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3~2_combout\ = (!MEMORY(0) & ((\E_pin3~0_combout\) # ((!\Data_DSP~1_combout\ & MEMORY(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => MEMORY(0),
	datac => MEMORY(1),
	datad => \E_pin3~0_combout\,
	combout => \E_pin3~2_combout\);

-- Location: LCCOMB_X18_Y15_N10
\E_pin3$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin3$latch~combout\ = (\E_pin3~2_combout\ & (\E_pin3~1_combout\)) # (!\E_pin3~2_combout\ & ((\E_pin3$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_pin3~1_combout\,
	datac => \E_pin3$latch~combout\,
	datad => \E_pin3~2_combout\,
	combout => \E_pin3$latch~combout\);

-- Location: LCCOMB_X18_Y15_N8
\E_pin4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin4~0_combout\ = (\u1|clk_us~q\ & ((MEMORY(0)) # (\E_pin3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MEMORY(0),
	datac => \E_pin3~0_combout\,
	datad => \u1|clk_us~q\,
	combout => \E_pin4~0_combout\);

-- Location: LCCOMB_X18_Y15_N24
\E_pin4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin4~1_combout\ = (MEMORY(0) & ((\E_pin3~0_combout\) # ((!\Data_DSP~1_combout\ & MEMORY(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_DSP~1_combout\,
	datab => \E_pin3~0_combout\,
	datac => MEMORY(1),
	datad => MEMORY(0),
	combout => \E_pin4~1_combout\);

-- Location: LCCOMB_X18_Y15_N18
\E_pin4$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_pin4$latch~combout\ = (\E_pin4~1_combout\ & ((\E_pin4~0_combout\))) # (!\E_pin4~1_combout\ & (\E_pin4$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_pin4$latch~combout\,
	datab => \E_pin4~0_combout\,
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


