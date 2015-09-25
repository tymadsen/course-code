#STORE TCL FILE

isim force add selEAB1 0
isim force add selEAB2 10
isim force add enaMARM 1
isim force add ldMAR 1
isim force add selMAR 0
run 10ns
source inactive.tcl
isim force add aluControl 00
isim force add SR1 110
isim force add enaALU 1
isim force add ldMDR 1
isim force add selMDR 0
run 10ns
source inactive.tcl
isim force add memWE 1
run 10ns
