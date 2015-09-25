-------- Problem 14.4 ---------
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
	s(0) <= a(0) xor cin;
	gen : for i in 1 to WIDTH-2 generate
		s(i) <= a(i) xor c(i);
	end generate;
	s(WIDTH-1) <= a(WIDTH-1) xor c(WIDTH-2);
	cout <= '1' when (a=ONES) and cin='1' else '0';
end arch;