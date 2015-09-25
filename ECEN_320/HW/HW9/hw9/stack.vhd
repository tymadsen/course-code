--=============================
-- Listing 9.16 stack controller
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stack is
   port(
      clk, reset: in std_logic;
      push, pop: in std_logic;
      full, empty: out std_logic;
      addr: out std_logic_vector(1 downto 0)
   );
end stack;

architecture arch of stack is
   constant N: natural:=2;
   signal adr_reg, adr_next: unsigned(N downto 0);
   signal full_flag, empty_flag: std_logic;
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         adr_reg <= (others=>'1');
      elsif (clk'event and clk='1') then
         adr_reg <= adr_next;
      end if;
   end process;
   -- adr pointer next-state logic
   adr_next <=  adr_reg + 1 when push='1' and full_flag='0' else
				adr_reg - 1 when pop='1' and empty_flag='0' else
				adr_reg;
   full_flag <= '1' when adr_reg="011" else
				'0';
   -- write port output
   addr <= std_logic_vector(adr_reg(N-1 downto 0));
   full <= full_flag;
   empty_flag <= '1' when adr_reg="111" else
                 '0';
   -- read port output
   empty <= empty_flag;
end arch;
