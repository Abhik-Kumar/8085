// 2K19/EE/009 Abhik Kumar
//Addition of two 8-bit numbers

MVI A,31H // date is directly available  in accumulator
MVI B,2BH // loading data in resistor 'B'
ADD B // data form 'B' get added with accumulator data
MOV E,A // storing data in 'E' resistor
STA 2050H // data form accumulator get stored in 2050 hex
HLT // ending

