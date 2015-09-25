`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:32 11/13/2013 
// Design Name: 
// Module Name:    SR 
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
module SR (s, r, q, q_n);
	input s, r;
	output q, q_n;
	
	assign q_n = ~(s | q);
	assign q = ~(r | q_n);
	
endmodule
