
library ieee;
use ieee.std_logic_1164.all;

-- entity
entity seven_seg_decode_exp is
	port(
		sw: in std_logic_vector(7 downto 0);
		btn: in std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0);
		dp: out std_logic;
		an: out std_logic_vector(3 downto 0)
	);
end seven_seg_decode_exp;


-- architecture
architecture decoder of seven_seg_decode_exp is
	signal decoder_in: std_logic_vector(3 downto 0);
begin
	-- 7 Segment Decoder block
	with decoder_in select
		seg <="1000000" when "0000", --0
				"1111001" when "0001", --1
				"0100100" when "0010", --2
				"0110000" when "0011", --3
				"0011001" when "0100", --4
				"0010010" when "0101", --5
				"0000010" when "0110", --6
				"1111000" when "0111", --7
				"0000000" when "1000", --8
				"0010000" when "1001", --9
				"0001000" when "1010", --A
				"0000011" when "1011", --B
				"1000110" when "1100", --C
				"0100001" when "1101", --D
				"0000110" when "1110", --E
				"0001100" when "1111", --F
				"0000000" when others;
				
	dp <= '0' when btn(3)='1' else '1';
	
	--Set decoder_in values
	decoder_in <= 	"1000" when (btn(3)='1') else
						sw(3 downto 0) when (btn(1)='0' and btn(0)='0') else
						sw(7 downto 4) when (btn(1)='0' and btn(0)='1') else
						sw(7 downto 4) xor sw(3 downto 0) when (btn(1)='1' and btn(0)='0') else
						sw(1 downto 0) & sw(3 downto 2);
	-- Set AN values
	an <= "0000" when (btn(3)='1') else
			"1111" when (btn(2)='1') else
			"1110" when (btn(1)='0' and btn(0)='0') else
			"1101" when (btn(1)='0' and btn(0)='1') else
			"1011" when (btn(1)='1' and btn(0)='0') else
			"0111";

end decoder;