-- Listing 2.1

library ieee;
use ieee.std_logic_1164.all;

-- entity
entity even_detector is
	port(
		a: in std_logic_vector(2 downto 0);
		even : out std_logic
	);
	end even_detector;
	
	
	-- architecture
	architecture sop_arc of even)detector is
		signal p1, p2, p3, p4, : std_logic;
	begin
		even <= (p1 or p2) or (p3 or p4) after 20 ns;
		p1 <= (not a(2)) and (not a(1)) and (not a(0)) after 15 ns;
		p2 <= (not a(2)) and a(1) and a(0) after 12 ns;
		p3 <= a(2) and (not a(1)) and a(0) after 12 ns;
		p4 <= a(2) and a(1) and (not a(0)) after 12 ns;
	end sop_arch;