`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:45 11/20/2013 
// Design Name: 
// Module Name:    RegFile 
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
//module register(dout, clk, din, reset, load);
module RegFile(
    input [2:0] DR,
    input [2:0] SR1,
    input [2:0] SR2,
    input regWE,
    input clk,
    input reset,
    input [15:0] Buss,
    output [15:0] Ra,
    output [15:0] Rb
    );
	 
	 wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7;
							
	 register reg0(R0, clk, Buss, reset, (regWE & DR == 3'b000));
	 register reg1(R1, clk, Buss, reset, (regWE & DR == 3'b001));
	 register reg2(R2, clk, Buss, reset, (regWE & DR == 3'b010));
	 register reg3(R3, clk, Buss, reset, (regWE & DR == 3'b011));
	 register reg4(R4, clk, Buss, reset, (regWE & DR == 3'b100));
	 register reg5(R5, clk, Buss, reset, (regWE & DR == 3'b101));
	 register reg6(R6, clk, Buss, reset, (regWE & DR == 3'b110));
	 register reg7(R7, clk, Buss, reset, (regWE & DR == 3'b111));
	 
	 assign Ra = 	SR1 == 3'b000 ? R0 :
						SR1 == 3'b001 ? R1 :
						SR1 == 3'b010 ? R2 :
						SR1 == 3'b011 ? R3 :
						SR1 == 3'b100 ? R4 :
						SR1 == 3'b101 ? R5 :
						SR1 == 3'b110 ? R6 :
						R7;
	 assign Rb = 	SR2 == 3'b000 ? R0 :
						SR2 == 3'b001 ? R1 :
						SR2 == 3'b010 ? R2 :
						SR2 == 3'b011 ? R3 :
						SR2 == 3'b100 ? R4 :
						SR2 == 3'b101 ? R5 :
						SR2 == 3'b110 ? R6 :
						R7;

endmodule
