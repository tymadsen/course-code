#FETCH TCL FILE

source inactive.tcl

isim force add enaPC 1
isim force add ldMAR 1
run 10ns

source inactive.tcl
isim force add selPC 00
isim force add ldPC 1
isim force add ldMDR 1
isim force add selMDR 1
run 10ns

source inactive.tcl

isim force add ldIR 1
isim force add enaMDR 1
run 10ns

source inactive.tcl
