restart
isim force add clk 1 -value 0 -time 10ps -repeat 20ps
put btn0 1 
run 100 ps 
put btn0 0
put sw 00000 
run 100 ns