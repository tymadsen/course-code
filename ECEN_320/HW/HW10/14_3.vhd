-------- Problem 14.3 ---------
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
	component incrementor1 is
	port(
		a : in std_logic;
		cin: in std_logic;
		s : out std_logic;
		cout : out std_logic
		);
	end component;
architecture arch of incrementor is
	constant ONES : std_logic_vector(WIDTH-1 downto 0) := (others=>'1');
	signal c : std_logic_vector(WIDTH-1 downto 0);
begin
	inc : incrementor1
	c(0) <= cin;
	gen : for i in 1 to WIDTH-1 generate
		inc: incrementor1 
			port map(a=>a(i), cin=>cin, s=>s(i), cout=>cout);
	end generate;
end arch;