`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:48 11/13/2013 
// Design Name: 
// Module Name:    CounterBlock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CounterBlock(
	 input INC,
    input Reset,
    input CLK,
	 output [3:0] Q3, 
	 output [3:0] Q2,
	 output [3:0] Q1, 
	 output [3:0] Q0,
	 output ce
    );
	 
	 wire ce1, ce2, ce3;
	 
	 MOD10 mod1(INC, Reset, CLK, Q3[3], Q3[2], Q3[1], Q3[0], ce1);
	 MOD10 mod2(ce1, Reset, CLK, Q2[3], Q2[2], Q2[1], Q2[0], ce2);
	 MOD6 mod3(ce2, Reset, CLK, Q1[2], Q1[1], Q1[0], ce3);
	 assign Q1[3] = 1'b0; 
	 MOD10 mod4(ce3, Reset, CLK, Q0[3], Q0[2], Q0[1], Q0[0], ce);

endmodule
