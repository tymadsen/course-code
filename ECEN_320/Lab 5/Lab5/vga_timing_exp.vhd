----------------------------------------------------------------------------------
-- Company: THM Electronics
-- Engineer: Ty Madsen
-- 
-- Create Date:    16:17:44 02/05/2015 
-- Design Name: 
-- Module Name:    vga_timing - Behavioral 
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

entity vga_timing_exp is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           HS : out  STD_LOGIC;
           VS : out  STD_LOGIC;
           pixel_x : out  STD_LOGIC_VECTOR (9 downto 0);
           pixel_y : out  STD_LOGIC_VECTOR (9 downto 0);
           last_column : out  STD_LOGIC;
           last_row : out  STD_LOGIC;
           blank : out  STD_LOGIC);
end vga_timing_exp;

architecture Behavioral of vga_timing_exp is
	constant H_PULSE: NATURAL := 800;
	constant H_DISP: NATURAL := 640;
	constant H_PW: NATURAL := 96;
	constant H_FP: NATURAL := 16;
	constant H_BP: NATURAL := 48;
	constant H_CENTER: NATURAL := 320;
	constant V_PULSE: NATURAL := 521;
	constant V_DISP: NATURAL := 480;
	constant V_PW: NATURAL := 2;
	constant V_FP: NATURAL := 10;
	constant V_BP: NATURAL := 29;
	constant V_CENTER: NATURAL := 240;
	signal pixel_en, r_next, r_reg: STD_LOGIC := '0';
	signal r_reg_HPC, r_next_HPC, r_reg_VPC, r_next_VPC: UNSIGNED(9 downto 0) := (others=>'0');
begin
	-- 50 MHZ clk
	process(clk,rst)
	begin
		if(rst='1') then
			r_reg <= '0';
		elsif(clk'event and clk='1') then
			r_reg <= r_next;
			end if;
	end process;
	-- Next-state logic
	r_next <= not(r_reg);
	--ouput logic
	pixel_en <= r_reg;
	
	-- Horizontal pixel counter
	process(clk, pixel_en, rst)
	begin
		if(rst='1') then
			r_reg_HPC <= (others=>'0');
		elsif(clk'event and clk='1' and pixel_en='1') then
			r_reg_HPC <= r_next_HPC;
			end if;
	end process;
	-- Next-state logic
	r_next_HPC <= (others=>'0') when r_reg_HPC=(H_PULSE-1) else
					r_reg_HPC+1;
	--ouput logic
	pixel_x <= std_logic_vector(r_reg_HPC);
	
	-- HS Sync Decoding logic
	HS <= '1' when (r_reg_HPC<(H_DISP+H_FP) or r_reg_HPC>(H_PULSE-H_BP-1)) else
			'0';
	-- last_column signal
	last_column <= '1' when r_reg_HPC=(H_DISP-1) else
						'0';
						
	-- Vertical pixel counter
	process(clk, pixel_en, rst, r_reg_HPC)
	begin
		if(rst='1') then
			r_reg_VPC <= (others=>'0');
		elsif(clk'event and clk='1' and pixel_en='1' and r_reg_HPC=(H_PULSE-1)) then
			r_reg_VPC <= r_next_VPC;
			end if;
	end process;
	-- Next-state logic
	r_next_VPC <= (others=>'0') when r_reg_VPC=(V_PULSE-1) else
					r_reg_VPC+1;
					
	--ouput logic
	pixel_y <= std_logic_vector(r_reg_VPC);
	
	-- VS Sync Decoding logic
	VS <= '1' when (r_reg_VPC<(V_DISP+V_FP) or r_reg_VPC>(V_PULSE-V_BP-1)) else
			'0';
	-- last_row signal
	last_row <= '1' when r_reg_VPC=(V_DISP-1) else
						'0';
						
	-- Blank signal
	blank <= '1' when (r_reg_VPC>=V_DISP or 
							r_reg_HPC>=H_DISP or
							r_reg_HPC<H_CENTER-r_reg_VPC or 
							r_reg_HPC>=H_CENTER+r_reg_VPC) else
				'0';
end Behavioral;

