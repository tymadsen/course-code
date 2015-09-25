#add all signals to the waveform viewer
wave add / -radix hex

isim force add reset 1
isim force add clk 0 -time 0 -value 1 -time 10ns -repeat 20ns
run 33ns
isim force add reset 0



#Nothing will change in the waveform viewer until you run the simulation for some period of time.
run 160ns