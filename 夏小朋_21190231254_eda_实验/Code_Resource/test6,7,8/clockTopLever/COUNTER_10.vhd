---十进制---
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY COUNTER_10 is
PORT 
          (clk,reset:IN STD_LOGIC;
           DATOUT:OUT STD_LOGIC_VECTOR(3 downto 0);
			  CO:OUT STD_LOGIC);
END COUNTER_10;
ARCHITECTURE BHV OF COUNTER_10 IS
BEGIN 
         PROCESS(clk,reset)
                VARIABLE COUNTER_GE: STD_LOGIC_VECTOR(3 downto 0);
					 VARIABLE jin_wei: STD_LOGIC;
         BEGIN
			        IF reset='0' THEN COUNTER_GE:="0000";ELSE
			                 IF (clk'event AND clk='1') THEN
                          IF COUNTER_GE<"1001" THEN COUNTER_GE:=COUNTER_GE+1;jin_wei:='0';
                          ELSIF COUNTER_GE="1001" THEN jin_wei:='1';COUNTER_GE:="0000";
								  ELSE COUNTER_GE:="0000";jin_wei:='0';
                          END IF;
                          END IF;
					  END IF;
                 DATOUT<=COUNTER_GE;
					  CO<=jin_wei;
         END PROCESS;
END BHV;