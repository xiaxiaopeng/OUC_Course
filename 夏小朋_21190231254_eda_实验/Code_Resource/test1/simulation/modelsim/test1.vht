
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test1_vhd_tst IS
END test1_vhd_tst;
ARCHITECTURE test1_arch OF test1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL e : STD_LOGIC;
COMPONENT test1
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	e : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	e => e
	);

a_en:process
begin
a<='1';
wait for 15ns;
a<='0';
wait for 15ns;
end process;

b_en:process
begin
b<='0';
wait for 10ns;
b<='1';
wait for 10ns;
end process;

c_en:process
begin
c<='1';
wait for 20ns;
c<='0';
wait for 10ns;
end process;

d_en:process
begin
d<='1';
wait for 20ns;
d<='0';
wait for 20ns;
end process;
                                          
END test1_arch;
