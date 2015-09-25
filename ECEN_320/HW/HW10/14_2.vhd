-------- Problem 14.2 ---------
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
	constant ONES : std_logic_vector(WIDTH-1 downto 0) := (others=>'1');
	signal c : std_logic_vector(WIDTH-1 downto 0);
begin
	c(0) <= cin;
	gen : for i in 1 to WIDTH-1 generate
		s(i) <= a(i) xor c(i);
	end generate;
	cout <= '1' when (a=ONES) and cin='1' else '0';
end arch;