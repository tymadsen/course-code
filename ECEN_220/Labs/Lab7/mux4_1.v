`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:19 10/30/2013 
// Design Name: 
// Module Name:    mux4_1 
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
 module mux4_1(result, sel, Din);
        input[1:0] sel;
        input[3:0] Din;
        output result;

        wire r0,r1;

        mux2_1 m0(r0, sel[0], Din[0], Din[1]);
		  mux2_1 m1(r1, sel[0], Din[2], Din[3]);
		  mux2_1 m2(result, sel[1], r0, r1);

    endmodule
