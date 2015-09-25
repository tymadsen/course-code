----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:45:00 02/09/2015 
-- Design Name: 
-- Module Name:    vga_top - Behavioral 
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

entity vga_object is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR (3 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           Hsync : out  STD_LOGIC;
           Vsync : out  STD_LOGIC;
           vgaRed : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaGreen : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaBlue : out  STD_LOGIC_VECTOR (1 downto 0);
			  seg : out STD_LOGIC_VECTOR (6 downto 0);
			  dp : out  STD_LOGIC;
			  an : out  STD_LOGIC_VECTOR(3 downto 0)
			 );
end vga_object;

architecture Behavioral of vga_object is
	component vga_timing 
		Port (
				clk : in  STD_LOGIC;
				rst : in  STD_LOGIC;
				HS : out  STD_LOGIC;
				VS : out  STD_LOGIC;
				pixel_x : out  STD_LOGIC_VECTOR (9 downto 0);
				pixel_y : out  STD_LOGIC_VECTOR (9 downto 0);
				last_column : out  STD_LOGIC;
				last_row : out  STD_LOGIC;
				blank : out  STD_LOGIC
		);
	end component;
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
	-- Component instantionation for the ChipScope Controller (ICON)
	component chipscope_icon
		port (
			CONTROL0 : inout std_logic_vector(35 downto 0)
		);
	end component;
	-- Component instantionation for the ChipScope Internal Logic Analyzer
	component chipscope_ila
		port (
			CONTROL	: inout std_logic_vector(35 downto 0);
			CLK	:  in  std_logic;
			TRIG0	:  in std_logic_vector(31 downto 0)
		);
	end component;
	
	signal en, en_next : STD_LOGIC := '0';
	signal HS, VS, last_column, last_row, blank, square_red_on, 
		square_green_on, square_yellow_on, square_magenta_on, 
		custom_cyan_on, custom_magenta_on, custom_yellow_on : STD_LOGIC;
	signal r_reg, r_next :  UNSIGNED (15 downto 0);
	signal data_in :  STD_LOGIC_VECTOR (15 downto 0);
	signal pixel_x, pixel_y :  STD_LOGIC_VECTOR (9 downto 0);
	signal square_red_rgb, square_green_rgb, square_yellow_rgb, 
		square_magenta_rgb, custom_cyan_rgb, custom_magenta_rgb, 
		custom_yellow_rgb, background_rgb, squares_out, 
		custom_out : STD_LOGIC_VECTOR (7 downto 0);
	signal red, red_disp, red_bars, green, green_disp, 
		green_bars :  STD_LOGIC_VECTOR (2 downto 0);
	signal blue, blue_disp, blue_bars :  STD_LOGIC_VECTOR (1 downto 0);
	signal control : STD_LOGIC_VECTOR(35 downto 0);
	signal trigger : STD_LOGIC_VECTOR(31 downto 0);
begin
	vga_color_bar: vga_timing
	port map(clk=>clk, rst=>btn(3), HS=>HS, VS=>VS, 
		pixel_x=>pixel_x, pixel_y=>pixel_y,
		last_column=>last_column, last_row=>last_row,
		blank=>blank);
	seve_seg_ctl: seven_segment_control
	port map(clk=>clk, data_in=>data_in, dp_in=>"0000", 
				blank=>"0000", seg=>seg, dp=>dp, an=>an);
	--  ICON core instance
	ICON_inst:  chipscope_icon
	port map (CONTROL0 => control);
	--  ILA core instance
	ILA_inst : chipscope_ila
	port map (
		CONTROL	=> control,
		CLK	=> clk,	
		TRIG0	=> trigger
	);
	--trigger signal
	trigger <= '0' & blank & HS & VS & pixel_y & pixel_x & red & green & blue;
	--Output registers
	process(clk)
	begin
		if(clk'event and clk='1') then
			r_reg <= r_next;
			en <= en_next;
			Hsync <= HS;
			Vsync <= VS;
			vgaRed <= red;
			vgaGreen <= green;
			vgaBlue <= blue;
		end if;
	end process;
	
	--frame counter enable logic
	en_next <= not(en);--'1' when en='0' else
					--'0';
	--Next_state logic
	r_next <= r_reg+1 when last_column='1' and last_row='1' and en='1' else
					r_reg;
	-- 7-SEG data_in
	data_in <= std_logic_vector(r_reg);
	--Blanking
	red <= red_disp when blank = '0' else "000";
	green <= green_disp when blank = '0' else "000";
	blue <= blue_disp when blank = '0' else "00";
	
	--Squares
	--Red square
	square_red_on <= '1' when unsigned(pixel_x) >= 180 and unsigned(pixel_x) < 280 and
									unsigned(pixel_y) >= 100 and unsigned(pixel_y) < 200 else
									'0';
	square_red_rgb <= "111" & "000" & "00"; -- red
	--Green square
	square_green_on <= '1' when unsigned(pixel_x) >= 400 and unsigned(pixel_x) < 500 and
									unsigned(pixel_y) >= 100 and unsigned(pixel_y) < 200 else
									'0';
	square_green_rgb <= "000" & "111" & "00"; -- green
	--Yellow square
	square_yellow_on <= '1' when unsigned(pixel_x) >= 180 and unsigned(pixel_x) < 280 and
									unsigned(pixel_y) >= 300 and unsigned(pixel_y) < 400 else
									'0';
	square_yellow_rgb <= "111" & "111" & "00"; -- yellow
	--Magenta square
	square_magenta_on <= '1' when unsigned(pixel_x) >= 400 and unsigned(pixel_x) < 500 and
									unsigned(pixel_y) >= 300 and unsigned(pixel_y) < 400 else
									'0';
	square_magenta_rgb <= "111" & "000" & "11"; -- magenta
	
	-- Default value when no object is being displayed
	background_rgb <= "11111111";
	squares_out <= square_red_rgb when square_red_on = '1' else
					square_green_rgb when square_green_on = '1' else
					square_yellow_rgb when square_yellow_on = '1' else
					square_magenta_rgb when square_magenta_on = '1' else
					background_rgb;
					
	-- Custom objects
	custom_cyan_on <= '1' when unsigned(pixel_x) >= (400-unsigned(pixel_y)) and 
										unsigned(pixel_x) < (240+unsigned(pixel_y)) and
										unsigned(pixel_y) >= 80 and 
										unsigned(pixel_y) < 240 else
										'0';
	custom_cyan_rgb <= "000" & "111" & "11"; -- cyan
	--magenta custom
	custom_magenta_on <= '1' when unsigned(pixel_x) >= (400 - unsigned(pixel_y)) and 
									unsigned(pixel_x) < unsigned(pixel_y) - 80 and
									unsigned(pixel_y) >= 240 and unsigned(pixel_y) < 400 else
									'0';
	custom_magenta_rgb <= "111" & "000" & "11"; -- magenta
	--Yellow custom
	custom_yellow_on <= '1' when unsigned(pixel_x) >= (720 - unsigned(pixel_y)) and
									unsigned(pixel_x) < (240 + unsigned(pixel_y)) and
									unsigned(pixel_y) >= 240 and unsigned(pixel_y) < 400 else
									'0';
	custom_yellow_rgb <= "111" & "111" & "00"; -- yellow
	
	-- Default value when no object is being displayed
	
	custom_out <= custom_yellow_rgb when custom_cyan_on = '1' else
					custom_yellow_rgb when custom_magenta_on = '1' else
					custom_yellow_rgb when custom_yellow_on = '1' else
					"00001100";
	
	--Bars
	--Red
	red_bars <= 	"000" when unsigned(pixel_x) < 320 else
						"111";
						
	-- Green
	green_bars <=	"000" when unsigned(pixel_x) < 160 else
						"111" when unsigned(pixel_x) < 320 else
						"000" when unsigned(pixel_x) < 480 else
						"111";
	-- Blue
	blue_bars <=	"00" when unsigned(pixel_x) < 80 else
						"11" when unsigned(pixel_x) < 160 else
						"00" when unsigned(pixel_x) < 240 else
						"11" when unsigned(pixel_x) < 320 else
						"00" when unsigned(pixel_x) < 400 else
						"11" when unsigned(pixel_x) < 480 else
						"00" when unsigned(pixel_x) < 560 else
						"11";
						
	--Color pixel logic
	--Red
	red_disp <= squares_out(7 downto 5) when btn(0) = '1' else
					custom_out(7 downto 5) when btn(1) = '1' else
					sw(7 downto 5) when btn(2) = '1' else
					red_bars;			
	-- Green
	green_disp <= squares_out(4 downto 2) when btn(0) = '1' else
						custom_out(4 downto 2) when btn(1) = '1' else
						sw(4 downto 2) when btn(2) = '1' else
						green_bars;
	-- Blue
	blue_disp <= squares_out(1 downto 0) when btn(0) = '1' else
						custom_out(1 downto 0) when btn(1) = '1' else
						sw(1 downto 0) when btn(2) = '1' else
						blue_bars;

end Behavioral;

