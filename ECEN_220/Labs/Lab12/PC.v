`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:42 11/20/2013 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input ldPC,
    input clk,
    input reset,
    input [1:0] selPC,
    input [15:0] Buss,
    input [15:0] eabOut,
    output [15:0] PC
    );
	 
	 wire [15:0] muxOut;
	 
	 assign muxOut = selPC == 2'b00 ? (PC + {{15{1'b0}}, 1'b1}) :
							selPC == 2'b01 ? eabOut :
							selPC == 2'b10 ? Buss :
							PC;
	 
	 register PCReg(PC, clk, muxOut, reset, ldPC);


endmodule
