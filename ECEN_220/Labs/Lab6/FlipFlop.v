`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:59 10/16/2013 
// Design Name: 
// Module Name:    ToggleCircuit 
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
module FlipFlop(q, clk, clr, d);
	input clk, clr, d;
	output reg q;

	always @(posedge clk)
		 if (clr) q <= 0;
		 else q <= d;

endmodule
