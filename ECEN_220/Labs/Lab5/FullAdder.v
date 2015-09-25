`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:31 10/09/2013 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
	wire An,Bn,Cn,ABnCn,AnBnC,ABC,AnBCn,CB,AB,AC;
	 
	not(An,A);
	not(Bn,B);
	not(Cn,Cin);
	and(ABnCn,A,Bn,Cn);
	and(AnBnC,An,Bn,Cin);
	and(ABC,A,B,Cin);
	and(AnBCn,An,B,Cn);
	or(Sum,ABnCn,AnBnC,ABC,AnBCn);

	and(AB,A,B);
	and(AC,A,Cin);
	and(CB,Cin,B);
	or(Cout,AB,AC,CB);

endmodule
