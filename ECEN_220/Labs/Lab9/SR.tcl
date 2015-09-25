#add all signals to the waveform viewer
wave add / -radix hex
 
isim force add s 0 -time 0 -value 1 -time 10ns -repeat 20ns

isim force add r 0 -time 0 -value 1 -time 20ns -repeat 40ns

run 80 ns

