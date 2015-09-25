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
	
	wire nAddr0, nAddr1, nSel0, nSel1, nSel2, nSel3;
	
	not(nAddr0,Addr0);
	not(nAddr1, Addr1);
	and(Sel3,Addr0,Addr1);
	and(Sel2,nAddr0,Addr1);
	and(Sel1,Addr0,nAddr1);
	and(Sel0,nAddr0,nAddr1);
	

endmodule
