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
-------- Problem 14.5 ---------
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