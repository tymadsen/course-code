#add all signals to the waveform viewer
wave add / -radix hex
wave add /control/CS -radix hex
wave add /control/NS -radix hex
wave add /path/REG/R0 -radix hex
wave add /path/REG/R1 -radix hex
wave add /path/REG/R2 -radix hex
wave add /path/REG/R3 -radix hex
wave add /path/REG/R4 -radix hex
wave add /path/REG/R5 -radix hex
wave add /path/REG/R6 -radix hex
wave add /path/REG/R7 -radix hex
wave add /path/nzp -radix hex
wave add /path/pcModule -radix hex
wave add /path/marmodule -radix hex
wave add /path/mem/MDR0 -radix hex

isim force add reset 1
isim force add clk 0 -time 0 -value 1 -time 5ns -repeat 10ns
run 23ns
isim force add reset 0
run 1680ns
