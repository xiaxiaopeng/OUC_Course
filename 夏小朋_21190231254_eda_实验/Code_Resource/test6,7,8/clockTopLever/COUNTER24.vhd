----二十四进制---
--LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--ENTITY COUNTER24 is
--PORT 
--          (clk,reset:IN STD_LOGIC;
--           DATOUT,DATOUT1:OUT STD_LOGIC_VECTOR(3 downto 0);---个位和十位
--			  CO:OUT STD_LOGIC);
--END COUNTER24;
--ARCHITECTURE BHV OF COUNTER24 IS
--SIGNAL clk_1,reset_1:STD_LOGIC;
--SIGNAL DATOUT_ALL:STD_LOGIC_VECTOR(7 downto 0);
--SIGNAL DATOUT_1,DATOUT_2:STD_LOGIC_VECTOR (3 downto 0);
--BEGIN 
--         PROCESS(clk)
--                VARIABLE COUNTER_GE: STD_LOGIC_VECTOR(3 downto 0);
--					 VARIABLE jin_wei: STD_LOGIC;
--         BEGIN
--			             IF reset='0'  THEN COUNTER_GE:="0000";ELSE
--			             IF(reset_1='1') THEN COUNTER_GE:="0000"; ELSE
--			                 IF (clk'event AND clk='1') THEN
--                          IF COUNTER_GE<"1001" THEN COUNTER_GE:=COUNTER_GE+1;jin_wei:='0';
--                          ELSIF COUNTER_GE="1001" THEN jin_wei:='1';COUNTER_GE:="0000";
--								  ELSE COUNTER_GE:="0000";jin_wei:='0';
--                          END IF;
--					           END IF;
--							 END IF;
--					       END IF;
--                 DATOUT_1<=COUNTER_GE;
--					  clk_1<=jin_wei;
--         END PROCESS;
--			PROCESS(clk_1)
--			       VARIABLE COUNTER_SHI: STD_LOGIC_VECTOR(3 downto 0);
--         BEGIN
--			             IF reset='0'  THEN COUNTER_SHI:="0000";ELSE
--			             IF(reset_1='1') THEN COUNTER_SHI:="0000"; ELSE
--			                 IF (clk_1'event AND clk_1='1') THEN
--                          IF COUNTER_SHI<"0010" THEN COUNTER_SHI:=COUNTER_SHI+1;
--                          ELSIF COUNTER_SHI="0010" THEN COUNTER_SHI:="0000";
--								  ELSE COUNTER_SHI:="0000";
--                          END IF;
--                 END IF;
--					  END IF;
--					  END IF;
--                 DATOUT_2<=COUNTER_SHI;
--			END PROCESS;
--			DATOUT_ALL<=DATOUT_1& DATOUT_2;
--			WITH DATOUT_ALL SELECT
--			reset_1<='1' WHEN "01000010",
--			       '0' WHEN OTHERS;
--			DATOUT<=DATOUT_1;
--			DATOUT1<=DATOUT_2;
--END BHV;
-----------------------------------------------------
  -- 分钟BCD60进制计数
-----------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY COUNTER24  IS
PORT(clk, reset : IN STD_LOGIC;
		         DATOUT,DATOUT1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			CO : OUT STD_LOGIC);
END COUNTER24;

ARCHITECTURE BHV OF COUNTER24 IS
SIGNAL COUNT_SHI, COUNT_GE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL COUNT_EN : STD_LOGIC;
BEGIN 
   CO <= COUNT_EN;
	PROCESS(clk, reset)  	BEGIN   
		IF reset = '0'		THEN COUNT_SHI <= "0000"; COUNT_GE <= "0000"; -- 有复位信号，则清除计数
		ELSIF clk'EVENT AND clk = '1'   THEN	 
			IF COUNT_SHI = "0101" AND COUNT_GE  = "1001"   THEN 
				COUNT_SHI <= "0000"; COUNT_GE <= "0000";  COUNT_EN <= '1';  -- 计数进位（信号量不是立即赋值，需等下一个时钟信号到来。）
			ELSIF COUNT_GE < "1001" 	THEN COUNT_GE <= COUNT_GE + 1; COUNT_EN <= '0'; 
			ELSE COUNT_GE <= "0000";  -- 计数溢出则清零，并产生进位
				IF COUNT_SHI < "1010" 	THEN COUNT_SHI <= COUNT_SHI + 1;  
				ELSE COUNT_SHI <= "0000";  
				END IF;
			END IF;
		END IF;
	END PROCESS;
	DATOUT <= COUNT_GE;  -- 个位数据输出
	DATOUT1 <= COUNT_SHI ;  -- 十位数据输出
END BHV;