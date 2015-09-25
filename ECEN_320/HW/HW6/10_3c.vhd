-- Problem 10.3
library ieee ;
use ieee.std_logic_1164.all;
entity edge_detect is
	port (
		clk, reset, strobe: in std_logic;
		p1, p2 : out std_logic
	);
end edge_detect; 

architecture arch of edge_detect is
	type state_type is (zero, edge1, one, edge2);
	signal state_reg, state_next : state_type;
begin
	-- state register
	process (clk , reset)
	begin
		if (reset='1') then
			state_reg <= zero;
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
		end if ;
	end process;
	-- next_state logic
	process(state_reg, strobe)
	begin
		case state_reg is 
			when zero =>
				if strobe='1' then 
					state_next <= edge1;
				else
					state_next <= zero;
				end if;
			when edge1 =>
				if strobe='1' then 
					state_next <= one;
				else
					state_next <= zero;
				end if;
			when one =>
				if strobe='1' then 
					state_next <= edge1;
				else
					state_next <= zero;
				end if;
			when edge2 =>
				state_next <= zero;
		end case;
	end process;
	-- Moore output logic
	process(state_reg)
	begin
		p1 <= '0'; -- default value
		p2 <= '0'; -- default value
		case state_reg is
			when edge1 =>
				p1 <= '1';
			when edge2 =>
				p2 <= '1';
		end case;
	end process;
end arch;