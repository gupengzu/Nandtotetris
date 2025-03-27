// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


@black
M=-1
@white
M=0

@SCREEN
D=A
@address
M=D

(main_loop)
@KBD
D=M
@set_black
D;JNE
@set_white
0;JMP

(set_black)
@black
D=M
@color
M=D
@fill_screen
0;JMP

(set_white)
@white
D=M
@color
M=D
@fill_screen
0;JMP

(fill_screen)
@address
D=M
@KBD
D=A-D
@main_loop
D;JEQ

@color
D=M
@address
A=M
M=D

@address
M=M+1
@fill_screen
0;JMP