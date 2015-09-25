`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:49 11/20/2013 
// Design Name: 
// Module Name:    NZP 
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
//module ff_dce(q, clk, d, reset, en);
module NZP(
    input [15:0] Buss,
    input reset,
    input clk,
    input flagWE,
    output N,
    output Z,
    output P
    );
	 
	 wire pos, zero;
	 
	 assign zero = &(~Buss);
	 assign pos = (Buss[15] == 1'b0 && ~zero)?1:0;
	 assign neg = (Buss[15] == 1'b1)?1:0;
	 

	ff_dce ff1(N, clk, neg, reset, flagWE);
	ff_dce ff2(Z, clk, zero, reset, flagWE);
	ff_dce ff3(P, clk, pos, reset, flagWE);
	
endmodule
