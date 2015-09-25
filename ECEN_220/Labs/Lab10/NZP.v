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
	 
	 assign pos = ~Buss[15];
	 assign zero = &(~Buss);

	ff_dce ff1(N, clk, ~pos, reset, flagWE);
	ff_dce ff2(Z, clk, zero, reset, flagWE);
	ff_dce ff3(P, clk, pos&~zero, reset, flagWE);
	
endmodule
