---------------------------------------------
--Problem 11.6c
---------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	port(
		clk, rst, load_vals : in std_logic;
		val : in std_logic_vector(15 downto 0);
		q : out std_logic_vector(15 downto 0)
		);
end counter;

architecture arch of counter is

type count_state is (idle, load, count);
constant BITS : natural := 16;
signal state, next_state : count_state;
signal q_reg, q_next : unsigned(15 downto 0);
signal b_reg, b_next : unsigned(3 downto 0);
begin
--Clocked process for next state
process(clk,rst)
begin
	if(rst='1') then
		state <= idle;
		b_reg <= (others=>'0');
		q_reg <= (others=>'0');
	elsif(clk'event and clk='1') then
		state <= next_state;
		b_reg <= b_next;
		q_reg <= q_next;
	end if;
end process;

process(state, load_vals, b_reg)
begin
	b_next <= b_reg;
	q_next <= q_reg;
	case state is
		when idle =>
			if(load_vals='1') then
				next_state <= load;
			else
				next_state <= idle;
			end if;
		when load =>
			next_state <= count;
		when count => 
			if(load_vals='1') then
				b_next <= "1111";
				q_next <= (others=>'0');
			else
				b_next <= b_reg-1;
				q_next <= q_reg+1;
			end if;
			if(val(to_integer(b_reg))='0') then
				next_state <= count;
			else
				next_state <= idle;
			end if;
	end case;
end process;

--Output std_logic
q <= std_logic_vector(q_reg);

end architecture;
