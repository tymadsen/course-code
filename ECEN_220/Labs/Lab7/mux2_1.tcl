#add all signals to the waveform viewer
wave add / -radix hex

#define how the data input signals will behave when you run the simulation
#the command "isim force add (signal) 0 -time 0 -value 1 -time 20ns -repeat 40ns" means that (signal)
#will have a value of 0 from time 0, then change to 1 at time 20ns, and then repeat that cycle every 40ns

isim force add a 0
isim force add b 1
isim force add sel 0 -time 0 -value 1 -time 20ns -repeat 40ns

#Nothing will change in the waveform viewer until you run the simulation for some period of time.
run 160ns