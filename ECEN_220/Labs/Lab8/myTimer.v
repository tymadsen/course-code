`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:54 11/08/2013 
// Design Name: 
// Module Name:    myTimer 
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
module prog_timer (clk, reset, clken, load_number, counter, zero, tp); 
  input clk, reset, clken; 
  input [23:0] load_number; 
  output reg [23:0] counter;  
  output reg zero, tp;
*/

module myTimer(clk, reset, zero, tp);
	input clk, reset;
  output zero, tp; 
  
  wire [23:0] counter;
  prog_timer timer(clk, reset, 1'b1, 24'd250000, counter, zero, tp);

endmodule
