`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:00 11/20/2013 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] Ra,
    input [15:0] Rb,
    input [5:0] IR,
    input [1:0] aluControl,
    output [15:0] aluOut
    );
	 
	 wire [15:0] opA;
	 
	 assign opA = (IR[5] == 1'b0) ? Rb : {{11{IR[4]}}, IR[4:0]};
	
	 assign aluOut = 	aluControl == 2'b00 ? Ra :
							aluControl == 2'b01 ? (Ra + opA) :
							aluControl == 2'b10 ? (Ra & opA) :
							~Ra;
endmodule
