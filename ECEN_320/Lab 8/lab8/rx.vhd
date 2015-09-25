----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:16 02/28/2015 
-- Design Name: 
-- Module Name:    rx - archie 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rx is
	Generic (CLK_RATE : NATURAL := 50_000_000;
				BAUD_RATE : NATURAL := 19_200);
   Port ( clk : in  STD_LOGIC;
          rst : in  STD_LOGIC;
          rx_in : in  STD_LOGIC;
          data_out : out  STD_LOGIC_VECTOR (7 downto 0);
          data_strobe : out  STD_LOGIC;
          rx_busy : out  STD_LOGIC
	);
end rx;

architecture archie of rx is

	--Functions
	function log2c(n:integer) return integer is
		variable m,p:integer;
	begin
		m := 0;
		p := 1;
		while p < n loop
			m := m+1;
			p := p*2;
		end loop;
		return m;
	end log2c;
	
	--Enum type
	type rx_state_type is
		(POWER_UP, IDLE, STRT, D0, D1, D2, D3, D4, D5, D6, D7, STP, ERR);
	
	--Constants
	constant BIT_COUNTER_MAX_VAL : Natural := CLK_RATE / BAUD_RATE - 1;
	constant BIT_COUNTER_BITS : Natural := log2c(BIT_COUNTER_MAX_VAL);
	
	--Signals
	signal bit_timer, bit_timer_next : unsigned(BIT_COUNTER_BITS-1 downto 0);
	signal clrTimer, rx_bit, rx_bit_half, load, shift, send_data : STD_LOGIC;
	signal shift_reg, shift_reg_next : STD_LOGIC_VECTOR(7 downto 0);
	signal state_reg, state_next : rx_state_type;

begin

	--Bit Timer
		process(clk, clrTimer, rst)
		begin
			if(rst='1') then
				bit_timer <= (others=>'0');
				shift_reg <= (others=>'0');
				state_reg <= POWER_UP;
			elsif(clk'event and clk='1') then
				state_reg <= state_next;
				shift_reg <= shift_reg_next;
				if(clrTimer='1') then
					bit_timer <= (others=>'0');
				else
					bit_timer <= bit_timer_next;
				end if;
			end if;
		end process;
		
		--Next state logic
		bit_timer_next <= bit_timer+1 when bit_timer < BIT_COUNTER_MAX_VAL else
								(others => '0');
	
		shift_reg_next <= (others=>'0') when load='1' else
								rx_in & shift_reg(7 downto 1) when shift='1' else
								shift_reg;
								
		--Output logic
		rx_bit <= '1' when bit_timer = BIT_COUNTER_MAX_VAL else
					'0';
		rx_bit_half <= '1' when bit_timer = BIT_COUNTER_MAX_VAL/2 else
							'0';
		
		--Next state logic
		process(state_reg, rx_bit, rx_bit_half, rx_in)
		begin
			--Defaults
			shift <= '0';
			load <= '0';
			state_next <= state_reg;
			send_data <= '0';
			case state_reg is
				when POWER_UP => 
					if(rx_in='1') then
						state_next <= STRT;
						load <= '1';			--Mealy
					end if;
				when IDLE => 
					if(rx_in='0') then
						state_next <= STRT;
						load <= '1';			--Mealy
					end if;
				when STRT => 
					if(rx_bit='1') then
						state_next <= D0;
					end if;
				when D0 => 
					if(rx_bit='1') then
						state_next <= D1;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D1 => 
					if(rx_bit='1') then
						state_next <= D2;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D2 => 
					if(rx_bit='1') then
						state_next <= D3;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D3 => 
					if(rx_bit='1') then
						state_next <= D4;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D4 => 
					if(rx_bit='1') then
						state_next <= D5;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D5 => 
					if(rx_bit='1') then
						state_next <= D6;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D6 => 
					if(rx_bit='1') then
						state_next <= D7;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when D7 => 
					if(rx_bit='1') then
						state_next <= STP;
					end if;
					if(rx_bit_half='1') then
						shift <= '1';			--Mealy
					end if;
				when STP =>
					if(rx_bit_half='1') then
						if(rx_in='1') then
							state_next <= IDLE;
							send_data <= '1';
						else 
							state_next <= ERR;
						end if;
					end if;
				when ERR => 
					if(rx_in='1') then
						state_next <= IDLE;
					else
						state_next <= ERR;
					end if;
			end case;
		end process;
		
		--Output logic
		rx_busy <= '0' when (state_reg=IDLE) else
						'1';
		data_strobe <= '1' when send_data='1' else
							'0';
		data_out <= shift_reg when send_data='1' else
						"00000000";
		clrTimer <= '1' when state_reg=IDLE or state_reg=POWER_UP else
						'0';
end archie;

