library ieee;
use ieee.std_logic_1164.all;
entity test2 is
port(lt,bi,le:in std_logic;
	ctr: in std_logic_vector(3 downto 0);
	y:out std_logic_vector(6 downto 0));
end test2;
architecture one of test2 is
begin
	process(lt,bi,le,ctr)
	   variable s: std_logic_vector(3 downto 0);
	begin
	   s:=ctr(3)&ctr(2)&ctr(1)&ctr(0);
	   if lt='0'then
		  y<="1111111";                      
	   elsif bi='0' then
		  y<="0000000";
		elsif le='0' then
		  case s is
			when"0000"=>y<="1111110";   
			when"0001"=>y<="0110000";   
			when"0010"=>y<="1101101";
			when"0011"=>y<="1111001";
			when"0100"=>y<="0110011";
			when"0101"=>y<="1011011";
			when"0110"=>y<="0011111";   
			when"0111"=>y<="1110000";  
			when"1000"=>y<="1111111";   
			when"1001"=>y<="1110011";     
			when others=>y<="0000000";
		  end case;	
		  else
		  null;
	  end if;
	end process;
 end one;
