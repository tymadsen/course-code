`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:27 11/14/2013 
// Design Name: 
// Module Name:    timertest 
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
module timertest(clk, reset, zero, tp);
	input clk, reset;
  output zero, tp; 
  
  wire [23:0] counter;
  prog_timer timer(clk, reset, 1'b1, 24'd5000000, counter, zero, tp);

endmodule
