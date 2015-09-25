`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:32 10/25/2013 
// Design Name: 
// Module Name:    fd_c 
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
module fd_c(q, clk, d, clr);
	input clk, clr, d;
	output reg q;
	always @(negedge clk)
	if (clr) q <= 0;
	else q <= d;
endmodule
