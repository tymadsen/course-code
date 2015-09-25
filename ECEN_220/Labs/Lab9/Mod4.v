`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:33 11/08/2013 
// Design Name: 
// Module Name:    Mod4 
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
/*
module FF_DC(q, clk, clr, d);
 input clk, clr, d;
output reg q;
*/
module Mod4(
    input INC,
    input Reset,
    input CLK,
    output Q1,
    output Q0
    );

	wire nReset, nINC, nQ1, nQ0, a0, a1, a2, b0, b1, D1, D0;
	
	not(nReset, Reset);
	not(nINC, INC);
	not(nQ1, Q1);
	not(nQ0, Q0);
	
	and(a0, nReset, nINC, Q1);
	and(a1, nReset, Q1, nQ0);
	and(a2, nReset, INC, nQ1, Q0);
	or(D1, a0, a1, a2);

	and(b0, nReset, nINC, Q0);
	and(b1, nReset, INC, nQ0);
	or(D0, b0, b1);
	
	FF_DC ff1(Q1, CLK, Reset, D1);
	FF_DC ff0(Q0, CLK, Reset, D0);
	
endmodule
