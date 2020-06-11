---分频模块---
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY DIV_FREQUENCE IS
PORT(
      clk:     IN STD_LOGIC;
		SWITCH_SET:  IN STD_LOGIC_VECTOR(1 downto 0);
      clk_ms:  OUT STD_LOGIC;
		clk_10ms: OUT STD_LOGIC;
		clk_second :   OUT STD_LOGIC;
		clk_us:   OUT STD_LOGIC);
END DIV_FREQUENCE;
ARCHITECTURE BHV OF DIV_FREQUENCE IS
signal q_1ms:integer range 0 to 1000; 
signal q_1s:integer  range 0 to 100; 
signal q_10ms:integer range 0 to 10;
signal q_1us:integer range 0 to 50;
signal sig_1ms:STD_LOGIC;
signal sig_1s: STD_LOGIC;
signal sig_10ms:STD_LOGIC;
signal sig_1us:STD_LOGIC;
BEGIN
output_clock:process(clk,SWITCH_SET)
BEGIN
       if clk'event and clk='1'then
		 clk_ms<=sig_1ms;
		 clk_us<=sig_1us;
       clk_second <=sig_1s;
		 clk_10ms<=sig_10ms;
		 end if;
end process;
us_second:process(clk)
begin
       if clk'event and clk='1'then
		      if q_1us<49 then 
				   q_1us<=q_1us+1;
					sig_1us<='0';
				else 
				   q_1us<=0;
					sig_1us<='1';
		      end if;
		 end if;
end process;
m_second:process(sig_1us)
begin
       if sig_1us'event and sig_1us='1'then
		      if q_1ms<999 then 
				   q_1ms<=q_1ms+1;
					sig_1ms<='0';
				else 
				   q_1ms<=0;
					sig_1ms<='1';
		      end if;
		 end if;
end process;
ms_second:process(sig_1ms)
begin
       if sig_1ms'event and sig_1ms='1'then
		      if q_10ms<9 then 
				   q_10ms<=q_10ms+1;
					sig_10ms<='0';
				else 
				   q_10ms<=0;
					sig_10ms<='1';
		      end if;
		 end if;
end process;
s_second:process(sig_10ms)
begin
       if sig_10ms'event and sig_10ms='1'then
		      if q_1s<99 then 
				   q_1s<=q_1s+1;
					sig_1s<='0';
				else 
				   q_1s<=0;
					sig_1s<='1';
		      end if;
		 end if;
end process;
end BHV;