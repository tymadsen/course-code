`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:32 10/30/2013 
// Design Name: 
// Module Name:    mux2_1 
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
module mux2_1(
    output q,
    input sel,
    input a,
    input b
    );
	
	wire selbar, a1, a2;
	not(selbar, sel);
	and(a1, selbar, a);
	and(a2, sel, b);
	or(q, a1, a2);

endmodule
