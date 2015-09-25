`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:34 11/20/2013 
// Design Name: 
// Module Name:    MARMux 
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
module MARMux(
    input [7:0] IR,
    input selMAR,
    input [15:0] eabOut,
    output [15:0] MARMuxOut
    );
	 
	 assign MARMuxOut = selMAR == 1'b0 ? eabOut : {{8{1'b0}}, IR};


endmodule
