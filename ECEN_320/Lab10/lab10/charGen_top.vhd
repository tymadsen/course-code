----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:14 03/12/2015 
-- Design Name: 
-- Module Name:    charGen_top - Behavioral 
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

entity charGen_top is
	 Generic (CLK_RATE : NATURAL := 50_000_000);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  btn0 : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           Hsync : out  STD_LOGIC;
           Vsync : out  STD_LOGIC;
           vgaRed : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaGreen : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaBlue : out  STD_LOGIC_VECTOR (1 downto 0);
			  last_column : out STD_LOGIC;
			  last_row : out STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           dp : out  STD_LOGIC;
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end charGen_top;

architecture Behavioral of charGen_top is
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
	constant COUNTER_MAX_VAL: NATURAL := CLK_RATE/10 - 1;
	constant COUNTER_BITS: NATURAL := log2c(COUNTER_MAX_VAL);
	constant MAX_X_ADDR : NATURAL := 79;
	constant MAX_Y_ADDR : NATURAL := 29;
	--signals
	signal count_reg, count_next : UNSIGNED(COUNTER_BITS-1 downto 0);
	signal HS, HS_d, VS, VS_d, blank, we, pixel_out, debounced : STD_LOGIC;
	signal y_addr, y_addr_next : unsigned(4 downto 0);
	signal x_addr, x_addr_next : unsigned(6 downto 0);
	signal pixel_x, pixel_y : STD_LOGIC_VECTOR(9 downto 0);
	signal char_addr : STD_LOGIC_VECTOR(11 downto 0);
	signal data_in : STD_LOGIC_VECTOR(15 downto 0);
	
begin
	
	--VGA Controller
	vga_control: entity work.vga_timing
		port map(clk=>clk, rst=>rst, HS=>HS, VS=>VS, pixel_x=>pixel_x, pixel_y=>pixel_y,	
					last_column=>last_column, last_row=>last_row, blank=>blank);
	--Character Generator
	char : entity work.charGen
		port map(clk=>clk, char_we=>debounced, char_value=>sw, char_addr=>char_addr, 
					pixel_x=>pixel_x, pixel_y=>pixel_y, pixel_out=>pixel_out);
	--Seven Segment Controller
	seg_ctl: entity work.seven_segment_control
		generic map (COUNTER_BITS=>15)
		port map (clk=>clk, data_in=>data_in, dp_in=>"0000", 
					blank=>"1100", seg=>seg, dp=>dp, an=>an);
	--data_in
	data_in <= "0000"&"0000"&sw;
	--HS and VS ff delays, counters, etc.
	process(clk, rst, we, pixel_out, blank, count_reg)
	begin
		if(rst='1') then
			x_addr <= (others=>'0');
			y_addr <= (others=>'0');
			count_reg <= (others=>'0');
			HS_d <= '0';
			VS_d <= '0';
			debounced <= '0';
		elsif(clk'event and clk='1') then
			HS_d <= HS;
			VS_d <= VS;
			Hsync <= HS_d;
			Vsync <= VS_d;
			count_reg <= count_next;
			--delay
			if(count_reg = COUNTER_MAX_VAL) then
				--enable write and update character address
				debounced <= btn0;
				if(btn0='1') then
					x_addr <= x_addr_next;
					y_addr <= y_addr_next;
				end if;
			end if;
			--blank or black
			if(pixel_out='0' or blank='1') then
				vgaRed <= "000";
				vgaGreen <= "000";
				vgaBlue <= "00";
			else--output white
				vgaRed <= "111";
				vgaGreen <= "111";
				vgaBlue <= "11";
			end if;
		end if;
	end process;
	--next state logic
	x_addr_next <= (others=>'0') when x_addr = MAX_X_ADDR else 
						x_addr+1;
	y_addr_next <= (others=>'0') when y_addr = MAX_Y_ADDR else 
						y_addr+1 when x_addr = MAX_X_ADDR else
						y_addr;
	count_next <= (others=>'0') when count_reg = COUNTER_MAX_VAL else
						count_reg+1;
	--character address
	char_addr <= STD_LOGIC_VECTOR(y_addr&x_addr);

end Behavioral;

