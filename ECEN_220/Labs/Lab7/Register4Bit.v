`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:21 10/30/2013 
// Design Name: 
// Module Name:    Register4Bit 
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
//  input Din,
//  input Write,
//  input Clk,
//  input Clr,
//  output Dout
//////////////////////////////////////////////////////////////////////////////////
module Register4Bit(
    input [3:0] Din,
    input Write,
	 input Clk,
    input Clr,
    output [3:0] Dout
    );

	Register1Bit r0(Din[0], Write, Clk, Clr, Dout[0]);
	Register1Bit r1(Din[1], Write, Clk, Clr, Dout[1]);
	Register1Bit r2(Din[2], Write, Clk, Clr, Dout[2]);
	Register1Bit r3(Din[3], Write, Clk, Clr, Dout[3]);

endmodule
