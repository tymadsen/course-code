---------------------------------------------
--Problem 10.5d
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
attribute enum_encoding: string;
attribute enum_encoding of preamble_state : 
			type is "0000 1000 0001 1010 0011 1100 0101 1110 0111";
signal state_reg, state_next : preamble_state;
begin
--Clocked process for next state
process(clk)
begin
	if(clk'event and clk='1') then
		state_reg <= state_next;
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
	--Output logic
	data_out <= state_reg(3);
end architecture;

