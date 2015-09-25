`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:58 10/09/2013 
// Design Name: 
// Module Name:    FourBitALU 
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
/*module OneBitALU(
    input A,
    input B,
    input Cin,
    input [1:0] control,
    output Result,
    output Cout
    );*/
module FourBitALU(
    input [3:0] A,
    input [3:0] B,
    input Cin,
	 input [1:0] control,
    output [3:0] Result,
    output Cout
    );
	 wire Cout1,Cout2,Cout3,R1,R2,R3,R4;
	 OneBitALU A0(A[0],B[0],1'b0,control,R1,Cout1);
	 OneBitALU A1(A[1],B[1],Cout1,control,R2,Cout2);
	 OneBitALU A2(A[2],B[2],Cout2,control,R3,Cout3);
	 OneBitALU A3(A[3],B[3],Cout3,control,R4,Cout);
	 assign Result[0] = R1;
	 assign Result[1] = R2;
	 assign Result[2] = R3;
	 assign Result[3] = R4;

endmodule
