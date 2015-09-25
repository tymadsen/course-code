---------------------------------
-- Problem 1 DCM ----------------
---------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library	unisim;
use	unisim.vcomponents.all;
--use IEEE.NUMERIC_STD.ALL;

entity dcm_hw is
    Port ( GCLK : in  STD_LOGIC;
			  RST : in STD_LOGIC;
           LSGCN0 : out  STD_LOGIC;
			  LSGCN90 : out  STD_LOGIC;
			  LSGCN2X : out  STD_LOGIC;
			  LOCKED: out STD_LOGIC);
end dcm_hw;

architecture Behavioral of dcm_hw is
	signal CLKFB, CLK0, CLK90, CLK2X, CLKIN: STD_LOGIC;
begin
	-- DCM instantiation
	my_dcm :DCM
		port map(CLK0=>CLK0, CLK90=>CLK90, CLK2X=>CLK2X, 
				CLKIN=>CLKIN, CLKFB=>CLKFB, RST=>RST, LOCKED=>LOCKED);
	-- IBUFG Instantiation
	ibufg0 :IBUFG
		port map(O=>CLKIN,I=>GCLK);
	-- BUFG for CLK0 Instantiation
	bufg0 :BUFG
		port map(O=>CLKFB,I=>CLK0);
	LSGCN0 <= CLKFB;
	-- BUFG for CLK90 Instantiation
	bufg90 :BUFG
		port map(O=>LSGCN90,I=>CLK90);
	-- BUFG for CLK2X Instantiation
	bufg2x :BUFG
		port map(O=>LSGCN2X,I=>CLK2X);
end Behavioral;



/*****************************/
/** Verilog Problem 5.8 - 1 **/
/*****************************/
module even_detector(a, even);
   input [2:0] a;
   output even;
	wire p1 , p2 , p3 , p4 ;
	assign even = (p1 | p2 ) | (p3 | p4 );
	assign p1 = (~a[0]) & (~a[1]) & (~a[2]);
	assign p2 = (~a[0]) & a[1] & a[2];
	assign p3 = a[0] & (~a[1]) & a[2];
	assign p4 = a[0] & a[1] & (~a[2]);
endmodule

/*****************************/
/** Verilog Problem 5.8 - 2 **/
/*****************************/
module mux4_1(x,in,s);
	input [3:0] in;
	input [1:0] s;
	output x;
	reg out;
	always @(s or in)
		out=in[s];
	assign x = out;
endmodule


/*****************************/
/** Verilog Problem 5.8 - 3 **/
/*****************************/
module Decoder2_4(sel, addr);
	input [1:0] addr;
	output [3:0] sel;
	wire [3:0] out;
	reg [3:0] s;
	always @(addr)
	begin
		case(addr)
			2'b00: s<=4'b0111;
			2'b01: s<=4'b1011;
			2'b10: s<=4'b1101;
			default: s<=4'b1110;
		endcase
	end
	assign sel = s;
endmodule

/*****************************/
/** Verilog Problem 5.8 - 4 **/
/*****************************/
module MRRC(y, a, amt);
	input [7:0] a;
	input [2:0] amt;
	output [7:0] y;
	reg [7:0] le0_out, le1_out, le2_out;
	always @(amt)
	begin
		//level 0, shift 0 or 1 bit
		if(amt[0] == 1'b1)
			le0_out <= {a[0],a[7:1]};
		else
			le0_out <= a;	
		//level 1, shift 0 or 2 bits
		if(amt[1] == 1'b1)
			le1_out <= {le0_out[1:0],le0_out[7:2]};
		else
			le1_out <= le0_out;
		//level 2, shift 0 or 4 bits
		if(amt[2] == 1'b1)
			le2_out <= {le1_out[3:0],le1_out[7:4]};
		else
			le2_out <= le1_out;
	end
	assign y = le2_out;
endmodule

/*****************************/
/** Verilog Problem 5.9 - 1 **/
/*****************************/
module timer(sec, min, clk, reset);
	input clk, reset;
   output [5:0] sec, min;
	reg s_en, m_en;
   reg [5:0] s_reg, m_reg, s_next, m_next;
	reg [19:0] r_reg, r_next;
   // register
   always @ (negedge reset or posedge clk)
   begin
      if (reset)
		begin
         r_reg <= 20'b0;
         s_reg <= 6'b0;
         m_reg <= 6'b0;
		end
      else
		begin
         r_reg <= r_next;
         s_reg <= s_next;
         m_reg <= m_next;
		end
   end
   // next-state logic/output logic for mod-1000000 counter
	always @ (r_reg)
	begin
		if (r_reg==20'd999999)
			r_next <= 11'b0;
		else
			r_next <= r_reg+1;
		if (r_reg == 20'd500000)
			s_en <= 1'b1;
		else
			s_en <= 1'b0;
	end
   // next state logic/output logic for second divider
	always @ (s_reg or s_en)
	begin
		if (s_en==1'b1)
			if (s_reg==6'd59)
				s_next <= 6'b0;
			else if (s_reg==6'd30)
				m_en <= 1'b1;
			else
				s_next <= s_reg+1;
		else
		begin
			m_en <= 1'b0;
			s_next <= s_reg;
		end
   end
   // next-state logic for minute divider
	always @ (m_reg or m_en)
	begin
		if (m_en==1'b1)
			if (m_reg==6'd59)
				m_next <= 6'b0;
			else 
				m_next <= m_reg+1;
		else 
			m_next <= m_reg;
	end
   // output logic
   assign sec = s_reg;
   assign min = m_reg;
endmodule

/*****************************/
/** Verilog Problem 5.9 - 2 **/
/*****************************/
module edge_detector1(p1, clk, reset, strobe);
	input clk, reset, strobe;
	output p1;
   localparam zero=0, edg=1, one=2;
   reg [1:0] state_reg, state_next;
   // state register
   always @ (posedge clk or negedge reset)
   begin
      if (reset)
         state_reg <= zero;
      else
         state_reg <= state_next;
   end
   // next-state logic
   always @ (state_reg or strobe)
   begin
      case(state_reg)
			zero:
            if (strobe==1'b1)
               state_next <= edg;
            else
               state_next <= zero;
         edg:
            if (strobe==1'b1)
					state_next <= one;
            else
               state_next <= zero;
         one:
            if (strobe==1'b1)
               state_next <= one;
            else
               state_next <= zero;
      endcase
	end
   // Moore output logic
	
   assign p1 = state_reg==edg ? 1'b1 : 1'b0;
endmodule
