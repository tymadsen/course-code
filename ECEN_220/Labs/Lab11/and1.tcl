#AND1 TCL FILE

isim force add aluControl 10
isim force add SR1 000
isim force add DR 000
isim force add enaALU 1
isim force add regWE 1
run 10ns
