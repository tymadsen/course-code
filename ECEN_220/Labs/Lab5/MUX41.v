`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:09 10/09/2013 
// Design Name: 
// Module Name:    MUX41 
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
module MUX41(
    input A,
    input Sum,
    input AandB,
    input Anot,
    input [1:0] control,
    output Result
    );
	wire out;
	
	assign Result= control == 2'b00 ? A :
						control == 2'b01 ? Sum :
						control == 2'b10 ? AandB :
						Anot;

endmodule
