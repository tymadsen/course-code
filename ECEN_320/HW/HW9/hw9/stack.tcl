restart
isim force add clk 1 -value 0 -time 10 ns -repeat 20 ns
put reset 1
run 25 ns
put reset 0
put push 1
run 80 ns
put push 0
put pop 1
run 80 ns
put pop 0
put push 1
run 40 ns
put push 0
put pop 1
run 20 ns
put pop 0
put push 1
run 40 ns
put push 0
put pop 1
run 60 ns
put pop 0
run 20 ns