----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:32 04/02/2015 
-- Design Name: 
-- Module Name:    framebuffer - Behavioral 
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

entity framebuffer is
    Port ( clk : in  STD_LOGIC;
           btn0 : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (4 downto 0);
			  led : out STD_LOGIC;
           Hsync : out  STD_LOGIC;
           Vsync : out  STD_LOGIC;
           vgaRed : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaGreen : out  STD_LOGIC_VECTOR (2 downto 0);
           vgaBlue : out  STD_LOGIC_VECTOR (1 downto 0);
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
end framebuffer;

architecture Behavioral of framebuffer is
	signal addr, addr_next: STD_LOGIC_VECTOR(22 downto 0);
	signal data_m2s, data_s2m : STD_LOGIC_VECTOR(15 downto 0);
	signal pixel_x, pixel_y : STD_LOGIC_VECTOR(9 downto 0);
	signal pixel_data, pixel_data_next : STD_LOGIC_VECTOR(7 downto 0);
	signal HS_buf, HS_buf_next, blank_reg, blank_next : STD_LOGIC_VECTOR(4 downto 0);
	signal mem : STD_LOGIC := '1';
	signal rw, rst, ready, data_valid, HS, VS, last_column, 
				last_row, blank : STD_LOGIC;
begin
	--tied signals
	rst <= btn0;
	data_m2s <= (others=>'0');
	rw<='1';
	led <= '1' when data_valid='1' and last_row='1' and last_column='1' else '0';
	
	--SRAM Controller
	sram_control: entity work.sramController
		Generic map(CLK_RATE=>50_000_000, POWER_DELAY=>150)
		Port map(clk=>clk, rst=>rst, addr=>addr, data_m2s=>data_m2s, mem=>mem, rw=>rw, --in
					data_s2m=>data_s2m, data_valid=>data_valid, ready=>ready, MemAdr=>MemAdr, 
					MemOE=>MemOE, MemWR=>MemWR, RamCS=>RamCS,	RamLB=>RamLB, RamUB=>RamUB, 
					RamCLK=>RamCLK, RamADV=>RamADV, RamCRE=>RamCRE,	MemDB=>MemDB);
	--VGA Controller		  
	vga_control: entity work.vga_timing
		Port map(clk=>clk, rst=>ready, HS=>HS, VS=>VS, pixel_x=>pixel_x, pixel_y=>pixel_y,
					last_column=>last_column, last_row=>last_row, blank=>blank);
	
	process(clk, rst, ready)
	begin
		if(rst='1') then 
			addr <= (others=>'0');
			mem <= '1';
			pixel_data<=(others=>'0');
			HS_buf <= (others=>'1');
			blank_reg <= (others=>'0');
		elsif(clk'event and clk='1') then
			if(ready='1') then
				mem <= '0';
			end if;
			HS_buf <= HS_buf_next;
			blank_reg <= blank_next;
			addr <= addr_next;
			pixel_data<= pixel_data_next;
		end if;
	end process;
	
	blank_next <= blank_reg(3 downto 0) & blank;
	HS_buf_next <= HS_buf(3 downto 0) & HS;
	Hsync <= HS_buf(4);
	Vsync <= VS;
	addr_next <= sw & pixel_y(8 downto 0) & pixel_x(9 downto 1);
	pixel_data_next <= data_s2m(7 downto 0) when pixel_x(0) = '0' else
							data_s2m(15 downto 8);
	
	--VGA output data
	vgaRed <= pixel_data(7 downto 5) when blank_reg(4)='0' else "000";
	vgaGreen <= pixel_data(4 downto 2) when blank_reg(4)='0' else "000";
	vgaBlue <= pixel_data(1 downto 0) when blank_reg(4)='0' else "00";

end Behavioral;

