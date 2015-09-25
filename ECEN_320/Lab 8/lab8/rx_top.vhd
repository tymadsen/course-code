----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:35 02/20/2015 
-- Design Name: 
-- Module Name:    rx_top - Behavioral 
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

entity rx_top is
	Generic (
		CLK_RATE : NATURAL := 50_000_000;
		BAUD_RATE : NATURAL := 19_200
	);
   Port ( clk : in  STD_LOGIC;
		rst : in STD_LOGIC;
		rx_in : in  STD_LOGIC;
		rx_busy : out  STD_LOGIC;
		dp : out  STD_LOGIC;
		seg : out  STD_LOGIC_VECTOR (6 downto 0);
		an : out  STD_LOGIC_VECTOR (3 downto 0)
	);
end rx_top;

architecture Behavioral of rx_top is
	--Uart receiver
	component rx
		Generic (
			CLK_RATE : NATURAL := CLK_RATE;
			BAUD_RATE : NATURAL := BAUD_RATE		
		);
		Port (
			clk : in  STD_LOGIC;
			rst : in  STD_LOGIC;
			rx_in : in STD_LOGIC;
			data_out : out  STD_LOGIC_VECTOR (7 downto 0);
			data_strobe : out  STD_LOGIC;
			rx_busy : out  STD_LOGIC
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
	
	--Signals
	signal data_strobe, rx_s1, rx_s1_next, rx_s2, rx_s2_next : STD_LOGIC;
	signal data_in : STD_LOGIC_VECTOR(15 downto 0);
	signal r_reg, r_reg_next, l_reg, l_reg_next, data_out : STD_LOGIC_VECTOR(7 downto 0);
	
begin
	receiver: rx
	port map(clk=>clk, rst=>rst, rx_in=>rx_s2, data_out=>data_out, 
				data_strobe=>data_strobe, rx_busy=>rx_busy);
	seven_seg_ctl: seven_segment_control
	port map(clk=>clk, data_in=>data_in, dp_in=>"0000", 
				blank=>"0000", seg=>seg, dp=>dp, an=>an);
				
	process(clk, rst)
	begin
		if(rst='1') then
			rx_s1 <= '0';
			rx_s2 <= '0';
			r_reg <= (others=>'0');
			l_reg <= (others=>'0');
		elsif(clk'event and clk='1') then
			rx_s1 <= rx_s1_next;
			rx_s2 <= rx_s2_next;
			if(data_strobe='1') then
				r_reg <= r_reg_next;
				l_reg <= l_reg_next;
			end if;
		end if;
	end process;
	
	--Next state logic
	rx_s1_next <=  rx_in;
	rx_s2_next <= rx_s1;
	r_reg_next <= data_out;
	l_reg_next <= r_reg;
	
	--Set lower 8 of data_in to sw
	data_in <= r_reg & l_reg;
	
end Behavioral;

