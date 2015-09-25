`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:09 12/11/2013 
// Design Name: 
// Module Name:    register_15 
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
module register_15(dout, clk, din, reset, load);

	input clk, reset, load;
	input [14:0] din;
	output reg [14:0] dout;

	always @(posedge clk)
	 if (reset) dout <= 15'd1;
	else if (load) dout <= din;
endmodule
