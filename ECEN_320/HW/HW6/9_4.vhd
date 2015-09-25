-- Problem 9.4
library ieee ;
use ieee.std_logic_1164.all;
entity ring_counter is
	port (
		clk, reset: in std_logic;
		q: out std_logic_vector (3 downto 0)
	);
end ring_counter ; 

architecture self_correct_arch of ring_counter is
	constant WIDTH: natural := 4;
	signal r_reg , r_next : std_logic_vector (WIDTH-1 downto 0) ;
	signal s_in : std_logic ;
begin
	-- register
	process (clk , reset)
	begin
		if (reset='1') then
			r_reg <= "1110";
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
		end if ;
	end process;
	-- next_state logic
	s_in <= '0' when r_reg(WIDTH-1 downto 1)="111" else '1';
	r_next <= s_in & r_reg(WIDTH-1 downto 1);
	-- output logic
	q <= r_reg;
end self_correct_arch; 


-- Problem 9.5
library ieee ;
use ieee.std_logic_1164.all;
entity lfsr4 is
	port (
		clk, reset: in std_logic;
		q: out std_logic_vector (3 downto 0)
	);
end lfsr4 ; 

architecture no_one_arch of lfsr is
	signal r_reg, r_next : std_logic_vector (3 downto 0);
	signal fb, fzero, zero : std_logic ;
	constant SEED: std_logic_vector(3 downto 0) := "0000";
begin
	-- register
	process (clk , reset)
	begin
		if (reset='1') then
			r_reg <= SEED;
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
		end if ;
	end process;
	-- next_state logic
	fb <= r_reg(1) xor r_reg(0);
	zero <= '1' when r_reg(3 downto 1)="000" or r_reg(3 downto 1)="111" else
			'0';
	fzero <= zero xor fb;
	r_next <= fzero & r_reg(3 downto 1);
	-- output logic
	q <= r_reg;
end no_one_arch;

