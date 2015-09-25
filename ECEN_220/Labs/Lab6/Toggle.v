`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:51 10/16/2013 
// Design Name: 
// Module Name:    Toggle 
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
module FlipFlop(q, clk, clr, d);
	input clk, clr, d;
	output reg q;
*/

module Toggle(
	 output Qout,
	 output Clk_out,
    input GCLK,
    input CLR
    );
	 
	 wire Q_not;
	 not(Q_not,Qout);
	 buf(Clk_out, GCLK);
	 FlipFlop FF(Qout,GCLK,CLR,Q_not);
	
endmodule
