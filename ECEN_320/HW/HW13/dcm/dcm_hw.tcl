restart
isim force add GCLK 1 -value 0 -time 10ns -repeat 20ns
put rst 1
run 100ns 
put rst 0
run 1us