//2K19/EE/009 Abhik Kumar
// Program to find 1's and 2's complement.
// 01 = 0000 0001
// 1's = 1111 1110
// 2's = 1's + 1 = 1111 1111

MVI A , 36H
STA 1001H
LDA 1001H // Loading data in accumulator
CMA // For finding 1's complement
STA 2001H // Saving the data at 2001 hex
INR A // adding one to accumulator data (or ADI 01)
STA 2002H // Saving 2's complement at 2002 hex
