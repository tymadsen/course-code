----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:35 02/20/2015 
-- Design Name: 
-- Module Name:    tx_top - Behavioral 
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

entity tx_top is
	Generic (
		CLK_RATE : NATURAL := 50_000_000;
		BAUD_RATE : NATURAL := 19_200
	);
   Port ( clk : in  STD_LOGIC;
		btn0 : in  STD_LOGIC;
		rst : in STD_LOGIC;
		sw : in  STD_LOGIC_VECTOR (7 downto 0);
		tx_busy : out  STD_LOGIC;
		tx_out : out  STD_LOGIC;
		dp : out  STD_LOGIC;
		seg : out  STD_LOGIC_VECTOR (6 downto 0);
		an : out  STD_LOGIC_VECTOR (3 downto 0)
	);
end tx_top;

architecture Behavioral of tx_top is
	--Uart transmitter
	component tx
		Generic (
			CLK_RATE : NATURAL := CLK_RATE;
			BAUD_RATE : NATURAL := BAUD_RATE		
		);
		Port (
			clk : in  STD_LOGIC;
			rst : in  STD_LOGIC;
			data_in : in  STD_LOGIC_VECTOR (7 downto 0);
			send_character : in  STD_LOGIC;
			tx_out : out  STD_LOGIC;
			tx_busy : out  STD_LOGIC
		);
	end component;
	-- 7 segment controller
	component seven_segment_control
		Generic (
			COUNTER_BITS: NATURAL := 15
		);
		Port ( 
			clk : in  STD_LOGIC;
			data_in : in  STD_LOGIC_VECTOR (15 downto 0);
			dp_in : in  STD_LOGIC_VECTOR (3 downto 0);
			blank : in  STD_LOGIC_VECTOR (3 downto 0);
			seg : out  STD_LOGIC_VECTOR (6 downto 0);
			dp : out  STD_LOGIC;
			an : out  STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;
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
	constant COUNTER_MAX_VAL: NATURAL := CLK_RATE/100 - 1;
	constant COUNTER_BITS: NATURAL := log2c(COUNTER_MAX_VAL);
	--Signals
	signal count_reg, count_next : UNSIGNED(COUNTER_BITS-1 downto 0);
	signal debounced, en_sample, button0 : STD_LOGIC := '0';
	signal data_in : STD_LOGIC_VECTOR(15 downto 0);
	signal charbits : STD_LOGIC_VECTOR(7 downto 0);
begin
	uart: tx
	port map(clk=>clk, rst=>rst, data_in=>charbits, send_character=>button0, 
				tx_out=>tx_out, tx_busy=>tx_busy);
	seven_seg_ctl: seven_segment_control
	port map(clk=>clk, data_in=>data_in, dp_in=>"0000", 
				blank=>"0000", seg=>seg, dp=>dp, an=>an);

	--Counter 
	process(clk, rst)
	begin
		if(rst='1') then
			count_reg <= (others=>'0');
		elsif(clk'event and clk='1') then
			count_reg <= count_next;
			--debounce
			if(count_reg = COUNTER_MAX_VAL) then
				en_sample <= '1';
			else
				en_sample <= '0';
			end if;
		end if;
	end process;
	
	--Next state for counter
	count_next <= (others=>'0') when count_reg = COUNTER_MAX_VAL else
						count_reg+1;
	--Debounce clock
	process(clk, rst, btn0, en_sample)
	begin
		if(rst='1') then
			debounced <= '0';
		elsif(clk'event and clk='1' and en_sample='1') then
			debounced <= btn0;
		end if;
	end process;
	
	--Debounced output logic
	button0 <= debounced;
	
	--Set lower 8 of data_in to sw
	data_in <= "00000000" & sw;
	
	charbits <= sw;
	--Only send uppercase letters
	--sw(7 downto 6) & '0' & sw(4 downto 0) when sw(7 downto 4)="0110" 
		--																and sw(3 downto 0)/="0000" else
			--		sw(7 downto 6) & '0' & sw(4 downto 0) when sw(7 downto 4)="0111" 
				--														and sw(3 downto 0)/="1011" 
					--													and sw(3 downto 0)/="1100" 
						--												and sw(3 downto 0)/="1101" 
							--											and sw(3 downto 0)/="1110" 
								--										and sw(3 downto 0)/="1111" else
					--sw;
	
end Behavioral;

