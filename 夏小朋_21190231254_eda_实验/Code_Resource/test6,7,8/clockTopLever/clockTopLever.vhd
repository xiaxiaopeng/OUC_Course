---------------------
---数字时钟顶层设计---
---------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY clockTopLever IS
PORT (clk_50MHZ,SET_MODE,ADD:IN STD_LOGIC;
      C_RESET:STD_LOGIC;
      Data_DSP:OUT STD_LOGIC_VECTOR(7 downto 0);
		E_pin1,E_pin2,E_pin3,E_pin4:out STD_LOGIC);
END clockTopLever;
ARCHITECTURE BHV OF clockTopLever IS
component COUNTER_10
PORT 
          (clk,reset:IN STD_LOGIC;
           DATOUT:OUT STD_LOGIC_VECTOR(3 downto 0);
			  CO:OUT STD_LOGIC);
END component;
component COUNTER6
PORT 
          (clk,reset:IN STD_LOGIC;
           DATOUT:OUT STD_LOGIC_VECTOR(3 downto 0);
			  CO:OUT STD_LOGIC);
END component;
component COUNTER60
PORT 
          (clk,reset:IN STD_LOGIC;
           DATOUT,DATOUT1:OUT STD_LOGIC_VECTOR(3 downto 0);
			  CO:OUT STD_LOGIC);
END component;
component DIV_FREQUENCE
PORT(
      clk:     IN STD_LOGIC;
		SWITCH_SET:  IN STD_LOGIC_VECTOR(1 downto 0);
      clk_ms:  OUT STD_LOGIC;
		clk_10ms: OUT STD_LOGIC;
		clk_second :   OUT STD_LOGIC;
		clk_us:   OUT STD_LOGIC);
END component;
component DECODER
PORT (
      DATA_IN:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	   DATA_OUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END component;
component  KEY_DELAY
PORT (clk,KEY_IN:in STD_LOGIC;
      KEY_OUT:out STD_LOGIC);
END component;
SIGNAL clock_s,clock_sec,clock_temp,clock_mid,clock_mid_1:STD_LOGIC:='0';
SIGNAL DATOUT1,DATOUT2,DATOUT3,DATOUT4:STD_LOGIC_VECTOR(3 downto 0):="0000";
SIGNAL SECOND_LOW,SECOND_HIGH,MIN_LOW,MIN_HIGH:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk,clk_ms,clk_10ms,clk_us:STD_LOGIC;
SIGNAL SEL,SWITCH_SET1:STD_LOGIC_VECTOR(1 downto 0):="00";
SIGNAL NO_JITTER,SET_ADD:STD_LOGIC;
SIGNAL SEL_1:INTEGER RANGE 0 TO 199 :=0;
SIGNAL SEL_2:STD_LOGIC;
SIGNAL counter:INTEGER RANGE 0 TO 1000000;
BEGIN
u1:DIV_FREQUENCE port map(clk=>clk_50MHZ,clk_second =>clock_s,clk_ms=>clk_ms,clk_10ms=>clk_10ms,SWITCH_SET=>SWITCH_SET1,clk_us=>clk_us);
u2:COUNTER_10 port map(clk=>clock_sec,reset=>C_RESET,DATOUT=>DATOUT1,CO=>clock_temp);
u3:COUNTER6 port map(clk=>clock_temp,DATOUT=>DATOUT2,reset=>C_RESET,CO=>clock_mid);
u4:COUNTER60 port map(clk=>clock_mid_1,reset=>C_RESET,DATOUT=>DATOUT3,DATOUT1=>DATOUT4);
u5:KEY_DELAY port map(clk_ms,SET_MODE,SET_ADD);
u6:KEY_DELAY port map(clk_ms,ADD,NO_JITTER);
u7:DECODER port map(DATOUT1,SECOND_LOW);
u8:DECODER port map(DATOUT2,SECOND_HIGH);
u9:DECODER port map(DATOUT3,MIN_LOW);
u10:DECODER port map(DATOUT4,MIN_HIGH);

PROCESS(SET_ADD,SWITCH_SET1)
VARIABLE Q2: Std_Logic_Vector(1 downto 0);
BEGIN
IF(SET_ADD'event and SET_ADD='0') THEN
IF( Q2="10")THEN
Q2:="00";
ELSE
Q2:=Q2+1;
END IF;
END IF;
SWITCH_SET1<=Q2;
END PROCESS;
WITH SWITCH_SET1 SELECT
clock_sec<= clock_s     WHEN "00",
            NO_JITTER   WHEN "01",
			   '0'         WHEN OTHERS;			  
WITH SWITCH_SET1 SELECT
clock_mid_1<= clock_mid     WHEN "00",
           NO_JITTER        WHEN "10",
			  '0'              WHEN OTHERS;
PROCESS (clk_ms,SEL)
VARIABLE MEMORY: STD_LOGIC_VECTOR(1 downto 0);
VARIABLE COUNTER_MID:INTEGER RANGE 0 TO 199 :=0;
VARIABLE jin_wei:STD_LOGIC;
BEGIN 
IF (clk_ms'event AND clk_ms='1') THEN
IF (COUNTER_MID=199) THEN
COUNTER_MID:=0;
ELSE
COUNTER_MID:=COUNTER_MID+1;
END IF;
IF (jin_wei='0') THEN
jin_wei:='1';
ELSE
jin_wei:='0';
END IF;
IF(MEMORY="11")THEN
MEMORY:="00";
ELSE
MEMORY:=MEMORY+1;
END IF;
END IF;
SEL<=MEMORY;
SEL_1<=COUNTER_MID;
SEL_2<=jin_wei;
END PROCESS;
PROCESS(SEL,SECOND_LOW,SECOND_HIGH,MIN_LOW,MIN_HIGH,clk_ms,clk_us)
BEGIN
IF SWITCH_SET1="01" then
IF(SEL_1<100) THEN
CASE SEL IS
WHEN "00"=>Data_DSP<=SECOND_LOW;E_pin1<=clk_us;
WHEN "01"=>Data_DSP<=SECOND_HIGH;E_pin2<=clk_us;
WHEN "10"=>Data_DSP<=MIN_LOW;E_pin3<=clk_us;
WHEN "11"=>Data_DSP<=MIN_HIGH;E_pin4<=clk_us;
END CASE;
ELSE 
CASE SEL IS
WHEN "00"|"10"=>Data_DSP<=MIN_LOW;E_pin3<=clk_us;
WHEN "01"|"11"=>Data_DSP<=MIN_HIGH;E_pin4<=clk_us;
END CASE;
END IF;
ELSIF(SWITCH_SET1="10") THEN
IF(SEL_1<100) THEN
CASE SEL IS
WHEN "00"=>Data_DSP<=SECOND_LOW;E_pin1<=clk_us;
WHEN "01"=>Data_DSP<=SECOND_HIGH;E_pin2<=clk_us;
WHEN "10"=>Data_DSP<=MIN_LOW;E_pin3<=clk_us;
WHEN "11"=>Data_DSP<=MIN_HIGH;E_pin4<=clk_us;
END CASE;
ELSE 
CASE SEL IS
WHEN "00"|"10"=>Data_DSP<=SECOND_LOW;E_pin1<=clk_us;
WHEN "01"|"11"=>Data_DSP<=SECOND_HIGH;E_pin2<=clk_us;
END CASE;
END IF;
ELSE 
CASE SEL IS
WHEN "00"=>Data_DSP<=SECOND_LOW;E_pin1<=clk_us;
WHEN "01"=>Data_DSP<=SECOND_HIGH;E_pin2<=clk_us;
WHEN "10"=>Data_DSP<=MIN_LOW;E_pin3<=clk_us;
WHEN "11"=>Data_DSP<=MIN_HIGH;E_pin4<=clk_us;
END CASE;
END IF;
END PROCESS;
END BHV;