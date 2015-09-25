`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:20 11/13/2013 
// Design Name: 
// Module Name:    MOD6 
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

//module FF_DCE(q, clk, d, clr, en);
module MOD6(
    input INC,
    input Reset,
    input CLK,
	 output Q2,
    output Q1,
    output Q0,
	 output ce
    );
	 
	wire D0,D1,D2,tempce;

	assign D2 = ~Reset & (INC & ((Q2 & ~Q0)|(Q1 & Q0)));
	
	assign D1 = ~Reset & (INC & ((~Q2 & ~Q1 & Q0)|(Q1 & ~Q0)));

	assign D0 = ~Reset & (INC & ~Q0);

	assign tempce = Q2 & ~Q1 & Q0;
	
	FF_DCE ff0(Q0, CLK, D0, Reset, INC);
	FF_DCE ff1(Q1, CLK, D1, Reset, INC);
	FF_DCE ff2(Q2, CLK, D2, Reset, INC);
	
	assign ce = Q2 & ~Q1 & Q0 & ~Reset & INC;

endmodule
