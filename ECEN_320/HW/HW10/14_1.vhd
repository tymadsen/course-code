-------- Problem 14.1 ---------
library ieee
use ieee.std.all

entity incrementor is
	port(
		a : in std_logic;
		cin: in std_logic;
		s : out std_logic;
		cout : out std_logic
		);
end incrementor;

architecture arch of incrementor is

begin
	s <= a xor cin;
	cout <= a and cin;
end arch;