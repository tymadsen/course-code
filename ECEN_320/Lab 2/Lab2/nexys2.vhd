-- Listing 2.1

library ieee;
use ieee.std_logic_1164.all;

-- entity
entity nexys2 is
	port(
		sw: in std_logic_vector(7 downto 0);
		btn: in std_logic_vector(3 downto 0);
		led : out std_logic_vector(7 downto 0)
	);
end nexys2;


-- architecture
architecture arch of nexys2 is
begin
	led <= sw(0)&sw(7)&sw(6)&sw(5)&sw(4)&sw(3)&sw(2)&sw(1) when btn(0) = '1' 
		else not sw when btn(1) = '1'
		else sw(0)&sw(1)&sw(2)&sw(3)&sw(4)&sw(5)&sw(6)&sw(7) when btn(2) = '1' 
		else sw(3)&sw(2)&sw(1)&sw(0)&sw(7)&sw(6)&sw(5)&sw(4) when btn(3) = '1'
		else sw;
	
end arch;