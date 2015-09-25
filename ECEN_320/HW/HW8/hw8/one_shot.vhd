--=============================
-- Problem 12.1
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulse_5clk is
   port(
      clk, reset: in std_logic;
      go, stop: in std_logic;
      pulse: out std_logic
  );
end pulse_5clk;

architecture prog_arch of pulse_5clk is
	type fsmd_state_type is (idle, delay, sh);
	signal state_reg, state_next: fsmd_state_type;
	signal c_reg, c_next: unsigned(2 downto 0);
	signal w_reg, w_next: unsigned(2 downto 0);
begin
	--State and data registers
	process(clk, reset)
	begin
		if(reset='1') then
			state_reg <= idle;
			c_reg <= (others=>'0');
			w_reg <= "101"; -- default 5 cycle delay
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
			c_reg <= c_next;
			w_reg <= w_next;
		end if;
	end process;
	-- next state logic & data path functional units/routing
	process(state_reg,go,stop,c_reg,w_reg)
	begin
		pulse <= '0';
		c_next <= c_reg;
		w_next <= w_reg;
		case state_reg is
			when idle =>
				if go='1' then
					if stop='1' then
						state_next <= sh;
					else
						state_next <= delay;
					end if;
				else
					state_next <= idle;
				end if;
				c_next <= (others => '0');
			when delay =>
				if stop='1' then
					state_next <= idle;
				else
					if (c_reg=w_reg-1) then
						state_next <= idle;
					else
						c_next <= c_reg+1;
						state_next <= delay;
					end if;
				end if;
				pulse <= '1';
			when sh => 
				w_next <= go & w_reg(2 downto 1);
				if(c_reg = "011") then 
					state_next <= idle;
				else
					state_next <= sh;
					c_next <= c_reg+1;
				end if;
		end case;
	end process;
end prog_arch;
				