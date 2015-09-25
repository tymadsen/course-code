----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:22 03/07/2015 
-- Design Name: 
-- Module Name:    sramController - Behavioral 
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

entity sramController is
	 Generic ( CLK_RATE : NATURAL := 50_000_000; POWER_DELAY : NATURAL := 150);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (22 downto 0);
           data_m2s : in  STD_LOGIC_VECTOR (15 downto 0);
           mem : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           data_s2m : out  STD_LOGIC_VECTOR (15 downto 0);
           data_valid : out  STD_LOGIC;
           ready : out  STD_LOGIC;
           MemAdr : out  STD_LOGIC_VECTOR (22 downto 0);
           MemOE : out  STD_LOGIC;
           MemWR : out  STD_LOGIC;
           RamCS : out  STD_LOGIC;
           RamLB : out  STD_LOGIC;
           RamUB : out  STD_LOGIC;
           RamCLK : out  STD_LOGIC;
           RamADV : out  STD_LOGIC;
           RamCRE : out  STD_LOGIC;
           MemDB : inout  STD_LOGIC_VECTOR (15 downto 0));
end sramController;

architecture Behavioral of sramController is
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
	
	--Constants
	constant COUNTER_MAX_VAL : Natural := (CLK_RATE/1E6)*POWER_DELAY - 1;
	constant COUNTER_BITS : Natural := log2c(COUNTER_MAX_VAL);
	--Enum Type
	type state_type is (power_up, idle, r1, r2, r3, r4, w1, w2, w3 ,w4);
	--Signals
	signal Raddr, Raddr_next: STD_LOGIC_VECTOR(22 downto 0) := (others=>'0');
	signal Rm2s, Rm2s_next, Rs2m, Rs2m_next: STD_LOGIC_VECTOR(15 downto 0);
	signal tri_en, data_valid_next, MemWR_next, MemOE_next: STD_LOGIC;
	signal counter, counter_next : UNSIGNED(COUNTER_BITS-1 downto 0);
	signal state_reg, state_next : state_type;
	
begin
	--Assign constant values
	RamCLK <= '0';
	RamADV <= '0';
	RamCRE <= '0';
	RamUB <= '0';
	RamLB <= '0';
	
	--Register update
	process(clk,rst)
	begin
		if(rst='1') then
			Raddr <= (others=>'0');
			Rm2s <= (others=>'0');
			Rs2m <= (others=>'0');
			counter <= (others=>'0');
			state_reg <= power_up;
			data_valid <= '0';
			MemWR <= '1';
			MemOE <= '1';
		elsif(clk'event and clk='1') then
			Raddr <= Raddr_next;
			Rm2s <= Rm2s_next;
			Rs2m <= Rs2m_next;
			counter <= counter_next;
			state_reg <= state_next;
			data_valid <= data_valid_next;
			MemWR <= MemWR_next;
			MemOE <= MemOE_next;
		end if;
	end process;
	
	--Output logic
	MemAdr <= Raddr;
	MemDB <= Rm2s when tri_en = '1' else (others=>'Z');
	data_s2m <= Rs2m;
	
	process(state_reg, mem, rw, addr, data_m2s, MemDB, data_m2s, 
				Raddr, Rs2m, Rm2s, counter)
	begin
		--Defaults
		counter_next <= counter;
		RamCS <= '0';
		MemWR_next <= '1';
		MemOE_next <= '1';
		ready <= '0';
		state_next <= state_reg;
		data_valid_next <= '0';
		tri_en <= '0';
		Rs2m_next <= Rs2m;
		Rm2s_next <= Rm2s;
		Raddr_next <= Raddr;
		case state_reg is
			when power_up => 
				RamCS <= '1';
				counter_next <= counter+1;
				if(counter=COUNTER_MAX_VAL) then
					state_next <= idle;
				end if;
			when idle =>
				ready <= '1';
				if(mem='0')then
					Raddr_next <= addr;
					if(rw='1') then
						state_next <= r1;
					else
						state_next <= w1;
						Rm2s_next <= data_m2s;
					end if;
				end if;
			when r1 =>
				state_next <= r2;
			when r2 =>
				state_next <= r3;
				MemOE_next <= '0';
			when r3 =>
				state_next <= r4;
				MemOE_next <= '0';
			when r4 =>
				state_next <= idle;
				Rs2m_next <= MemDB;
				data_valid_next <= '1';
			when w1 =>
				state_next <= w2;
			when w2 =>
				tri_en <= '1';
				state_next <= w3;
			when w3 =>
				MemWR_next <= '0';
				tri_en <= '1';
				state_next <= w4;
			when w4 =>
				tri_en <= '1';
				state_next <= idle;
		end case;
	end process;

end Behavioral;

