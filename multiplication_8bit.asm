//2K19/EE/009 Abhik Kumar
// Program to find multiplication of two 8 bit numbers.
// Using addition method (Universal -> Answer 16bit)

MVI A,00H //Clearing the accumulator
MOV D,  A // MOV is 1 bit instruction (MVI is 2 bit instruction)
MVI B, FFH // Setting the data in registor
MVI C, FFH // Setting counter value in other registor
LOOP: 	ADD B // Sending the data to accumulator
	JNC NEXT // Jump if not carry
	INR D // Increase the value of D (Each time carry)
NEXT:	DCR C // Decrease the value of 'C'
	JNZ LOOP // Keep the loop till the value of 'C' is not zero
MOV E,  A

STA 1009H // Saving the multiplication at 1009 hex
HLT // STOP