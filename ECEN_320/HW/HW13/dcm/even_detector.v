//Verilog Problem 1
module even_detector(a, even);
   input [2:0] a;
   output even;
	wire p1 , p2 , p3 , p4 ;
	assign even = (p1 | p2 ) | (p3 | p4 );
	assign p1 = (~a[0]) & (~a[1]) & (~a[2]);
	assign p2 = (~a[0]) & a[1] & a[2];
	assign p3 = a[0] & (~a[1]) & a[2];
	assign p4 = a[0] & a[1] & (~a[2]);

endmodule

