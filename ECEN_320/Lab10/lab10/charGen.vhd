----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:38 03/12/2015 
-- Design Name: 
-- Module Name:    charGen - Behavioral 
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

entity charGen is
    Port ( clk : in  STD_LOGIC;
           char_we : in  STD_LOGIC;
           char_value : in  STD_LOGIC_VECTOR (7 downto 0);
           char_addr : in  STD_LOGIC_VECTOR (11 downto 0);
           pixel_x : in  STD_LOGIC_VECTOR (9 downto 0);
           pixel_y : in  STD_LOGIC_VECTOR (9 downto 0);
           pixel_out : out  STD_LOGIC);
end charGen;

architecture Behavioral of charGen is
	--signals
	signal cra : std_logic_vector(11 downto 0);
	signal font_rom_addr: std_logic_vector(10 downto 0);
	signal pixel_y_d : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
	signal pixel_x_d, pixel_x_dd : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');
	signal font_data, crv : STD_LOGIC_VECTOR(7 downto 0);
begin
	--entity instantiations
	mem : entity work.char_mem
		port map(clk=>clk, char_read_addr=>cra, char_write_addr=>char_addr,
					char_we=>char_we, char_write_value=>char_value,
					char_read_value=>crv);
	font : entity work.font_rom
		port map(clk=>clk,addr=>font_rom_addr,data=>font_data);
	--pixel out mux
	with pixel_x_dd select pixel_out <= 
		font_data(7) when "000",
		font_data(6) when "001",
		font_data(5) when "010",
		font_data(4) when "011",
		font_data(3) when "100",
		font_data(2) when "101",
		font_data(1) when "110",
		font_data(0) when others;
		
	process(clk)
	begin
		if(clk'event and clk='1') then
			pixel_x_d <= pixel_x(2 downto 0);
			pixel_x_dd <= pixel_x_d;
			pixel_y_d <= pixel_y(3 downto 0);
		end if;
	end process;
	--character memory read address
	cra <= pixel_y(8 downto 4) & pixel_x(9 downto 3);
	font_rom_addr <= crv(6 downto 0) & pixel_y_d;

end Behavioral;

