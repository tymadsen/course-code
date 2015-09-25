`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:29 10/30/2013 
// Design Name: 
// Module Name:    Decoder2_4 
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
module Decoder2_4(
    input Addr0,
    input Addr1,
    output Sel0,
    output Sel1,
    output Sel2,
    output Sel3
    );
	
	//wire nAddr0, nAddr1, nSel0, nSel1, nSel2, nSel3;
	
	//not(nAddr0,Addr0);
	//not(nAddr1, Addr1);
	//and(nSel3,Addr0,Addr1);
	//and(nSel2,nAddr0,Addr1);
	//and(nSel1,Addr0,nAddr1);
	//and(nSel0,nAddr0,nAddr1);
	//not(Sel0,nSel0);
	//not(Sel1,nSel1);
	//not(Sel2,nSel2);
	//not(Sel3,nSel3);
	
	wire [3:0] out;
	assign out = {Addr1, Addr0} == 2'b00 ? 4'b0111 :
					{Addr1, Addr0} == 2'b01 ? 4'b1011 :
					{Addr1, Addr0} == 2'b10 ? 4'b1101 :
					4'b1110;
					
	assign Sel0 = out[3];
	assign Sel1 = out[2];
	assign Sel2 = out[1];
	assign Sel3 = out[0];

endmodule
