#MASTER TCL FILE

source wave.tcl

isim force add clk 0 -time 0 -value 1 -time 5ns -repeat 10ns
isim force add reset 1 -time 0 -value 0 -time 12ns

run 12ns

source fetch.tcl
source and1.tcl
source fetch.tcl
source add1.tcl
source fetch.tcl
source not1.tcl
source fetch.tcl
source branch1.tcl
source fetch.tcl
source jsr1.tcl
source fetch.tcl
source load1.tcl
source fetch.tcl
source load2.tcl
source fetch.tcl
source add2.tcl
source fetch.tcl
source store.tcl
source fetch.tcl
source jump1.tcl
source fetch.tcl
source branch2.tcl
source fetch.tcl
