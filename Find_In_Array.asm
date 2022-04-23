//2K19/EE/009 Abhik Kumar
// FInd a number in a given array

# ORG 1000
# BEGIN 1000
	   LXI H,1050 // Address  to get array size
	   MOV C,M // Size of array
	   INX H // Point to next location of array
	   MOV B,M // Key value to be searched in array
	   MOV A,B // Storing key in accumulator

LOOP:	   INX H // move to next location
	   CMP M // Compare the memory element with Accumulator
	   JZ FOUND // Jump If zero
	   DCR C // decrease the size of array
	   JNZ LOOP // Jump if not zero
	   LXI H,FFFF // load FFFF into HL pair if data not found
	   SHLD 3000 // store the HL pair data at
	   JMP DONE // Jump to

FOUND:	   SHLD 3000 // If data found store this adress

DONE:	   HLT // stop

# ORG 1050H
// Size, Key, Data(1), Data(2), Data(3), ...........Data(size)
#DB 07H, 62H, 12H, 22H, 32H, 42H, 52H, 62H, 72H 
