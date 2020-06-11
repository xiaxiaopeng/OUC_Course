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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/17/2019 10:14:11"
                                                            
-- Vhdl Test Bench template for design  :  test5
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test5_vhd_tst IS
END test5_vhd_tst;
ARCHITECTURE test5_arch OF test5_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_1Hz : STD_LOGIC;
SIGNAL CLK_1KHz : STD_LOGIC;
SIGNAL CLK_50MHz : STD_LOGIC;
COMPONENT test5
	PORT (
	CLK_1Hz : BUFFER STD_LOGIC;
	CLK_1KHz : BUFFER STD_LOGIC;
	CLK_50MHz : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test5
	PORT MAP (
-- list connections between master ports and signals
	CLK_1Hz => CLK_1Hz,
	CLK_1KHz => CLK_1KHz,
	CLK_50MHz => CLK_50MHz
	);
CLK_50MHz_en:process
begin
CLK_50MHz<='0';
wait for 10ns;
CLK_50MHz<='1';
wait for 10ns;
end process CLK_50MHz_en;
                              
END test5_arch;
