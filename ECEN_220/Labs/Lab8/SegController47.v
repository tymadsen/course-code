`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:55 11/08/2013 
// Design Name: 
// Module Name:    segController47 
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
module segController47(
    input [3:0] Digit1,
    input [3:0] Digit2,
    input [3:0] Digit3,
    input [3:0] Digit4,
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
	
	wire [23:0] counter;
	prog_timer timer(clk, reset, 1'b1, 24'd250000, counter, zero, tp);
	
	Mod4 mod(zero, reset, clk, Mod[1], Mod[0]);
	
	wire [3:0] number;
	mux16_4 mux16(number, Mod, Digit1, Digit2, Digit3, Digit4);
	
	SEVEN_SEG_DECODER decoder(.N3(number[3]), .N2(number[2]), .N1(number[1]), .N0(number[0]), .A(Ca), .B(Cb), .C(Cc), .D(Cd), .E(Ce), .F(Cf), .G(Cg));
	
	Decoder2_4 decoder24(Mod[0], Mod[1], AN0, AN1, AN2, AN3);
	
	MUX41 dpmux(DP, Mod, {Dp3,Dp2,Dp1,Dp0});
	
	

endmodule
