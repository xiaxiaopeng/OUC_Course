-----------------------------------------------------
  -- 分钟BCD60进制计数
-----------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY COUNTER60  IS
PORT(clk, reset : IN STD_LOGIC;
		         DATOUT,DATOUT1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			CO : OUT STD_LOGIC);
END COUNTER60;

ARCHITECTURE BHV OF COUNTER60 IS
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