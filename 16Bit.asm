// 2K19/EE/009 Abhik Kumar
//Addition of two 16-bit numbers
// 16 bit data is load in register pair 
// First adddition of LSB is done the MSB
// LXI (Load register pair immediate)

LXI B,BB12H // data BB12 will get loaded in 'B' & 'C'  
LXI D,C213H // data C213 will get loaded in 'D' & 'E'
MOV A,C // moving 'C' (LSB) into accumulator
ADD E // adding 'E' (LSB) with 'C' and result will be in accumulator
MOV L,A // storing Accumulator data to 'L'
MOV A,B // moving 'B' (MSB) to accummulator
ADC D // to account for carry using ADC in place of ADD
MOV H,A // storing data in accumulator
HLT // stop
