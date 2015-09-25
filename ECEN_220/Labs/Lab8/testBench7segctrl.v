`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:40 11/08/2013 
// Design Name: 
// Module Name:    testBench7segctrl 
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
module testBench7segctrl(
    input clk,
    input reset,
    input Dp0,
    input Dp1,
    input Dp2,
    input Dp3,
    output Ca,
    output Cb,
    output Cc,
    output Cd,
    output Ce,
    output Cf,
    output Cg,
    output AN0,
    output AN1,
    output AN2,
    output AN3,
    output DP,
    output [1:0] Mod,
    output tp,
    output zero
    );
    
	 segController47 controller(4'b0001, 4'b1010, 4'b1011, 4'b1000, clk, reset, ~Dp0, ~Dp1, ~Dp2, ~Dp3, Ca, Cb, Cc, Cd, Ce, Cf, Cg, AN0, AN1, AN2, AN3, DP, Mod, tp, zero);


endmodule
