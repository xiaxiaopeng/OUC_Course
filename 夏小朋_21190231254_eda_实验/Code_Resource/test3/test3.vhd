LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY test3 IS
	PORT(clk,rst:IN  STD_LOGIC;
		 dout      :OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 cout      :OUT STD_LOGIC);
END ENTITY test3;
ARCHITECTURE one OF test3 IS
BEGIN
	PROCESS(clk,rst)
		VARIABLE q: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
		IF rst='0' THEN
			q:=(OTHERS=>'0');
			ELSIF clk'event AND clk='1'THEN
					IF q<9 THEN
						q:=q+1;
						cout<='0';
					ELSE
						q:=(OTHERS=>'0');
						cout<= '1';
				END IF;
			END IF;
		dout<=q;
	END PROCESS;
END ARCHITECTURE one;
