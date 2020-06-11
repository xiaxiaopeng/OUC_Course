---按键消抖模块---
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY KEY_DELAY IS
PORT (clk,KEY_IN:in STD_LOGIC;
      KEY_OUT:out STD_LOGIC);
END KEY_DELAY;
ARCHITECTURE BHV OF KEY_DELAY IS
BEGIN
PROCESS(CLK, KEY_IN) 
VARIABLE COUNT : INTEGER RANGE 0 TO 10;
BEGIN
	IF CLK'EVENT AND CLK = '1' THEN
		IF KEY_IN = '0' THEN
			IF COUNT < 10	 THEN COUNT := COUNT + 1;
			ELSE COUNT := COUNT;  
			END IF;
			IF COUNT = 9	THEN KEY_OUT <= '1';	
			ELSE KEY_OUT <= '0';	
			END IF;
		ELSE COUNT := 0;	
		END IF;
	END IF;
END PROCESS;
END BHV;