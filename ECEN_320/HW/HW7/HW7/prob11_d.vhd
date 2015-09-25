---------------------------------------------
--Problem 11.5d
---------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divider is
	port(
		clk, rst, load_vals : in std_logic;
		y, d, q, r : in std_logic_vector(7 downto 0)
		);
end divider;

architecture arch of divider is

type subtract_state is (idle, load, subtract);
signal state, next_state : subtract_state;
signal q_reg, q_next, r_reg, r_next : unsigned(7 downto 0);
begin
--Clocked process for next state
process(clk,rst)
begin
	if(rst='1') then
		state <= (others=>'0');
	elsif(clk'event and clk='1') then
		state <= state_next;
	end if;
end process;

process(state, load_val, r_reg, d)
begin
	case state is
		when idle =>
			if(load_vals='1') then
				next_state <= load;
			else
				next_state <= idle;
			end if;
		when load =>
			next_state <= subtract;
		when subtract => 
			if(r_reg >= unsigned(d)) then
				next_state <= subtract;
			else
				next_state <= idle;
			end if;
	end case;
end process;

process(clk,rst)
begin
	if(rst='1') then
		r_reg <= (others=>'0');
		q_reg <= (others=>'0');
	elsif(clk'event and clk='1') then
		r_reg <= r_next;
		q_reg <= q_next;
	end if;
end process;

--Next state logic
r_next <= unsigned(y) when load='1' else
			r_reg - unsigned(d);
q_next <= (others=>'0') when load='1' else
			q_reg+1;

--Output logic
r <= std_logic_vector(r_reg);
q <= std_logic_vector(q_reg);

end architecture;

