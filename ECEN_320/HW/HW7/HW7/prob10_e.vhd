---------------------------------------------
--Problem 10.5e
---------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity preamble is
	port(
		clk, start : in std_logic;
		data_out : out std_logic
		);
end preamble;

architecture arch of preamble is

type preamble_state is (IDLE, b0, b1, b2, b3, b4, b5, b6, b7);
signal state_reg, state_next : preamble_state;
signal data_out_reg, data_out_next : std_logic;
begin
--Clocked process for next state
process(clk)
begin
	if(clk'event and clk='1') then
		state_reg <= state_next;
		data_out_reg <= data_out_next;
	end if;
end process;

--Next state logic
	process(state_reg)
	begin
		case state_reg is
			when IDLE =>
				if(start='1') then
					state_next <= b0;
				else
					state_next <= IDLE;
				end if;
			when b0 =>
				state_next <= b1;
			when b1 =>
				state_next <= b2;
			when b2 =>
				state_next <= b3;
			when b3 =>
				state_next <= b4;
			when b4 =>
			 	state_next <= b5;
			when b5 =>
				state_next <= b6;
			when b6 =>
				state_next <= b7;
			when b7 =>
				state_next <= IDLE;
		end case;
	end process;


	process(state_next)
	begin
		data_out_next <= '0';
		case state_next is
			when IDLE =>
			when b0 =>
				data_out_next <= '1';
			when b1 =>
				data_out_next <= '0';
			when b2 =>
				data_out_next <= '1';
			when b3 =>
				data_out_next <= '0';
			when b4 =>
				data_out_next <= '1';
			when b5 =>
				data_out_next <= '0';
			when b6 =>
				data_out_next <= '1';
			when b7 =>
				data_out_next <= '0';
		end case;
	end process;

	--Output logic
	data_out <= data_out_reg;
end architecture;

