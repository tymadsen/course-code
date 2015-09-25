--=============================
-- Problem 16.15 talker FSM
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity talker_fsm is
   generic (
	  TALKER_WAIT : NATURAL := 1; --For equal clocks (a)
	  TALKER_WAIT : NATURAL := 0; --For receiver 4 times faster (b)
	  TALKER_WAIT : NATURAL := 5 --For reciever 4 times slower (c)
   );
   port(
      clk, reset: in std_logic;
      start: in std_logic;
      ready: out std_logic;
      req_out: out std_logic
   );
end talker_fsm;

architecture arch of talker_fsm is
   CONSTANT HOLD_TIME := unsigned(TALKER_WAIT, 4);
   type t_state_type is (idle, wait_sync);
   signal state_reg, state_next: t_state_type;
   signal req_buf_reg, req_buf_next: std_logic;
   signal counter_reg, counter_next : unsigned(3 downto 0);
begin
   -- state register and output buffer
   process(clk,reset)
   begin
      if (reset='1') then
         state_reg <= idle;
         req_buf_reg <='0';
		 counter_reg <= (others=>'0');
     elsif (clk'event and clk='1') then
        state_reg <= state_next;
        req_buf_reg <=req_buf_next;
		counter_reg <= counter_next;
     end if;
   end process;
   -- next-state logic
   process(state_reg,start,count_reg)
   begin
      ready <='0';
      state_next <= state_reg;
	  counter_next <= counter_reg;
      case state_reg is
         when idle =>
            if start='1' then
			   counter_next <= (others=>'0');--reset timer
               state_next <= wait_sync;
            end if;
            ready <= '1';
         when wait_sync =>
			counter_next <= counter_reg + 1;
			if counter_reg = HOLD_TIME then
				state_next <= idle;
			end if;
      end case;
   end process;
   -- look-ahead output logic
   process(state_next)
   begin
      case state_next is
         when idle =>
            req_buf_next <= '0';
         when wait_sync =>
            req_buf_next <= '1';
      end case;
   end process;
   req_out<= req_buf_reg;
end arch;
--=============================
-- Problem 16.15 Listener 
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity listener_fsm is
   port(
      clk, reset: in std_logic;
      req_sync: in std_logic
   );
end listener_fsm;

architecture arch of listener_fsm is
   signal reg_en: std_logic; -- signal to latch data. Not really needed but idk how we are saving data.
begin
   -- state register and output buffer
   process(clk,reset)
   begin
      if (reset='1') then
         reg_en <='0';
      elsif (clk'event and clk='1') then
		 reg_en <= en_next;
      end if;
   end process;
   reg_en <= '1' when req_sync='1' else
			'0';
end arch;