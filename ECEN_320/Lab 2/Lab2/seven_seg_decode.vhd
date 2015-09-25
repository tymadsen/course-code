
library ieee;
use ieee.std_logic_1164.all;

-- entity
entity seven_seg_decode is
	port(
		sw: in std_logic_vector(7 downto 0);
		btn: in std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0);
		dp: out std_logic;
		an: out std_logic_vector(3 downto 0)
	);
end seven_seg_decode;


-- architecture
architecture decoder of seven_seg_decode is
	signal decoder_in: std_logic_vector(3 downto 0);
begin
	-- 7 Segment Decoder block
	with decoder_in select
		seg <= 	"0000001" when "0000", --0
					"1001111" when "0001", --1
					"0010010" when "0010", --2
					"0000110" when "0011", --3
					"1001100" when "0100", --4
					"0100100" when "0101", --5
					"0100000" when "0110", --6
					"0001111" when "0111", --7
					"0000000" when "1000", --8
					"0000100" when "1001", --9
					"0001000" when "1010", --A
					"1100000" when "1011", --B
					"0110001" when "1100", --C
					"1000010" when "1101", --D
					"0110000" when "1110", --E
					"0111000" when "1111"; --F
	
	--BTN(3) asserted == Display value "8" and DP signal on all four digits.
	--BTN(2) is asserted, blank all segments and decimal points
	--ELSE:
	--BTN(1)='0' and BTN(0)='0': Display the hexadecimal value of the lower four switches (sw(3 downto 0))
		--on segment 0 (i.e., AN0)
	--BTN(1)='0' and BTN(0)='1': Display the hexadecimal value of the upper four switches (sw(7 downto 4))
		--on segment 1 (i.e., AN1)
	--BTN(1)='1' and BTN(0)='0': Display the hexadecimal value created by XOR'ing the lower four bits of
		--the switches with the upper four bits of the switches on segment 2 (i.e., AN2)	--BTN(1)='1' and BTN(0)='1': Display the hexadecimal value of the lower four switches (sw(3 downto 0))
		--"rotated right" by 2 on segment 3 (i.e., AN3). In other words, the four bit signal should be created by
		--organizing the switches in the following order (MSB first): sw(1), sw(0), sw(3), sw(2).
		dp <= "1";
		if(btn(3)='1') then
			decoder_in <= "1000";
			an <= "0000";
			dp <= "0";
		elsif(btn(2)='1') then
			an <= "1111";
		elsif(btn(1)='0' and btn(0)='0') then
			an <= "1110";
			decoder_in <= sw(3 downto 0);
		elsif(btn(1)='0' and btn(0)='1') then
			an <= "1101";
			decoder_in <= sw(7 downto 4);
		elsif(btn(1)='1' and btn(0)='0') then
			an <= "1011";
			decoder_in <= sw(7 downto 4) xor sw(3 downto 0);
		elsif(btn(1)='1' and btn(0)='1') then
			an <= "1000";
			decoder_in <= sw(1 downto 0) & sw(3 downto 2);
		endif;
	
end decoder;