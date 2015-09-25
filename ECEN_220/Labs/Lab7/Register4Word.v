`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:04 10/30/2013 
// Design Name: 
// Module Name:    Register4Word 
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
/*
module Decoder2_4(
    input Addr0,
    input Addr1,
    output Sel0,
    output Sel1,
    output Sel2,
    output Sel3
    );
	 
	 module Register4Bit(
    input [0:3] Din,
    input Write,
    input Clr,
    input Clk,
    output [0:3] Dout
    );
	 */
module Register4Word(
    input [0:3] Din,
    input Write,
    input Clk,
    input Clr,
    input Addr0,
    input Addr1,
    output [3:0] Reg_0,
    output [3:0] Reg_1,
    output [3:0] Reg_2,
    output [3:0] Reg_3
    );

	wire wReg0, wReg1, wReg2, wReg3, Sel0, Sel1, Sel2, Sel3;
	
	Decoder2_4 decoder(Addr0, Addr1, Sel0, Sel1, Sel2, Sel3);
	and(wReg3, Write, Sel3);
	and(wReg2, Write, Sel2);
	and(wReg1, Write, Sel1);
	and(wReg0, Write, Sel0);
	
	Register4Bit reg3(Din,wReg3,Clk,Clr,Reg_3);
	Register4Bit reg2(Din,wReg2,Clk,Clr,Reg_2);
	Register4Bit reg1(Din,wReg1,Clk,Clr,Reg_1);
	Register4Bit reg0(Din,wReg0,Clk,Clr,Reg_0);

endmodule
