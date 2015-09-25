`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:46 10/30/2013 
// Design Name: 
// Module Name:    Register4Word4Bit 
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
module Register4Word(
    input [0:3] Din,
    input Write,
    input Clk,
    input Clr,
    input Addr0,
    input Addr1,
    output [0:3] Reg_0,
    output [0:3] Reg_1,
    output [0:3] Reg_2,
    output [0:3] Reg_3
    );
	 
	 module mux16_4(result, sel, Din3, Din2, Din1, Din0);
	 */
module Register4Word4Bit(
    input [3:0] Din,
    input Write,
    input Clk,
    input Clr,
    input Addr0,
    input Addr1,
    input [1:0] ReadAddr,
    output [3:0] RegFile_out,
	 output [3:0] Din_led
    );
	 
	 wire [3:0] Reg_0, Reg_1, Reg_2, Reg_3;
	 
	 Register4Word fourWordReg(Din, Write, Clk, Clr, Addr0, Addr1, Reg_0, Reg_1, Reg_2, Reg_3);
	 mux16_4 mux(RegFile_out, ReadAddr, Reg_3, Reg_2, Reg_1, Reg_0);
	 buf(Din_led[3],Din[3]);
	 buf(Din_led[2],Din[2]);
	 buf(Din_led[1],Din[1]);
	 buf(Din_led[0],Din[0]);

endmodule
