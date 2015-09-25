----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:35 04/13/2015 
-- Design Name: 
-- Module Name:    dcm - Behavioral 
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
library	unisim;
use	unisim.vcomponents.all;
--use IEEE.NUMERIC_STD.ALL;

entity dcm_hw is
    Port ( GCLK : in  STD_LOGIC;
			  RST : in STD_LOGIC;
           LSGCN0 : out  STD_LOGIC;
			  LSGCN90 : out  STD_LOGIC;
			  LSGCN2X : out  STD_LOGIC;
			  LOCKED: out STD_LOGIC);
end dcm_hw;

architecture Behavioral of dcm_hw is
	signal CLKFB, CLK0, CLK90, CLK2X, CLKIN: STD_LOGIC;
begin
	-- DCM instantiation
	my_dcm :DCM
		port map(CLK0=>CLK0, CLK90=>CLK90, CLK2X=>CLK2X, 
				CLKIN=>CLKIN, CLKFB=>CLKFB, RST=>RST, LOCKED=>LOCKED);
	-- IBUFG Instantiation
	ibufg0 :IBUFG
		port map(O=>CLKIN,I=>GCLK);
	-- BUFG for CLK0 Instantiation
	bufg0 :BUFG
		port map(O=>CLKFB,I=>CLK0);
	LSGCN0 <= CLKFB;
	-- BUFG for CLK90 Instantiation
	bufg90 :BUFG
		port map(O=>LSGCN90,I=>CLK90);
	-- BUFG for CLK2X Instantiation
	bufg2x :BUFG
		port map(O=>LSGCN2X,I=>CLK2X);

end Behavioral;

