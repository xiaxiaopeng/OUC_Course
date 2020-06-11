
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test3_vhd_tst IS
END test3_vhd_tst;
ARCHITECTURE test3_arch OF test3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL dout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT test3
	PORT (
	clk : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	dout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cout => cout,
	dout => dout,
	rst => rst
	);
clk_en:process
begin
clk<='0';
wait for 10ns;
clk<='1';
wait for 10ns;
end process clk_en;
rst_en:process
begin
 rst<='1';
wait for 300ns;
rst<='0';
wait for   10ns;
end process rst_en;
end   test3_arch;              
