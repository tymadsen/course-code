`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:50 12/10/2013 
// Design Name: 
// Module Name:    FullLC3 
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
module FullLC3(
    input clk,
    input reset
    );
	 
	 wire N, Z, P, enaALU, regWE, enaMARM, selMAR, selEAB1, enaPC, ldPC, ldIR, ldMDR, selMDR, memWE, flagWE, enaMDR;
	 wire [1:0] aluControl, selPC, selEAB2;
	 wire [2:0] SR1, SR2, DR;
	 wire [15:0] IR;
	 
	 LC3Controller control(IR, N, Z, P, reset, clk, aluControl, enaALU, SR1, 
		SR2, DR, regWE, selPC, enaMARM, selMAR, selEAB1, selEAB2, enaPC, 
		ldPC, ldIR, ldMAR, ldMDR,selMDR, memWE, flagWE, enaMDR);
	
	 
	 Datapath path(clk, reset, aluControl, enaALU, SR1, 
		SR2, DR, regWE, selPC, enaMARM, selMAR, selEAB1, selEAB2, enaPC, 
		ldPC, ldIR, ldMAR, ldMDR, selMDR, memWE, flagWE, enaMDR, N, Z, P, IR);
	 


endmodule
