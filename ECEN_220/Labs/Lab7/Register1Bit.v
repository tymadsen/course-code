`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:47 10/25/2013 
// Design Name: 
// Module Name:    register 
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
// module fd_c(q, clk, d, clr);
//////////////////////////////////////////////////////////////////////////////////
module Register1Bit(
    input Din,
    input Write,
    input Clk,
    input Clr,
    output Dout
    );
	 
	 wire d,q;
	 
	 fd_c flipflop(q,Clk,d,Clr);
	 MUX21 mux(d,Write,q,Din);
	 assign Dout=q;

endmodule
