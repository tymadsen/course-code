`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:45 10/30/2013 
// Design Name: 
// Module Name:    mux16_4 
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
module mux16_4(result, sel, Din3, Din2, Din1, Din0);
        input[0:1] sel;                                              // 2 select line
        input[3:0] Din3, Din2, Din1, Din0;                // 4 4-bit values come in as inputs
        output[3:0] result;                                        // 4-bit output

            // Select which bits of which input gets passed to which of the 4-bit muxes
        //MUX41 M3(result[3], sel, {Din3[3], Din2[3], Din1[3], Din0[3]});
        //MUX41 M2(result[2], sel, {Din3[2], Din2[2], Din1[2], Din0[2]});
        //MUX41 M1(result[1], sel, {Din3[1], Din2[1], Din1[1], Din0[1]});
        //MUX41 M0(result[0], sel, {Din3[0], Din2[0], Din1[0], Din0[0]});
		  
		  //assign result = {Din3[~sel], Din2[~sel], Din1[~sel], Din0[~sel]};
		  assign result = (sel == 2'b00) ? Din0:
								(sel == 2'b01) ? Din1:
								(sel == 2'b10) ? Din2:
								Din3;
endmodule
