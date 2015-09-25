--=============================
-- Problem 9.15
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity xor_red is
   port(
      clk, reset: in std_logic;
		a : in std_logic_vector(7 downto 0);
      y: out std_logic
  );
end xor_red;

architecture arch of xor_red is
	signal reg1, reg1_next: std_logic_vector(5 downto 0);
	signal reg2, reg2_next: std_logic_vector(3 downto 0);
	signal reg3, reg3_next: std_logic_vector(1 downto 0);
	signal reg4, reg4_next: std_logic;
begin
	--State and data registers
	process(clk, reset)
	begin
		if(reset='1') then
			reg1 <= (others=>'0');
			reg2 <= (others=>'0');
			reg3 <= (others=>'0');
			reg4 <= '0';
		elsif (clk'event and clk='1') then
			reg1 <= reg1_next;
			reg2 <= reg2_next;
			reg3 <= reg3_next;
			reg4 <= reg4_next;
		end if;
	end process;
	--Next state logic
	reg1_next <= a(7) xor a(6) & a(5 downto 2) & a(0) xor a(1);
	reg2_next <= reg1(5) & reg1(4) xor reg1(3) & reg1(2) xor reg1(1) & reg1(0);
	reg3_next <= reg2(3) xor reg2(2) & reg2(1) xor reg2(0);
	reg4_next <= reg3(1) xor reg3(0);
	y <= reg4;
end arch;
				