restart
isim force add clk 1 -value 0 -time 10 ns -repeat 20 ns
put btn 0000
put sw 00000000
run 25 ns
put sw 01101010
run 25 ns
put btn 0001
run 25 ns
put btn 0010
run 25 ns
put btn 0100
run 25 ns
put btn 1000
run 25 ns
put btn 0011
run 25 ns
put btn 0101
run 25 ns
put btn 0111
run 25 ns
put btn 1001
run 25 ns
put btn 1011
run 25 ns
put btn 1100
run 25 ns
put btn 1101
run 25 ns
put btn 1110
run 25 ns
put btn 1111
run 25 ns
put btn 0001
run 1000 ns
#source seven_segment_control_top.tcl