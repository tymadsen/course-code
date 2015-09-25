isim force add clk 1 -value 0 -time 10ns -repeat 20ns
put btn 1111
run 200ns
put sw 00001111
put btn 0001
run 500ns

put btn 0010
run 500ns

put btn 0100
run 500ns

put btn 1000
run 500ns

put btn 0001
put sw 11110000
run 500ns

put btn 0100
run 500ns

put btn 0010
run 500ns

put btn 1000
run 500ns