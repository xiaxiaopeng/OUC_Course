library ieee;
use ieee.std_logic_1164.all;
entity test4 is
port(D3,D2,D1,D0,A1,A2,s1,s2:IN STD_LOGIC;
		Q1,Q2:OUT STD_LOGIC);
end entity test4;
architecture one of test4 is
begin 
process(A1,A2,s1,s2)
VARIABLE temporary:std_logic_vector(1 downto 0);
	begin 
   temporary := A2&A1;
if s1='0' then
case temporary is
 when "00" => Q1 <= D0;
 when "10" => Q1 <= D1;
 when "01" => Q1 <= D2;
 when "11" => Q1 <= D3;
 when others=> Q1<='0';
 end case;
 else
  Q1<='0';
 end if;
if s2='0' then
 case temporary is
 when "00" => Q2 <= D0;
 when "10" => Q2 <= D1;
 when "01" => Q2 <= D2;
 when "11" => Q2 <= D3;
 when others=> Q2<='0';
 end case;
 else
 Q2<='0';
end if;
end process;
end one;