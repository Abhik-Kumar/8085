// 2K19/EE/009 Abhik Kumar
// Find largest number among the numbers

# ORG 1000
# BEGIN 1000
	   LXI H,1050	// Address to get array size
	   MOV C,M	// Size of array
	   INX H	// Point to next location of array
	   MOV B,M	// loading 1st data
	   DCR C	// Decrease the size of array

LOOP:	   INX H	// move to next location
	   MOV A,M	// Loading the next data in accumulator
	   CMP B	// compare the data with accumulator data
	   JC SKIP	// Jump if carry (if B > A)
	   MOV B,A	// If carry is 0, update B

SKIP:	   DCR C	// Decrease the array size
	   JNZ LOOP	// Jump if not zero
	   LXI H,2000	// load data address
	   MOV M,B	// store the data at address
	   HLT	// stop
// Size, Data(1), Data(2), Data(3), ...........Data(size)
# ORG 1050H
# DB 07H, 12H, 22H, 32H, 42H, 72H, 62H, 52H
