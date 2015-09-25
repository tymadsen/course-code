--=============================
-- Listing 9.16 fifo controller
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library unisim;
use unisim.VCOMPONENTS.all;

entity fifo_sync_ctrl4 is
   port(
      clk, reset: in std_logic;
      wr, rd: in std_logic;
      w_data : in std_logic_vector(7 downto 0);
      full, empty: out std_logic;
      w_addr, r_addr: out std_logic_vector(10 downto 0);
      r_data : out std_logic_vector(7 downto 0)
   );
end fifo_sync_ctrl4;

architecture enlarged_bin_arch of fifo_sync_ctrl4 is
   ----- component RAMB16_S9_S9 -----
	component RAMB16_S9_S9
		port (
			DOA : out std_logic_vector(7 downto 0);
			DOB : out std_logic_vector(7 downto 0);
			DOPA : out std_logic_vector(0 downto 0);
			DOPB : out std_logic_vector(0 downto 0);
			ADDRA : in std_logic_vector(10 downto 0);
			ADDRB : in std_logic_vector(10 downto 0);
			CLKA : in std_ulogic;
			CLKB : in std_ulogic;
			DIA : in std_logic_vector(7 downto 0);
			DIB : in std_logic_vector(7 downto 0);
			DIPA : in std_logic_vector(0 downto 0);
			DIPB : in std_logic_vector(0 downto 0);
			ENA : in std_ulogic;
			ENB : in std_ulogic;
			SSRA : in std_ulogic;
			SSRB : in std_ulogic;
			WEA : in std_ulogic;
			WEB : in std_ulogic
		);
	end component;
	constant N: natural:=11;
   signal w_ptr_reg, w_ptr_next: unsigned(N downto 0);
   signal r_ptr_reg, r_ptr_next: unsigned(N downto 0);
   signal full_flag, empty_flag: std_logic;
   signal wr_enable : std_logic;
begin
	bram: RAMB16_S9_S9
	port map(DOA=>(others=>'0'),DOB=>r_data,DOPA=>open,DOPB=>open,ADDRA=>w_adder,ADDRB=>r_addr,
				CLKA=>clk,CLKB=>clk,DIA=>w_data,DIB=>(others=>'1'),DIPA=>open,DIPB=>open,
				ENA=>'1',ENB=>'1',SSRA=>reset,SSRB=>reset,WEA=>wr_enable,WEB=>'1');
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         w_ptr_reg <= (others=>'0');
         r_ptr_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         w_ptr_reg <= w_ptr_next;
         r_ptr_reg <= r_ptr_next;
      end if;
   end process;
   -- write pointer next-state logic
   w_ptr_next <=
      w_ptr_reg + 1 when wr='1' and full_flag='0' else
      w_ptr_reg;
   full_flag <=
      '1' when r_ptr_reg(N) /=w_ptr_reg(N) and
             r_ptr_reg(N-1 downto 0)=w_ptr_reg(N-1 downto 0)
          else
      '0';
   -- write port output
   w_addr <= std_logic_vector(w_ptr_reg(N-1 downto 0));
   full <= full_flag;
   -- read pointer next-state logic
   r_ptr_next <=
      r_ptr_reg + 1 when rd='1' and empty_flag='0' else
      r_ptr_reg;
   empty_flag <= '1' when r_ptr_reg=w_ptr_reg else
                 '0';
   -- read port output
   r_addr <= std_logic_vector(r_ptr_reg(N-1 downto 0));
   empty <= empty_flag;
end enlarged_bin_arch;