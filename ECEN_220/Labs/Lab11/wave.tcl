#WAVE TCL FILE

#add signals to view the IR and IR control
wave add ldIR
wave add IR -radix hex
 
#add signals to view the EAB control
wave add selEAB1
wave add selEAB2
wave add eabOut -radix hex
 
#add signals to view the MARMux control
wave add selMAR
wave add enaMARM
wave add MARMuxOut -radix hex

#add signals to view Register File control
wave add DR
wave add SR1
wave add SR2
wave add regWE

#add signals to view the Registers in the Register File
wave add /REG/R0 -radix hex
wave add /REG/R1 -radix hex
wave add /REG/R2 -radix hex
wave add /REG/R3 -radix hex
wave add /REG/R4 -radix hex
wave add /REG/R5 -radix hex
wave add /REG/R6 -radix hex
wave add /REG/R7 -radix hex
wave add Ra -radix hex
wave add Rb -radix hex

#add signals to view the ALU control
wave add aluControl
wave add enaALU
wave add aluOut -radix hex

#view the condition flags
wave add N
wave add Z
wave add P
wave add flagWE
 
#add signals to view the Memory Registers and the Memory control
wave add ldMAR
wave add /mem/MARReg -radix hex
wave add ldMDR
wave add enaMDR
wave add selMDR
wave add  mdrOut -radix hex
wave add /mem/memOut -radix hex
wave add memWE
