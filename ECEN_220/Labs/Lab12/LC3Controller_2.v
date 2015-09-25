module LC3Controller_2(
    input [15:0] IR,
	 input N,
    input Z,
    input P,
	 input reset,
	 input clk,
    output [1:0] aluControl,
    output enaALU,
    output [2:0] SR1,
    output [2:0] SR2,
    output [2:0] DR,
    output regWE,
    output [1:0] selPC,
    output enaMARM,
    output selMAR,
    output selEAB1,
    output [1:0] selEAB2,
    output enaPC,
    output ldPC,
    output ldIR,
    output ldMAR,
    output ldMDR,
    output selMDR,
    output memWE,
    output flagWE,
    output enaMDR
    );
	
		wire [14:0] CS, NS;
		
		register_15 load_state(CS, clk, NS, reset, 1'b1);
		
		assign NS[0] = (CS[4] & (IR[15:12] == 4'b0001 || IR[15:12] == 4'b0101 || IR[15:12] == 4'b1001)) || 
				(CS[7]) ||
				(CS[14]) ||
				(CS[6]) ||
				(CS[10]) ||
				(CS[13]);//(state)->Fetch0
		assign NS[1] = CS[0];//Fetch0 -> Fetch1
		assign NS[2] = CS[1];//Fetch1->Fetch2
		assign NS[3] = CS[2];//Fetch2->Decode
		assign NS[4] = CS[3] & (IR[15:12] == 4'b0001 || IR[15:12] == 4'b0101 || IR[15:12] == 4'b1001);//Decode->ALU
		assign NS[5] = CS[3] & (IR[15:11] == 5'b01001);//Decode->JSR0
		assign NS[6] = CS[5];//JSR0->JSR1
		assign NS[7] = CS[3] & (IR[15:12] == 4'b0000);//Decode->BR
		assign NS[8] = CS[3] & (IR[15:12] == 4'b0010);//Decode->LD0
		assign NS[9] = CS[8];//LD0->LD1
		assign NS[10] = CS[9];//LD1->LD2
		assign NS[11] = CS[3] & (IR[15:12] == 4'b0011);//Decode->ST0
		assign NS[12] = CS[11];//ST0->ST1
		assign NS[13] = CS[12];//ST1->ST2
		assign NS[14] = CS[3] & (IR[15:12] == 4'b1100);//Decode->JMPRET
		
		parameter Fetch0	= 	15'b000000000000001;
		parameter Fetch1	= 	15'b000000000000010;
		parameter Fetch2	= 	15'b000000000000100;
		parameter Decode	= 	15'b000000000001000;
		parameter ALU		=	15'b000000000010000;
		parameter JSR0		=	15'b000000000100000;
		parameter JSR1		=	15'b000000001000000;
		parameter BR 		=	15'b000000010000000;
		parameter LD0 		=	15'b000000100000000;
		parameter LD1		=	15'b000001000000000;
		parameter LD2		=	15'b000010000000000;
		parameter ST0		=	15'b000100000000000;
		parameter ST1		=	15'b001000000000000;
		parameter ST2		=	15'b010000000000000;
		parameter JMPRET	= 	15'b100000000000000;
		
		
		assign enaPC = (CS	== Fetch0) || 
							(CS	== JSR0);
		assign ldMAR = (CS	== Fetch0) ||
							(CS	== LD0) ||
							(CS	== ST0);
		assign selPC = ((CS	== JSR1) || (CS	== JMPRET) || (CS	== BR)) ? 2'b01 :
							2'b00;
		assign ldPC =	(CS	== Fetch1) || 
							(CS	== JSR1) ||
							((CS	== BR) && ((N & IR[11]) | (Z & IR[10]) | (P & IR[9])));
		assign ldMDR = (CS	== Fetch1) ||
							(CS	== LD1) ||
							(CS	== ST1);
		assign selMDR = (CS == Fetch1 || CS == LD1) ? 1'b1 :
								1'b0;
		assign ldIR	 = (CS == Fetch2);
		assign enaMDR = (CS == Fetch2) ||
								(CS == LD2);
		assign aluControl = (CS == ALU) ? ((IR[15:12] == 4'b0001) ? 2'b01 :
												(IR[15:12] == 4'b0101) ? 2'b10 :
												2'b11) :
												2'b00;
		assign SR1 = (CS == ALU || CS == JMPRET) ? IR[8:6] :
							IR[11:9];
		assign SR2 = IR[2:0]; 
		assign DR = (CS == JSR0) ? 3'b111 : IR[11:9];
		assign flagWE = (CS == ALU || CS == LD2);
		assign regWe = (CS == ALU || CS == JSR0 || CS == LD2);
		assign selEAB1 = (CS == JMPRET) ? 1'b1 : 1'b0;
		assign selEAB2 = (CS == JSR1) ? 2'b11 : 
								(CS == JMPRET) ? 2'b00 :
									2'b10;
		assign enaMARM = (CS == LD0) || (CS == ST0);
		assign selMAR = 1'b0;
		assign enaALU = (CS == ST1) || (CS == enaALU);
		assign memWE = (CS == ST2);
	
	endmodule