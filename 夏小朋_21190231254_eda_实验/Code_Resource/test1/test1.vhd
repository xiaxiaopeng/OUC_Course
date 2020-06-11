LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY test1 IS
PORT
(a,b,c,d:in std_logic;
e:out std_logic);
end test1;
architecture adder4bit of test1 is
begin 
	 e<=not(a and b and c and d);
end adder4bit;
