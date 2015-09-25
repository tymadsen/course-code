//Datapath Verilog Module
module Datapath(
    input clk,
    input reset,
    input [1:0] aluControl,
    input enaALU,
    input [2:0] SR1,
    input [2:0] SR2,
    input [2:0] DR,
    input regWE,
    input [1:0] selPC,
    input enaMARM,
    input selMAR,
    input selEAB1,
    input [1:0] selEAB2,
    input enaPC,
    input ldPC,
    input ldIR,
    input ldMAR,
    input ldMDR,
    input selMDR,
    input memWE,
    input flagWE,
    input enaMDR,
    output N,
    output Z,
    output P,
    output [15:0] IR
    );
	 
	 wire [15:0] Buss, aluOut, pc, MARMuxOut, eabOut, Ra, Rb, mdrOut;
	 
	 PC pcModule(ldPC,clk,reset, selPC, Buss, eabOut, pc);
	 ts_driver PCdriver(pc, Buss, enaPC);
	 
	 EAB EABModule(IR[10:0], Ra, pc, selEAB1, selEAB2, eabOut);
	 
	 IR IRmodule(ldIR, clk, reset, Buss, IR);
	 
	 MARMux marmodule(IR[7:0],selMAR,eabOut,MARMuxOut);
	 ts_driver enaMARMdriver (MARMuxOut, Buss, enaMARM);
	 
	 ALU alumodule(Ra, Rb, IR[5:0], aluControl, aluOut);
	 ts_driver aluDriver(aluOut, Buss, enaALU);
	 
	 RegFile REG(DR,SR1,SR2,regWE,clk,reset,Buss,Ra,Rb);
	 
	 NZP nzp(Buss,reset,clk,flagWE,N,Z,P);
	 
	 Memory mem(mdrOut, Buss, clk, reset, ldMAR, ldMDR, selMDR, memWE);
	 ts_driver memdriver(mdrOut, Buss, enaMDR);
	
endmodule
