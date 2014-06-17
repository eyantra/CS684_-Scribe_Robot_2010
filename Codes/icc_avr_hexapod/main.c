/**

 main.c :	Main Program
 This file uses the two header files being created hexapod.h and hexapod_firebirdv.h
 This piece of code demonstrates the motion of hexapod and also how the letters can be scribed out
 with the help of hexapod and a pen attached to it, just by tracing the letter through its motion.

 @author Group 10: Abhinav Maurya 10305016
 		 	   	   Yogesh Kakde	  10305039
				   Lokesh Rajwani 10305066
 
 AVR Studio Version 4.17, Build 666

 Date: 6th November 2010
 
    Make sure that in the configuration options following settings are 
 	done for proper operation of the code

 	Microcontroller: atmega2560
 	Frequency: 11059200
 	Optimization: -O0 (For more information read section: Selecting proper optimization options 
						below figure 4.22 in the hardware manual)
*********************************************************************************/


/********************************************************************************

   Copyright (c) 2010, ERTS Lab IIT Bombay erts@cse.iitb.ac.in               -*- c -*-
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

   * Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in
     the documentation and/or other materials provided with the
     distribution.

   * Neither the name of the copyright holders nor the names of
     contributors may be used to endorse or promote products derived
     from this software without specific prior written permission.

   * Source code can be used for academic purpose. 
	 For commercial use permission form the author needs to be taken.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  POSSIBILITY OF SUCH DAMAGE. 

********************************************************************************/


	// Application: ICC-AVR
// Target: M2560
// Crystal: 11.059Mhz



#include "hexapod.h"

//These functions provide forward motions in each adjacent limbs direction
//Although these functions are not currently used, but are provided as a secondary functions.

void forward_1_4 (void);  		  		 /** 	 	  1    4	   		 **/
void forward_4_5 (void);
void forward_3_2 (void);				 /**	  2  	       5		 **/
void forward_2_1 (void);
void forward_5_6 (void);				 /** 	 	  3    6	   		 **/


//The functions declared below are the functions which will scribe out letters as indicated by their names.
//Such functions can be extended even to scribe out numbers and shapes.
void write_H(int n);
void write_X(int n);



/*******MAIN PROGRAM***********/
void main(void)
{
 int i;
 init_devices();
 //insert your functional code here...
 servo_calibration(); //must be called as the first instruction
 servo_on();//turning on the servo supply


 ////////********DEMO 1***********////////// 
 delay(5000);
 
 //The code below rotates the hexapod by 360 degrees
 rotate_clockwise(90);
 rotate_clockwise(90);
 rotate_clockwise(90);
 rotate_clockwise(90);
 
 
 ////////********DEMO 2***********//////////
 delay(5000);
 
 //The code below traverses the hexapod forward and then backward
 for(i=0;i<5;i++){
  forward();
  while(motion_busy == 1);
 }
 
 delay(5000);
 for(i=0;i<10;i++){
  backward();
  while(motion_busy == 1);
 }
 
 
 ////////********DEMO 3***********//////////
 ////////********To write H********/////////
 delay(5000);
 write_H(4);
}






/****************FUNCTION DEFINITIONS***************/
/***********DEFINING USER-DEFINED FUNCTIONS*********/
//The following functions may be modified, added depending upon the project needs

void forward_1_4 (void)
{
 motion_busy = 1; 
 servo_calibration();
 delay_250ms();
 
 //legs 2 and 4 move forward
 angle_2B(45); angle_2C(45); angle_4B(45); angle_4C(45); //front pair BC servo up 45
 delay_250ms();
 angle_2A(60); angle_4A(120); //front pair move forward while legs are up
 delay_250ms();
 angle_2B(90); angle_2C(90); angle_4B(90); angle_4C(90); // put down legs
 delay_250ms();
 
 //legs 1 and 6 move forward
 angle_1B(45); angle_1C(45); angle_6B(45); angle_6C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_1A(60); angle_6A(120); //middel pair move back while legs are up
 delay_250ms();
 angle_1B(90); angle_1C(90); angle_6B(90); angle_6C(90); // put down legs
 delay_250ms();
 
 //legs 3 and 5 move forward
 angle_3B(45); angle_3C(45); angle_5B(45); angle_5C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_3A(60); angle_5A(120); //middel pair move forward while legs are up
 delay_250ms();
 angle_3B(90); angle_3C(90); angle_5B(90); angle_5C(90); // put down legs
 delay_250ms(); 
 
 servo_calibration(); //push towards forward
 motion_busy = 0; 
}

void forward_4_5 (void)
{
 motion_busy = 1; 
 servo_calibration();
 delay_250ms();
 
 //legs 1 and 5 move forward
 angle_1B(45); angle_1C(45); angle_5B(45); angle_5C(45); //front pair BC servo up 45
 delay_250ms();
 angle_1A(80); angle_5A(120); //front pair move forward while legs are up
 delay_250ms();
 angle_1B(90); angle_1C(90); angle_5B(90); angle_5C(90); // put down legs
 delay_250ms();
 
 //legs 4 and 3 move forward
 angle_4B(45); angle_4C(45); angle_3B(45); angle_3C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_4A(80); angle_3A(120); //middel pair move back while legs are up
 delay_250ms();
 angle_4B(90); angle_4C(90); angle_3B(90); angle_3C(90); // put down legs
 delay_250ms();
 
 //legs 2 and 6 move forward
 angle_2B(45); angle_2C(45); angle_6B(45); angle_6C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_2A(80); angle_6A(120); //middel pair move forward while legs are up
 delay_250ms();
 angle_2B(90); angle_2C(90); angle_6B(90); angle_6C(90); // put down legs
 delay_250ms(); 
 
 servo_calibration(); //push towards forward
 motion_busy = 0; 
}

void forward_3_2 (void)
{
 motion_busy = 1; 
 servo_calibration();
 delay_250ms();
 
 //legs 6 and 2 move forward
 angle_6B(45); angle_6C(45); angle_2B(45); angle_2C(45); //front pair BC servo up 45
 delay_250ms();
 angle_6A(60); angle_2A(120); //front pair move forward while legs are up
 delay_250ms();
 angle_6B(90); angle_6C(90); angle_2B(90); angle_2C(90); // put down legs
 delay_250ms();
 
 //legs 3 and 4 move forward
 angle_3B(45); angle_3C(45); angle_4B(45); angle_4C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_3A(60); angle_4A(120); //middel pair move back while legs are up
 delay_250ms();
 angle_3B(90); angle_3C(90); angle_4B(90); angle_4C(90); // put down legs
 delay_250ms();
 
 //legs 5 and 1 move forward
 angle_5B(45); angle_5C(45); angle_1B(45); angle_1C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_5A(60); angle_1A(120); //middel pair move forward while legs are up
 delay_250ms();
 angle_5B(90); angle_5C(90); angle_1B(90); angle_1C(90); // put down legs
 delay_250ms(); 
 
 servo_calibration(); //push towards forward
 motion_busy = 0; 
}

void forward_2_1 (void)
{
 motion_busy = 1; 
 servo_calibration();
 delay_250ms();
 
 //legs 3 and 1 move forward
 angle_3B(45); angle_3C(45); angle_1B(45); angle_1C(45); //front pair BC servo up 45
 delay_250ms();
 angle_3A(60); angle_1A(120); //front pair move forward while legs are up
 delay_250ms();
 angle_3B(90); angle_3C(90); angle_1B(90); angle_1C(90); // put down legs
 delay_250ms();
 
 //legs 2 and 5 move forward
 angle_2B(45); angle_2C(45); angle_5B(45); angle_5C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_2A(60); angle_5A(120); //middel pair move back while legs are up
 delay_250ms();
 angle_2B(90); angle_2C(90); angle_5B(90); angle_5C(90); // put down legs
 delay_250ms();
 
 //legs 6 and 4 move forward
 angle_6B(45); angle_6C(45); angle_4B(45); angle_4C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_6A(60); angle_4A(120); //middel pair move forward while legs are up
 delay_250ms();
 angle_6B(90); angle_6C(90); angle_4B(90); angle_4C(90); // put down legs
 delay_250ms(); 
 
 servo_calibration(); //push towards forward
 motion_busy = 0; 
}

void forward_5_6 (void)
{
 motion_busy = 1; 
 servo_calibration();
 delay_250ms();
 
 //legs 4 and 6 move forward
 angle_4B(45); angle_4C(45); angle_6B(45); angle_6C(45); //front pair BC servo up 45
 delay_250ms();
 angle_4A(60); angle_6A(120); //front pair move forward while legs are up
 delay_250ms();
 angle_4B(90); angle_4C(90); angle_6B(90); angle_6C(90); // put down legs
 delay_250ms();
 
 //legs 5 and 2 move forward
 angle_5B(45); angle_5C(45); angle_2B(45); angle_2C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_5A(60); angle_2A(120); //middel pair move back while legs are up
 delay_250ms();
 angle_5B(90); angle_5C(90); angle_2B(90); angle_2C(90); // put down legs
 delay_250ms();
 
 //legs 1 and 3 move forward
 angle_1B(45); angle_1C(45); angle_3B(45); angle_3C(45); //middel pair BC servo up 45
 delay_250ms();
 angle_1A(60); angle_3A(120); //middel pair move forward while legs are up
 delay_250ms();
 angle_1B(90); angle_1C(90); angle_3B(90); angle_3C(90); // put down legs
 delay_250ms(); 
 
 servo_calibration(); //push towards forward
 motion_busy = 0; 
}


/*****************************************************************
	The functions below describe the scribing of letters.
	Each letter starts when hexapod is at upright position
	and after scribing out the letter, the hexapod ends with
	facing right position. So, to start off with next letter
	again, next_letter() function must be called which not only
	resets the hexapod position to facing UP but also keeps
	some distance from the previous letter scribbed out.
*****************************************************************/

void next_letter()
{
 int i;
 for(i=0;i<10;i++)
 {
 forward_3_legs();
 while(motion_busy == 1);
 } 
 rotate_anticlockwise(90);
}

//parameter n resembles to size of letter being scribed out

/***************  H  ***************/
void write_H(int n)
{
 int i;
 for(i=0;i<2*n;i++)
 {
 forward();
 while(motion_busy == 1);
 }
 
 for(i=0;i<n;i++)
 {
 backward();
 while(motion_busy == 1);
 }
 
 rotate_clockwise(90);
 
 for(i=0;i<n;i++)
 {
 forward();
 while(motion_busy == 1);
 }
 
 rotate_anticlockwise(90);
 
 for(i=0;i<n;i++)
 {
 forward();
 while(motion_busy == 1);
 }
 
 for(i=0;i<2*n;i++)
 {
 backward();
 while(motion_busy == 1);
 }
 
 rotate_anticlockwise(90);
}

/***************  X  ***************/
void write_X(int n)
{
 int i;
 for(i=0;i<2*n;i++)
 {
 forward_4_5();
 while(motion_busy == 1);
 }
 
 for(i=0;i<n;i++)
 {
 forward_3_2();
 while(motion_busy == 1);
 }
 
 for(i=0;i<n;i++)
 {
 forward_2_1();
 while(motion_busy == 1);
 }
 
 for(i=0;i<2*n;i++)
 {
 forward_5_6();
 while(motion_busy == 1);
 }  
}

