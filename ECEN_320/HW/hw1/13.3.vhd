library ieee;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
entity thousand_counter is
	port(
		clk, reset: in std_logic;
		en: in std_logic;
		q_hundred, q_ten, q_one: out std_logic_vector (3 downto 0);
		p1000 : out std_logic
	);
end thousand_counter ;

architecture arch of thousand_counter is
	component dec_counter
		port(
			clk, reset: in std_logic;
			en: in std_logic;
			q: out std_logic_vector (3 downto 0);
			pulse: out std_logic
		);
	end component;
	signal p_one, p_ten, p_hundred : std_logic;
begin
	one_digit: dec_counter
		port map (clk=>clk, reset=>reset, en=>en,
						pulse=>p_one, q=>q_one);
	ten_digit: dec_counter
		port map (clk=>clk, reset=>reset, en=>p_one,
						pulse=>p_ten, q=>q_ten);
	hundred_digit: dec_counter
		port map (clk=>clk, reset=>reset, en=>p_ten,
						pulse=>p_hundred, q=>q_hundred);
	p1000 <= p_one and p_ten and p_hundred;
	-- register
	--process (clk, reset)
	--begin
		--if (reset ='1') then
		--	r_reg <= (others=>'0');
		--elsif (clk'event and clk='1') then
		--	r_reg <= r_next;
		--end if ;
	--end process;
	-- next-state logic
	--process (en, r_reg)
	--begin
		--r_next <= r_reg;
		--if (en='1') then
			--if r_reg=(TEN-1) then
			--	r_next <= (others=>'0');
			--else
				--r_next <= r_reg + 1;
			--end if ;
		--end if ;
	--end process;
	-- output logic
	--q <= std_logic_vector(r_reg);
	--pulse <= '1' when r_reg=(TEN-1) else
	--'0';
end arch;