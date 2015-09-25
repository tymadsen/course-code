`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:09 10/09/2013 
// Design Name: 
// Module Name:    MUX41 
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
module MUX41(
	 output Result,
    input [1:0] control,
	 input [3:0] data
    );
	 
	assign Result= control == 2'b00 ? data[0] :
						control == 2'b01 ? data[1] :
						control == 2'b10 ? data[2] :
						data[3];

endmodule
