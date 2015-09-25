`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:55 11/20/2013 
// Design Name: 
// Module Name:    IR 
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
//module register(dout, clk, din, reset, load);
module IR(
    input ldIR,
    input clk,
    input reset,
    input [15:0] Buss,
    output [15:0] IR
    );
	 
	 register IRReg(IR, clk, Buss, reset, ldIR);
	 
endmodule
