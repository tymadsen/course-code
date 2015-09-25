-------- Problem 14.6 ---------
library ieee
use ieee.std.all

entity incrementor is
	generic(WIDTH : natural);
	port(
		a : in std_logic_vector(WIDTH-1 downto 0);
		cin: in std_logic;
		s : out std_logic_vector(WIDTH-1 downto 0);
		cout : out std_logic
		);
end incrementor;

architecture arch of incrementor is
	signal c : std_logic_vector(WIDTH-1 downto 0);
begin
	c(0) <= cin;
	gen : for i in 0 to WIDTH-1 generate
		s(i) <= a(i) xor c(i);
		c(i) <= a(i) and c(i);
	end generate;
	cout <= c(WIDTH-1);
end arch;