`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:09 04/13/2015 
// Design Name: 
// Module Name:    hw13 
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

module even_detector (a , even );
	input [2:0] a;
	output even ;
	wire p1 , p2 , p3 , p4 ;
	assign even = (p1 | p2 ) | (p3 | p4 );
	assign p1 = (˜ a [ 0 ] ) & (˜ a [ 1 ] ) & (˜ a [ 2 ] ) ;
	assign p2 = (˜ a [ 0 ] ) & a [ 1] & a [ 2 ] ;
	assign p3 = a [ 0] & (˜ a [ 1 ] ) & a [ 2 ] ;
	assign p4 = a [ 0] & a [ 1] & (˜ a [ 2 ] ) ;
endmodule
