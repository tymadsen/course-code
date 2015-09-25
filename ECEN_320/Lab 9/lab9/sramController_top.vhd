----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:45 03/07/2015 
-- Design Name: 
-- Module Name:    sramController_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sramController_top is
	 Generic ( CLK_RATE : NATURAL := 50_000_000; POWER_DELAY : NATURAL := 150);
	 Port ( clk : in  STD_LOGIC;
			  btn : in STD_LOGIC_VECTOR(3 downto 0);
			  sw : in STD_LOGIC_VECTOR(7 downto 0);
           MemAdr : out  STD_LOGIC_VECTOR (22 downto 0);
           MemOE : out  STD_LOGIC;
           MemWR : out  STD_LOGIC;
           RamCS : out  STD_LOGIC;
           RamLB : out  STD_LOGIC;
           RamUB : out  STD_LOGIC;
           RamCLK : out  STD_LOGIC;
           RamADV : out  STD_LOGIC;
           RamCRE : out  STD_LOGIC;
			  seg : out  STD_LOGIC_VECTOR (6 downto 0);
			  dp : out  STD_LOGIC;
			  an : out  STD_LOGIC_VECTOR (3 downto 0);
			  led0 : out STD_LOGIC;
			  led1 : out STD_LOGIC;
			  MemDB : inout  STD_LOGIC_VECTOR (15 downto 0));
end sramController_top;

architecture Behavioral of sramController_top is
	--Functions
	function log2c(n:integer) return integer is
		variable m,p:integer;
	begin
		m := 0;
		p := 1;
		while p < n loop
			m := m+1;
			p := p*2;
		end loop;
		return m;
	end log2c;
	
	-- Component instantionation for the ChipScope Controller (ICON)
	component chipscope_icon
		port (
			CONTROL0 : inout std_logic_vector(35 downto 0)
		);
	end component;
	-- Component instantionation for the ChipScope Internal Logic Analyzer
	component chipscope_ila
		port (
			CONTROL	: inout std_logic_vector(35 downto 0);
			CLK	:  in  std_logic;
			TRIG0	:  in std_logic_vector(31 downto 0)
		);
	end component;
	
	--Constants
	constant COUNTER_MAX_VAL: NATURAL := CLK_RATE/100 - 1;
	constant COUNTER_BITS: NATURAL := log2c(COUNTER_MAX_VAL);
	--Signals
	signal count_reg, count_next : UNSIGNED(COUNTER_BITS-1 downto 0);
	signal addr : STD_LOGIC_VECTOR(22 downto 0);
	signal data_m2s, data_s2m : STD_LOGIC_VECTOR(15 downto 0);
	signal AR, AR_next : STD_LOGIC_VECTOR(7 downto 0);
	signal IDR, IDR_next : STD_LOGIC_VECTOR(7 downto 0);
	signal anode, debounced : STD_LOGIC_VECTOR(3 downto 0);
	signal mem, rw, rst, en_sample, ready_led, valid_led : STD_LOGIC;
	signal ctl : STD_LOGIC_VECTOR(35 downto 0);
	signal trigger : STD_LOGIC_VECTOR(31 downto 0);
	
begin
	control : entity work.sramController
		generic map(CLK_RATE=>CLK_RATE, POWER_DELAY=>POWER_DELAY)
		port map (clk=>clk,rst=>rst,addr=>addr,data_m2s=>data_m2s,
           mem=>mem,rw=>rw,data_s2m=>data_s2m,data_valid=>valid_led,
           ready=>ready_led,MemAdr=>MemAdr,MemOE=>MemOE,MemWR=>MemWR,
           RamCS=>RamCS,RamLB=>RamLB,RamUB=>RamUB,RamCLK=>RamCLK,
           RamADV=>RamADV,RamCRE=>RamCRE,MemDB=>MemDB);
	seven_seg_ctl : entity work.seven_segment_control
		Generic map(COUNTER_BITS=>15)
		Port map(clk=>clk,data_in=>data_s2m,dp_in=>"0000",blank=>"0000",
					seg=>seg,dp=>dp,an=>anode);
	
	--  ICON core instance
	ICON_inst:  chipscope_icon
	port map (CONTROL0 => ctl);
	--  ILA core instance
	ILA_inst : chipscope_ila
	port map (
		CONTROL	=> ctl,
		CLK	=> clk,	
		TRIG0	=> trigger
	);
	--trigger signal
	trigger <= "00000000" & data_s2m & anode & mem & rw & ready_led & valid_led;
	
	--Global Reset
	rst <= '1' when btn = "1111" else
				'0';
	--Debounce clock
	process(clk, rst, en_sample)
	begin
		if(rst='1') then
			AR <= (others=>'0');
			IDR <= (others=>'0');
			count_reg <= (others=>'0');
			debounced <= (others=>'0');
		elsif(clk'event and clk='1') then
			AR <= AR_next;
			IDR <= IDR_next;
			if(en_sample='1') then
				debounced <= btn;
			end if;
			count_reg <= count_next;
		end if;
	end process;
	--Next state logic
	count_next <= (others=>'0') when count_reg = COUNTER_MAX_VAL else
						count_reg+1;
	AR_next <= sw when debounced(0)='1' else AR;
	IDR_next <= sw when debounced(1)='1' else IDR;
	-- Enable button read
	en_sample <= '1' when count_reg = COUNTER_MAX_VAL else
						'0';
	--Output logic
	addr <= "0000"&"0000"&"0000"&"000"&AR;
	data_m2s <= IDR&IDR;
	rw <= '0' when debounced(2)='1' else --write 
			'1';-- else read 
	mem <= '0' when debounced(3)='1' or debounced(2)='1' else
				'1';
	led0 <= ready_led;
	led1 <= valid_led;
	an <= anode;
end Behavioral;

