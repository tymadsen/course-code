-------- Problem 14.7 ---------
library ieee
use ieee.std.all

entity incrementor is
	port(
		a : in std_logic_vector;
		cin: in std_logic;
		s : out std_logic_vector;
		cout : out std_logic
		);
end incrementor;

architecture arch of incrementor is
	constant WIDTH : NATURAL := a'length;
	signal c : std_logic_vector(WIDTH-1 downto 0);
begin
	process(a, cin)
	begin
		c(0) <= cin;
		for i in 0 to WIDTH-1 loop		
			s(i) <= a(i) xor c(i);
			c(i+1) <= a(i) and c(i);
		end loop;
		cout <= c(WIDTH-1);
	end process;
end arch;