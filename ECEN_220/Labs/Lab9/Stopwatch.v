`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:19 11/14/2013 
// Design Name: 
// Module Name:    Stopwatch 
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
/*CounterBlock(
	 input INC,
    input Reset,
    input CLK,
	 output [3:0] Q3, 
	 output [3:0] Q2,
	 output [3:0] Q1, 
	 output [3:0] Q0,
	 output ce
    );
	 Mod4(
    input INC,
    input Reset,
    input CLK,
    output Q1,
    output Q0
    );
	 SR(s, r, q, q_n);
	 
	 prog_timer (clk, reset, clken, load_number, counter, zero, tp)
	 segController47(
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
	 */
module Stopwatch(start, stop, Reset, CLK, Ca, 
						Cb, Cc, Cd ,Ce ,Cf ,Cg, 
						AN3, AN2, AN1, AN0, 
						DP, tp, tp2, zero, zero2);
    input start, stop, Reset, CLK;
    output Ca, Cb, Cc, Cd, Ce, Cf, Cg;
    output AN3, AN2, AN1, AN0, DP, tp, tp2, zero, zero2;
	 
	 wire [23:0] counter;
	 wire ce, q, nq;
	 wire [3:0] num1, num2, num3, num4;
	 wire [1:0] mod;
	 
	 SR sr(start, stop, q, nq);
	 
	 prog_timer timer(CLK, Reset, q, 24'd5000000, counter, zero, tp);
	
	 CounterBlock cb(zero, Reset, CLK, num4, num3, num2, num1, ce);
	 
	 segController47 ctrl(num1, num2, num3, num4, CLK, 1'b0, 1'b1, 
									1'b0, 1'b1, 1'b0, Ca, Cb, Cc, Cd, Ce, 
									Cf, Cg, AN0, AN1, AN2, AN3, DP, mod, zero2, tp2);

endmodule
