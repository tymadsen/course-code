----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:49 01/29/2015 
-- Design Name: 
-- Module Name:    seven_segment_control - Behavioral 
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

entity seven_segment_control is
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
end seven_segment_control;

architecture Behavioral of seven_segment_control is
	signal decoder_in: STD_LOGIC_VECTOR (3 downto 0);
	signal anode_select: STD_LOGIC_VECTOR (1 downto 0);
	signal r_reg, r_next : unsigned (COUNTER_BITS-1 downto 0) := (others=>'0');
	signal q: STD_LOGIC_VECTOR (COUNTER_BITS-1 downto 0);
	signal an_temp: STD_LOGIC_VECTOR (3 downto 0);
begin
	-- Binary Counter
	process (clk)
	begin
		if (clk'event and clk='1') then
			r_reg <= r_next;
		end if ;
	end process;
	-- next-state logic
	r_next <= r_reg + 1;
	-- output logic
	q <= std_logic_vector(r_reg);
	anode_select <= q(COUNTER_BITS-1 downto COUNTER_BITS-2);
	-- Blank
	with anode_select select
		an_temp <="1110" when "00", -- AN0 On
					"1101" when "01", -- AN1 On
					"1011" when "10", -- AN2 On
					"0111" when others; -- AN3 On
	--Blank anode
	an <= blank OR an_temp;
	
	-- Decoder in select
	with anode_select select
		decoder_in <= data_in(3 downto 0) when "00",
						data_in(7 downto 4) when "01",
						data_in(11 downto 8) when "10",
						data_in(15 downto 12) when others; 
						
	--DP select
	with anode_select select
		dp <= not(dp_in(0)) when "00",
				not(dp_in(1)) when "01",
				not(dp_in(2)) when "10",
				not(dp_in(3)) when others;
	
	-- Decoder select
	with decoder_in select
		seg <="1000000" when "0000", --0
				"1111001" when "0001", --1
				"0100100" when "0010", --2
				"0110000" when "0011", --3
				"0011001" when "0100", --4
				"0010010" when "0101", --5
				"0000010" when "0110", --6
				"1111000" when "0111", --7
				"0000000" when "1000", --8
				"0010000" when "1001", --9
				"0001000" when "1010", --A
				"0000011" when "1011", --B
				"1000110" when "1100", --C
				"0100001" when "1101", --D
				"0000110" when "1110", --E
				"0001110" when "1111", --F
				"0000000" when others;

end Behavioral;

