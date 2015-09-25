`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:24 10/09/2013 
// Design Name: 
// Module Name:    OneBitALU 
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
/*module MUX41(
    input A,
    input Sum,
    input AandB,
    input Anot,
    input [1:0] control,
    output Result
    );*/
/*module FullAdder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );*/
module OneBitALU(
    input A,
    input B,
    input Cin,
    input [1:0] control,
    output Result,
    output Cout
    );
	wire FASum, FACout,AandB,Anot;
	and(AandB,A,B);
	not(Anot,A);
	FullAdder FullAdd(A,B,Cin,FASum,FACout);
	assign Cout = control == 2'b01 ? FACout : 0;
	MUX41 Multiplexor(A,FASum,AandB,Anot,control,Result);

endmodule
