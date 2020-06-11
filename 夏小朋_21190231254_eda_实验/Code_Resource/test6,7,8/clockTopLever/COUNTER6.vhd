---六进制---
LIBRARY IEEE;
USE Ieee.STD_LOGIC_1164.all;
USE ieee.STD_LOGIC_unsigned.all;
ENTITY COUNTER6 is
PORT 
          (clk,reset:IN STD_LOGIC;
           DATOUT:OUT STD_LOGIC_VECTOR(3 downto 0);
			  CO:OUT STD_LOGIC);
END COUNTER6;
ARCHITECTURE BHV OF COUNTER6 IS
BEGIN 
         PROCESS(clk)
                VARIABLE COUNTER_SHI: STD_LOGIC_VECTOR(3 downto 0);
					 VARIABLE jin_wei: STD_LOGIC;
         BEGIN
			                 IF reset='0'  THEN COUNTER_SHI:="0000";ELSE
			                 IF (clk'event AND clk='1') THEN
                          IF COUNTER_SHI<"0101" THEN COUNTER_SHI:=COUNTER_SHI+1;jin_wei:='0';
                          ELSIF COUNTER_SHI="0101" THEN jin_wei:='1';COUNTER_SHI:="0000";
								  ELSE COUNTER_SHI:="0000";jin_wei:='0';
                          END IF;
                 END IF;
					  END IF;
                 DATOUT<=COUNTER_SHI;
					  CO<=jin_wei;
         END PROCESS;
END BHV;