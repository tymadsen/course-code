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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_top is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR (3 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           Hsync : out  STD_LOGIC;
           Vsync : out  STD_LOGIC;
           vgaRed : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaGreen : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaBlue : out  STD_LOGIC_VECTOR (1 downto 0));
end vga_top;

architecture Behavioral of vga_top is
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
	signal HS, VS, last_column, last_row, blank : STD_LOGIC;
	signal pixel_x, pixel_y :  STD_LOGIC_VECTOR (9 downto 0);
	signal red, red_disp, green, green_disp :  STD_LOGIC_VECTOR (2 downto 0);
	signal blue, blue_disp :  STD_LOGIC_VECTOR (1 downto 0);
begin
	vga_color_bar: vga_timing
	port map(clk=>clk, rst=>btn(3), HS=>HS, VS=>VS, 
		last_column=>last_column, last_row=>last_row,
		blank=>blank);
		
		--Output registers
		process(clk)
		begin
			if(clk'event and clk='1') then
				Hsync <= HS;
				Vsync <= VS;
				vgaRed <= red;
				vgaGreen <= green;
				vgaBlue <= blue;
			end if;
		end process;
		
		--Blanking
		red <= red_disp when blank = '0' else "000";
		green <= green_disp when blank = '0' else "000";
		blue <= blue_disp when blank = '0' else "00";
		
		--Color pixel logic
		--Red
		red_disp <= 	"111" when btn(2)='1' else
							"000" when btn(1)='1' else
							"000" when btn(0)='1' else
							sw(7 downto 5);
		-- Green
		green_disp <=	"000" when btn(2)='1' else
							"111" when btn(1)='1' else
							"000" when btn(0)='1' else
							sw(4 downto 2);
		-- Blue
		blue_disp <=	"00" when btn(2)='1' else
							"00" when btn(1)='1' else
							"11" when btn(0)='1' else
							sw(1 downto 0);

end Behavioral;

