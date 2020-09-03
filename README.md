# MicroBlaze UART Project

## Description
This app provides the ability to turn LED's on/off by pressing a key on the keyboard, 
additionally it can also have user input an ASCII key from the keyboards and display 
it's binary representation on the LEDs.
This was implemented using UART interrupt for the Numato Mimas V2 FPGA connected to a PC with a PuTTy client setup.

I have provided two folders in this repository:
1. UARTtoLED: this folder contains the files for XPS to build MicroBlaze for the Numato Mimas V2 board.
2. SDK_Workspace: this folder contains the Xilinx SDK workspace files to run MicroBlaze on the FPGA.

Source code of the project: /SDK_Workspace/UARTtoLED/src/helloworld.c