// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

//创建变量i（存储当前遍历的次数，从1开始），sum（乘法结果）
@i
M=1
@sum
M=0

(loop)
//将i和R0存储的数做对比，如果i>R0存储的数据，就跳转
@i
D=M
@R0
D=D-M
@outloop
D;JGT

//循环内容，sum+=R1存储的值，然后i++
@sum
D=M
@R1
D=D+M		
@sum
M=D	

@i
M=M+1

@loop
0;JMP

(outloop)
@sum
D=M
@R2
M=D

(end)
@end
0;JMP