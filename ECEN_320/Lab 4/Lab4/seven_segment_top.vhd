----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:31 01/29/2015 
-- Design Name: 
-- Module Name:    seven_segment_top - Behavioral 
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

entity seven_segment_top is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR (3 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           dp : out  STD_LOGIC;
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end seven_segment_top;

architecture Behavioral of seven_segment_top is
	component seven_segment_control
		Generic (
			COUNTER_BITS: NATURAL
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
	signal dp_in, blank: STD_LOGIC_VECTOR (3 downto 0);
	signal data_in:  STD_LOGIC_VECTOR (15 downto 0);
	signal r_reg, r_next: unsigned (31 downto 0) := (others=>'0');
	signal q: STD_LOGIC_VECTOR (31 downto 0);
	
begin
	-- 32 bit free counter
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
	
	-- Blanking logic
	blank <= "1111" when btn(3)='1' else
				"0000" when btn(2)='1' else
				"1100" when btn(1)='1' else
				"0000";
	-- DP logic
	dp_in <= "0000" when btn(3)='1' else
				"0000" when btn(2)='1' else
				"0010" when btn(1)='1' else
				"1111" when btn(0)='1' else
				"1000";
	-- Data logic
	data_in <= "1011111011101111" when btn(2)='1' else
					"00000000" & sw(7 downto 0) when btn(1)='1' else
					q(15 downto 0) when btn(0)='1' else
					q(31 downto 16);
	-- Component instantiation
	seg_ctl: seven_segment_control
		generic map (COUNTER_BITS=>15)
		port map (clk => clk, data_in => data_in, dp_in => dp_in, blank => blank,
						seg => seg, dp => dp, an =>an);


end Behavioral;

