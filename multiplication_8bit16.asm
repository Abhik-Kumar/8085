//2K19/EE/009 Abhik Kumar
// Program to find multiplication of two 8 bit numbers.
// 8 BIT MULTIPLICATION: PRODUCT 16-BIT

# ORG 1000H // Set assembler location counter
# BEGIN 1000H // Program Execution starts at this location
	   LHLD 2501 // Load the value from memory
	   XCHG // Exchange the content of HL with DE register pair
	   LDA 2503 // Load 8 bit from the 16 bit memory (2503)
	   LXI H,0000 // Loading zero (16 bit) in HL
	   MVI C,0A //Setting the value  of "C"

LOOP:	   DAD H // Addition of HL pair with HL
	   RAL // Rotate Accumulator Left
	   JNC AHEAD // Jump when no carry
	   DAD D // Addition of DE Pair with HL pair

AHEAD:	   DCR C // Decrease the value of "C"
	   JNZ LOOP // If "C" is not zero then loop
	   SHLD 2504 // Save the answer from HL pair to address
	   HLT // STOP

# ORG 2501H //Set assembler location counter
// LSB OF MULTIPLICAND, MSB OF MULTIPLICAND,MULTIPLIER
# DB F5H,00H, 69H // Set data in memory 2501 = F5, 2502 = 00, 2503 = 69	


// ANSWER
// AT ADDRESS 2504 - F4H, LSBs OF PRODUCT
// AT ADDRESS 2505 - 91H, MSB OF PRODUCT
