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
-- Generated on "12/17/2019 09:03:47"
                                                            
-- Vhdl Test Bench template for design  :  test2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test2_vhd_tst IS
END test2_vhd_tst;
ARCHITECTURE test2_arch OF test2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bi : STD_LOGIC;
SIGNAL ctr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL le : STD_LOGIC;
SIGNAL lt : STD_LOGIC;
SIGNAL y : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT test2
	PORT (
	bi : IN STD_LOGIC;
	ctr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	le : IN STD_LOGIC;
	lt : IN STD_LOGIC;
	y : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test2
	PORT MAP (
-- list connections between master ports and signals
	bi => bi,
	ctr => ctr,
	le => le,
	lt => lt,
	y => y
	);
lt_en:process
begin
lt<='0';
wait for 20ns;
lt<='1';
wait for 40ns;
end process lt_en;

bi_en:process
begin
bi<='0';
wait for 40ns;
bi<='1';
wait  for 40ns;
end process bi_en;

le_en:process
begin
le<='0';
wait for 40ns;
le<='1';
wait for 20ns;
end process le_en;

ctr_en:process
begin
 ctr<="0000";
wait for 10ns;
 ctr<="0001";
wait for 10ns;
 ctr<="0010";
wait for 10ns;
 ctr<="0011";
wait for 10ns;
 ctr<="0100";
wait for 10ns;
 ctr<="0101";
wait for 10ns;
 ctr<="0110";
wait for 10ns;
 ctr<="0111";
wait for 10ns;
 ctr<="1000";
wait for 10ns;
 ctr<="1001";
wait for 10ns;
 ctr<="1010";
wait for 10ns;
 ctr<="1011";
wait for 10ns;
ctr<="1100";
wait for 10ns;
 ctr<="1101";
wait for 10ns;
ctr<="1110";
wait for 10ns;
 ctr<="1111";
wait for 10ns;
end  process ctr_en;                                  
END test2_arch;
