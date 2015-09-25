----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:46 02/20/2015 
-- Design Name: 
-- Module Name:    tx - Behavioral 
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

entity tx is
	Generic (
			CLK_RATE : NATURAL := 50_000_000;
			BAUD_RATE : NATURAL := 19_200			
	);
	Port (
		clk : in  STD_LOGIC;
      rst : in  STD_LOGIC;
      data_in : in  STD_LOGIC_VECTOR (7 downto 0);
      send_character : in  STD_LOGIC;
      tx_out : out  STD_LOGIC;
      tx_busy : out  STD_LOGIC
	);
end tx;

architecture Behavioral of tx is
	
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
	type uart_state_type is
		(IDLE, STRT, B0, B1, B2, B3, B4, B5, B6, B7, STP, RET);
	
	--Constants
	constant BIT_COUNTER_MAX_VAL : Natural := CLK_RATE / BAUD_RATE - 1;
	constant BIT_COUNTER_BITS : Natural := log2c(BIT_COUNTER_MAX_VAL);
	
	--Signals
	signal bit_timer,bit_timer_next : unsigned(BIT_COUNTER_BITS-1 downto 0);
	signal clrTimer, tx_bit, load, shift, shift_out, start, 
				stop, tx_o, tx_out_next : STD_LOGIC;
	signal shift_reg, shift_reg_next : STD_LOGIC_VECTOR(7 downto 0);
	signal state_reg, state_next : uart_state_type;
	
begin

	--Bit Timer
		process(clk, clrTimer, rst)
		begin
			if(rst='1') then
				bit_timer <= (others=>'0');
			elsif(clk'event and clk='1') then
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
		--Output logic
		tx_bit <= '1' when bit_timer = BIT_COUNTER_MAX_VAL else
					'0';
				
	--Shift Register
		process(clk, rst)
		begin
			if(rst='1') then
				shift_reg <= (others=>'0');
			elsif(clk'event and clk='1') then
				shift_reg <= shift_reg_next;
			end if;
		end process;
		--Next state logic
		shift_reg_next <= data_in when load='1' else
								'0' & shift_reg(7 downto 1) when shift='1' else
								shift_reg;
		--Output logic
		shift_out <= shift_reg(0);
			
	--Transmit Out
		process(clk,rst)
		begin
			if(rst='1') then
				tx_o <= '1';
			elsif(clk'event and clk='1') then
				tx_o <= tx_out_next;
			end if;
		end process;
		--Next state logic
		tx_out_next <= '0' when start='1' else
							'1' when stop='1' else
							shift_out;
		--Output logic
		tx_out <= tx_o;
	--FSM
		process(state_reg, clk, rst)
		begin
			if(rst='1') then
				state_reg <= IDLE;
			elsif(clk'event and clk='1') then
				state_reg <= state_next;
			end if;
		end process;
		--Next state logic
		process(state_reg, send_character, tx_bit)
		begin
			--Default
			shift <= '0';
			load <= '0';
			case state_reg is
				when IDLE => 
					if(send_character='1') then
						state_next <= STRT;
						load <= '1';			--Mealy
					else
						state_next <= IDLE;
					end if;
				when STRT => 
					if(tx_bit='1') then
						state_next <= B0;
					else
						state_next <= STRT;
					end if;
				when B0 => 
					if(tx_bit='1') then
						state_next <= B1;
						shift <= '1';			--Mealy
					else
						state_next <= B0;
					end if;
				when B1 => 
					if(tx_bit='1') then
						state_next <= B2;
						shift <= '1';			--Mealy
					else
						state_next <= B1;
					end if;
				when B2 => 
					if(tx_bit='1') then
						state_next <= B3;
						shift <= '1';			--Mealy
					else
						state_next <= B2;
					end if;
				when B3 => 
					if(tx_bit='1') then
						state_next <= B4;
						shift <= '1';			--Mealy
					else
						state_next <= B3;
					end if;
				when B4 => 
					if(tx_bit='1') then
						state_next <= B5;
						shift <= '1';			--Mealy
					else
						state_next <= B4;
					end if;
				when B5 => 
					if(tx_bit='1') then
						state_next <= B6;
						shift <= '1';			--Mealy
					else
						state_next <= B5;
					end if;
				when B6 => 
					if(tx_bit='1') then
						state_next <= B7;
						shift <= '1';			--Mealy
					else
						state_next <= B6;
					end if;
				when B7 => 
					if(tx_bit='1') then
						state_next <= STP;
						shift <= '1';			--Mealy
					else
						state_next <= B7;
					end if;
				when STP => 
					if(tx_bit='1') then
						state_next <= RET;
					else
						state_next <= STP;
					end if;
				when RET =>
					if(send_character='1') then
						state_next <= RET;
					else
						state_next <= IDLE;
					end if;
			end case;
		end process;
		
		--Output logic
		tx_busy <= '0' when (state_reg=IDLE) else
						'1';
		stop <= '1' when state_reg=STP or state_reg=RET or state_reg=IDLE else
					'0';
		start <= '1' when state_reg=STRT else
					'0';
		clrTimer <= '1' when state_reg=IDLE else
						'0';

end Behavioral;

