#add all signals to the waveform viewer
wave add / -radix hex
 
isim force add CLK 0 -time 0 -value 1 -time 10ns -repeat 20ns

isim force add Reset 1 

run 23 ns

isim force add INC 0 -time 0 -value 1 -time 30ns
isim force add cei 0 -time 0 -value 1 -time 40ns -value 0 -time 60ns -repeat 60ns
isim force add Reset 0 

#Nothing will change in the waveform viewer until you run the simulation for some period of time.
run 1280ns