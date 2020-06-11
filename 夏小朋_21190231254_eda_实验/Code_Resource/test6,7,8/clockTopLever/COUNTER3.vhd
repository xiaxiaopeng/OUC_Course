---三进制模块---
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY COUNTER3 is
PORT 
          (clk:IN STD_LOGIC;
           DATOUT:OUT STD_LOGIC_VECTOR(3 downto 0);
			  CO:OUT STD_LOGIC);
END COUNTER3;
ARCHITECTURE BHV OF COUNTER3 IS
BEGIN 
         PROCESS(clk)
                VARIABLE COUNTER_shi: STD_LOGIC_VECTOR(3 downto 0);
					 VARIABLE jin_wei: STD_LOGIC;
         BEGIN
			                 IF (clk'event AND clk='1') THEN
                          IF COUNTER_shi<"0010" THEN COUNTER_shi:=COUNTER_shi+1;jin_wei:='0';
                          ELSIF COUNTER_shi="0010" THEN jin_wei:='1';COUNTER_shi:="0000";
								  ELSE COUNTER_shi:="0000";jin_wei:='0';
                          END IF;
                 END IF;
                 DATOUT<=COUNTER_shi;
					  CO<=jin_wei;
         END PROCESS;
END BHV;