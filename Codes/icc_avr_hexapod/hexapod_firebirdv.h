/**

 hexapod_firebirdv.h : Basic control operations setting ports, defining interfaces, etc. for FirebirdV platform.
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

//List of variables supplied by this header file, hexapod_firebirdv.h
/*
unsigned char arm_number;
unsigned char angle_upper_byte; 
unsigned char angle_lower_byte;
unsigned char degree;
unsigned char _1A, _1B, _1C, _2A, _2B, _2C, _3A, _3B, _3C, _4A, _4B, _4C, _5A, _5B, _5C, _6A, _6B, _6C;
unsigned char angle_upper_byte_1A, angle_lower_byte_1A, angle_upper_byte_1B, angle_lower_byte_1B, angle_upper_byte_1C, angle_lower_byte_1C;
unsigned char angle_upper_byte_2A, angle_lower_byte_2A, angle_upper_byte_2B, angle_lower_byte_2B, angle_upper_byte_2C, angle_lower_byte_2C;
unsigned char angle_upper_byte_3A, angle_lower_byte_3A, angle_upper_byte_3B, angle_lower_byte_3B, angle_upper_byte_3C, angle_lower_byte_3C;
unsigned char angle_upper_byte_4A, angle_lower_byte_4A, angle_upper_byte_4B, angle_lower_byte_4B, angle_upper_byte_4C, angle_lower_byte_4C;
unsigned char angle_upper_byte_5A, angle_lower_byte_5A, angle_upper_byte_5B, angle_lower_byte_5B, angle_upper_byte_5C, angle_lower_byte_5C;
unsigned char angle_upper_byte_6A, angle_lower_byte_6A, angle_upper_byte_6B, angle_lower_byte_6B, angle_upper_byte_6C, angle_lower_byte_6C;
unsigned int delay_count;
unsigned int serial_communication_interval;
unsigned char serial_communication_channel_number;
unsigned char remote_data [8];
unsigned char motion_busy;
*/

//List of functions supplied by this header file, hexapod_firebirdv.h
/*
void servo_on (void);
void servo_off (void);
void reset_SP_LEFT (void);
void set_SP_LEFT (void);
void reset_1A (void);
void set_1A (void);
void reset_1B (void);
void set_1B (void);
void reset_1C (void);
void set_1C (void);
void reset_2A (void);
void set_2A (void);
void reset_2B (void);
void set_2B (void);
void reset_2C (void);
void set_2C (void);
void reset_3A (void);
void set_3A (void);
void reset_3B (void);
void set_3B (void);
void reset_3C (void);
void set_3C (void);
void reset_SP_RIGHT (void);
void set_SP_RIGHT (void);
void reset_4A (void);
void set_4A (void);
void reset_4B (void);
void set_4B (void);
void reset_4C (void);
void set_4C (void);
void reset_5A (void);
void set_5A (void);
void reset_5B (void);
void set_5B (void);
void reset_5C (void);
void set_5C (void);
void reset_6A (void);
void set_6A (void);
void reset_6B (void);
void set_6B (void);
void reset_6C (void);
void set_6C (void);
void delay (int millisec);
void delay_100ms (void);
void delay_250ms (void);
void delay_500ms (void);
void delay_1s (void);
void port_init (void);
void timer1_init (void);
void timer1_compa_isr (void);
void timer1_compb_isr (void);
void timer1_compc_isr (void);
void timer1_ovf_isr (void);
void uart0_init (void);
void uart0_rx_isr (void);
void init_devices (void);
void angle_value_calculation (void);
void angle_1A (unsigned char angle);
void angle_1B (unsigned char angle);
void angle_1C (unsigned char angle);
void angle_2A (unsigned char angle);
void angle_2B (unsigned char angle);
void angle_2C (unsigned char angle);
void angle_3A (unsigned char angle);
void angle_3B (unsigned char angle);
void angle_3C (unsigned char angle);
void angle_4A (unsigned char angle);
void angle_4B (unsigned char angle);
void angle_4C (unsigned char angle);
void angle_5A (unsigned char angle);
void angle_5B (unsigned char angle);
void angle_5C (unsigned char angle);
void angle_6A (unsigned char angle);
void angle_6B (unsigned char angle);
void angle_6C (unsigned char angle);
void buzzer_on (void);
void buzzer_off (void);
*/

/*
Pin name	Port		Anding (make 0)		Oring (make 1)
SP LEFT	PL1		1111 1101	0xFD		0000 0010	0x02

1A		PD5		1101 1111	0xDF		0010 0000	0x20
1B		PL2		1111 1011	0xFB		0000 0100	0x04
1C		PG1		1111 1101	0xFD		0000 0010	0x02
2A		PL6		1011 1111	0xBF		0100 0000	0x40
2B		PD4		1110 1111	0xEF		0001 0000	0x10
2C		PL7		0111 1111	0x7F		1000 0000	0x80
3A		PH6		1011 1111	0xBF		0100 0000	0x40
3B		PH4		1110 1111	0xEF		0001 0000	0x10
3C		PH5		1101 1111	0xDF		0010 0000	0x20
SP RIGHT	PJ7		0111 1111	0x7F		1000 0000	0x80
4A		PG0		1111 1110	0xFE		0000 0001	0x01
4B		PD7		0111 1111	0x7F		1000 0000	0x80
4C		PD6		1011 1111	0xBF		0100 0000	0x40
5A		PJ5		1101 1111	0xDF		0010 0000	0x20
5B		PJ6		1011 1111	0xBF		0100 0000	0x40
5C		PJ4		1110 1111	0xEF		0001 0000	0x10
6A		PJ3		1111 0111	0XF7		0000 1000	0x08
6B		PJ1		1111 1101	0xFD		0000 0010	0x02
6C		PJ2		1111 1011	0xFB		0000 0100	0x04

Remote control communication protocoal
transmitted command		received data
1						right joystick x axis 8 bit analog position;	center:0x24; left: 0x3B; right: 0x04
2						right joystick y axis 8 bit analog position;	center:0x24; up: 0x3B; down: 0x04
3						left joystick x axis 8 bit analog position;		center:0x3A; left: 0x23; right: 0x04
4						left joystick y axis 8 bit analog position;		center:0x1F; up: 0x34; down: 0x04
5						right joystick button
6						left joystick button
7						digital switches left 1,2 and right 1,2
						bit7: Right 2; bit6: right 1; bit4: left 1; bit3: left 2

Received data will be stored in the array unsigned char remote_data [8]; from the location 1 to 7 in the same order as the command.
*/

#include <iom2560v.h>
#include <macros.h>

#define angle(motor, angle) { degree = angle; angle_value_calculation(); angle_upper_byte_motor = angle_upper_byte; angle_lower_byte_motor = angle_lower_byte; }

unsigned char arm_number = 0;
unsigned char angle_upper_byte = 0; 
unsigned char angle_lower_byte = 0;
unsigned char degree = 0;
unsigned char _1A, _1B, _1C, _2A, _2B, _2C, _3A, _3B, _3C, _4A, _4B, _4C, _5A, _5B, _5C, _6A, _6B, _6C;
unsigned char angle_upper_byte_1A, angle_lower_byte_1A, angle_upper_byte_1B, angle_lower_byte_1B, angle_upper_byte_1C, angle_lower_byte_1C;
unsigned char angle_upper_byte_2A, angle_lower_byte_2A, angle_upper_byte_2B, angle_lower_byte_2B, angle_upper_byte_2C, angle_lower_byte_2C;
unsigned char angle_upper_byte_3A, angle_lower_byte_3A, angle_upper_byte_3B, angle_lower_byte_3B, angle_upper_byte_3C, angle_lower_byte_3C;
unsigned char angle_upper_byte_4A, angle_lower_byte_4A, angle_upper_byte_4B, angle_lower_byte_4B, angle_upper_byte_4C, angle_lower_byte_4C;
unsigned char angle_upper_byte_5A, angle_lower_byte_5A, angle_upper_byte_5B, angle_lower_byte_5B, angle_upper_byte_5C, angle_lower_byte_5C;
unsigned char angle_upper_byte_6A, angle_lower_byte_6A, angle_upper_byte_6B, angle_lower_byte_6B, angle_upper_byte_6C, angle_lower_byte_6C;
unsigned int delay_count = 0;
//variables relatd to the serial commuication or remote control
unsigned int serial_communication_interval = 0;
unsigned char serial_communication_channel_number  = 0;
unsigned char remote_data [8]; //see remote channel allocation in the notes above
unsigned char motion_busy = 0; //sets to one if any of the motion function is called.

void servo_on (void)
{ PORTB = PORTB | 0x01; }

void servo_off (void)
{ PORTB = PORTB & 0xFE; }

void reset_SP_LEFT (void)
{ PORTL = PORTL & 0xFD; }

void set_SP_LEFT (void)
{ PORTL = PORTL | 0x02; }

void reset_1A (void)
{ PORTD = PORTD & 0xDF; }

void set_1A (void)
{ PORTD = PORTD | 0x20; }

void reset_1B (void)
{ PORTL = PORTL & 0xFB; }

void set_1B (void)
{ PORTL = PORTL | 0x04; }

void reset_1C (void)
{ PORTG = PORTG & 0xFD; }

void set_1C (void)
{ PORTG = PORTG | 0x02; }

void reset_2A (void)
{ PORTL = PORTL & 0xBF; }

void set_2A (void)
{ PORTL = PORTL | 0x40; }

void reset_2B (void)
{ PORTD = PORTD & 0xEF; }

void set_2B (void)
{ PORTD = PORTD | 0x10; }

void reset_2C (void)
{ PORTL = PORTL & 0x7F; }

void set_2C (void)
{ PORTL = PORTL | 0x80; }

void reset_3A (void)
{ PORTH = PORTH & 0xBF; }

void set_3A (void)
{ PORTH = PORTH | 0x40; }

void reset_3B (void)
{ PORTH = PORTH & 0xEF; }

void set_3B (void)
{ PORTH = PORTH | 0x10; }

void reset_3C (void)
{ PORTH = PORTH & 0xDF; }

void set_3C (void)
{ PORTH = PORTH | 0x20; }

void reset_SP_RIGHT (void)
{ PORTJ = PORTJ & 0x7F; }

void set_SP_RIGHT (void)
{ PORTJ = PORTJ | 0x80; }

void reset_4A (void)
{ PORTG = PORTG & 0xFE; }

void set_4A (void)
{ PORTG = PORTG | 0x01; }

void reset_4B (void)
{ PORTD = PORTD & 0x7F; }

void set_4B (void)
{ PORTD = PORTD | 0x80; }

void reset_4C (void)
{ PORTD = PORTD & 0xBF; }

void set_4C (void)
{ PORTD = PORTD | 0x40; }

void reset_5A (void)
{ PORTJ = PORTJ & 0xDF; }

void set_5A (void)
{ PORTJ = PORTJ | 0x20; }

void reset_5B (void)
{ PORTJ = PORTJ & 0xBF; }

void set_5B (void)
{ PORTJ = PORTJ | 0x40; }

void reset_5C (void)
{ PORTJ = PORTJ & 0xEF; }

void set_5C (void)
{ PORTJ = PORTJ | 0x10; }

void reset_6A (void)
{ PORTJ = PORTJ & 0xF7; }

void set_6A (void)
{ PORTJ = PORTJ | 0x08; }

void reset_6B (void)
{ PORTJ = PORTJ & 0xFD; }

void set_6B (void)
{ PORTJ = PORTJ | 0x02; }

void reset_6C (void)
{ PORTJ = PORTJ & 0xFB; }

void set_6C (void)
{ PORTJ = PORTJ | 0x04; }

void delay(int millisec)
{
 if(millisec <=0) return;
 delay_count = 0;
 while(delay_count*5 < millisec*2);
}

void delay_100ms(void)
{
 delay_count = 0;
 while(delay_count < 40);
}

void delay_250ms(void)
{
 delay_count = 0;
 while(delay_count < 100);
}

void delay_500ms(void)
{
 delay_count = 0;
 while(delay_count < 200);
}

void delay_1s(void)
{
 delay_count = 0;
 while(delay_count < 400);
}

void port_init(void)
{
 PORTA = 0x00;
 DDRA  = 0xFF;
 PORTB = 0x00;
 DDRB  = 0x01;
 PORTC = 0x00; //m103 output only
 DDRC  = 0xFF;
 PORTD = 0x00;
 DDRD  = 0xF0;
 PORTE = 0x00;
 DDRE  = 0x00;
 PORTF = 0x00;
 DDRF  = 0x00;
 PORTG = 0x00;
 DDRG  = 0x03;
 PORTH = 0x00;
 DDRH  = 0x70;
 PORTJ = 0x00;
 DDRJ  = 0xFE; //0xFE original
 PORTK = 0x00;
 DDRK  = 0x00;
 PORTL = 0x00;
 DDRL  = 0xC7;
}

//TIMER1 initialize - prescale:1
// WGM: 0) Normal, TOP=0xFFFF
// desired value: 400Hz
// actual value: 400.007Hz (0.0%)
void timer1_init(void)
{
 TCCR1B = 0x00; //stop
 TCNT1H = 0x94; //setup
 TCNT1L = 0x01;
 OCR1AH = 0x6B;
 OCR1AL = 0xFF;
 OCR1BH = 0x6B;
 OCR1BL = 0xFF;
 OCR1CH = 0x00;
 OCR1CL = 0x00;
 ICR1H  = 0x6B;
 ICR1L  = 0xFF;
 TCCR1A = 0x00;
 TCCR1C = 0x00;
 TCCR1B = 0x01; //start Timer
}

#pragma interrupt_handler timer1_compa_isr:iv_TIM1_COMPA
void timer1_compa_isr(void)
{
 //compare occured TCNT1=OCR1A
 if (arm_number == 0) { reset_1A(); }
 if (arm_number == 1) { reset_2A(); }
 if (arm_number == 2) { reset_3A(); }
 if (arm_number == 3) { reset_4A(); }
 if (arm_number == 4) { reset_5A(); }
 if (arm_number == 5) { reset_6A(); }
}

#pragma interrupt_handler timer1_compb_isr:iv_TIM1_COMPB
void timer1_compb_isr(void)
{
 //compare occured TCNT1=OCR1B
 if (arm_number == 0) { reset_1B(); }
 if (arm_number == 1) { reset_2B(); }
 if (arm_number == 2) { reset_3B(); }
 if (arm_number == 3) { reset_4B(); }
 if (arm_number == 4) { reset_5B(); }
 if (arm_number == 5) { reset_6B(); }
}

#pragma interrupt_handler timer1_compc_isr:iv_TIM1_COMPC
void timer1_compc_isr(void)
{
 //compare occured TCNT1=OCR1c
 if (arm_number == 0) { reset_1C(); }
 if (arm_number == 1) { reset_2C(); }
 if (arm_number == 2) { reset_3C(); }
 if (arm_number == 3) { reset_4C(); }
 if (arm_number == 4) { reset_5C(); }
 if (arm_number == 5) { reset_6C(); }
}

#pragma interrupt_handler timer1_ovf_isr:iv_TIM1_OVF
void timer1_ovf_isr(void)
{
 //TIMER1 has overflowed
 TCNT1H = 0x94; //reload counter high value
 TCNT1L = 0x01; //reload counter low value
 delay_count++;
 arm_number ++;
 if (arm_number>7)
 {
  	arm_number = 0;
 }
   
 if (arm_number == 0)
 {
  set_1A(); 
  set_1B(); 
  set_1C();
  OCR1AH = angle_upper_byte_1A;
  OCR1AL = angle_lower_byte_1A;
  OCR1BH = angle_upper_byte_1B;
  OCR1BL = angle_lower_byte_1B;
  OCR1CH = angle_upper_byte_1C;
  OCR1CL = angle_lower_byte_1C;
 }
 
 if (arm_number == 1)
 {
  set_2A(); 
  set_2B(); 
  set_2C();
  OCR1AH = angle_upper_byte_2A;
  OCR1AL = angle_lower_byte_2A;
  OCR1BH = angle_upper_byte_2B;
  OCR1BL = angle_lower_byte_2B;
  OCR1CH = angle_upper_byte_2C;
  OCR1CL = angle_lower_byte_2C;
 }
 
 if (arm_number == 2)
 {
  set_3A(); 
  set_3B(); 
  set_3C();
  OCR1AH = angle_upper_byte_3A;
  OCR1AL = angle_lower_byte_3A;
  OCR1BH = angle_upper_byte_3B;
  OCR1BL = angle_lower_byte_3B;
  OCR1CH = angle_upper_byte_3C;
  OCR1CL = angle_lower_byte_3C;
 }
 
 if (arm_number == 3)
 {
  set_4A(); 
  set_4B(); 
  set_4C();
  OCR1AH = angle_upper_byte_4A;
  OCR1AL = angle_lower_byte_4A;
  OCR1BH = angle_upper_byte_4B;
  OCR1BL = angle_lower_byte_4B;
  OCR1CH = angle_upper_byte_4C;
  OCR1CL = angle_lower_byte_4C;
 }
 
 if (arm_number == 4)
 {
  set_5A(); 
  set_5B(); 
  set_5C();
  OCR1AH = angle_upper_byte_5A;
  OCR1AL = angle_lower_byte_5A;
  OCR1BH = angle_upper_byte_5B;
  OCR1BL = angle_lower_byte_5B;
  OCR1CH = angle_upper_byte_5C;
  OCR1CL = angle_lower_byte_5C;
 }
 
 if (arm_number == 5)
 {
  set_6A(); 
  set_6B(); 
  set_6C();
  OCR1AH = angle_upper_byte_6A;
  OCR1AL = angle_lower_byte_6A;
  OCR1BH = angle_upper_byte_6B;
  OCR1BL = angle_lower_byte_6B;
  OCR1CH = angle_upper_byte_6C;
  OCR1CL = angle_lower_byte_6C;
 }
 //serial communication related code
 serial_communication_interval ++;
  if (serial_communication_interval > 40) //gives time interval of 40*2.5ms = 100ms
 {
  serial_communication_interval = 0;
  serial_communication_channel_number++;
  if(serial_communication_channel_number > 4) //set maximum number of command (can be set up to 7)
  {
  serial_communication_channel_number  = 3; //set first command to begin with (can be set up to 1)
  }
  UDR0 = serial_communication_channel_number;
 }
}

//UART0 initialize
// desired baud rate: 9600
// actual: baud rate:9600 (0.0%)
// char size: 8 bit
// parity: Disabled
void uart0_init(void)
{
 UCSR0B = 0x00; //disable while setting baud rate
 UCSR0A = 0x00;
 UCSR0C = 0x06;
 UBRR0L = 0x47; //set baud rate lo
 UBRR0H = 0x00; //set baud rate hi
 UCSR0B = 0x98;
}

#pragma interrupt_handler uart0_rx_isr:iv_USART0_RXC
void uart0_rx_isr(void)
{
 //uart has received a character in UDR
 remote_data[serial_communication_channel_number] = UDR0;  
}

//call this routine to initialize all peripherals
void init_devices(void)
{
 //stop errant interrupts until set up
 CLI(); //disable all interrupts
 XMCRA = 0x00; //external memory
 XMCRB = 0x00; //external memory
 port_init();
 timer1_init();
 uart0_init();

 MCUCR  = 0x00;
 EICRA  = 0x00; //pin change int edge 0:3
 EICRB  = 0x00; //pin change int edge 4:7
 PCICR  = 0x00; //pin change int enable
 PCMSK0 = 0x00; //pin change mask
 PCMSK1 = 0x00; //pin change mask
 PCMSK2 = 0x00; //pin change mask
 EIMSK  = 0x00;
 TIMSK0 = 0x00; //timer0 interrupt sources
 TIMSK1 = 0x0F; //timer1 interrupt sources
 TIMSK2 = 0x00; //timer2 interrupt sources
 TIMSK3 = 0x00; //timer3 interrupt sources
 TIMSK4 = 0x00; //timer4 interrupt sources
 TIMSK5 = 0x00; //timer5 interrupt sources
 
 SEI(); //re-enable interrupts
 //all peripherals are now initialized
}

void angle_value_calculation (void)
{
 unsigned int angle_value = 0;
 unsigned int temp = 0;
 if (degree > 180)
 degree = 180; // limiting the scope of the servo rotation
 
 angle_value = 0xBF39 + (64 * (unsigned char) degree); //actual constant is 64.4
 
 angle_lower_byte = (unsigned char) angle_value; //separating the lower byte
 
 temp = angle_value >> 8;
 angle_upper_byte = (unsigned char) temp; //separating the upper byte
}


void angle_1A (unsigned char angle)
{
 _1A = degree = angle;
 angle_value_calculation();
 angle_upper_byte_1A = angle_upper_byte;
 angle_lower_byte_1A = angle_lower_byte;
}

void angle_1B (unsigned char angle)
{
 _1B = degree = angle;
 angle_value_calculation();
 angle_upper_byte_1B = angle_upper_byte;
 angle_lower_byte_1B = angle_lower_byte;
}

void angle_1C (unsigned char angle)
{
 _1C = degree = angle;
 angle_value_calculation();
 angle_upper_byte_1C = angle_upper_byte;
 angle_lower_byte_1C = angle_lower_byte;
}

void angle_2A (unsigned char angle)
{
 _2A = degree = angle;
 angle_value_calculation();
 angle_upper_byte_2A = angle_upper_byte;
 angle_lower_byte_2A = angle_lower_byte;
}

void angle_2B (unsigned char angle)
{
 angle = angle+9;		//Setting this offset for error correction in servo 2B
 	   	 				//The above line is not required if the servo 2B is working correctly
	/* Such offsets are often introduced to remove or atleast minimize hardware errors with the slight change in code
	   This is one of the example, where instead of replacing a costly servo motor, we have set an offset to its value */
	   
 _2B = degree = angle;
 angle_value_calculation();
 angle_upper_byte_2B = angle_upper_byte;
 angle_lower_byte_2B = angle_lower_byte;
}

void angle_2C (unsigned char angle)
{
 _2C = degree = angle;
 angle_value_calculation();
 angle_upper_byte_2C = angle_upper_byte;
 angle_lower_byte_2C = angle_lower_byte;
}

void angle_3A (unsigned char angle)
{
 _3A = degree = angle;
 angle_value_calculation();
 angle_upper_byte_3A = angle_upper_byte;
 angle_lower_byte_3A = angle_lower_byte;
}

void angle_3B (unsigned char angle)
{
 _3B = degree = angle;
 angle_value_calculation();
 angle_upper_byte_3B = angle_upper_byte;
 angle_lower_byte_3B = angle_lower_byte;
}

void angle_3C (unsigned char angle)
{
 _3C = degree = angle;
 angle_value_calculation();
 angle_upper_byte_3C = angle_upper_byte;
 angle_lower_byte_3C = angle_lower_byte;
}

void angle_4A (unsigned char angle)
{
 _4A = degree = angle;
 angle_value_calculation();
 angle_upper_byte_4A = angle_upper_byte;
 angle_lower_byte_4A = angle_lower_byte;
}

void angle_4B (unsigned char angle)
{
 _4B = angle;
 degree = 180 - angle;
 angle_value_calculation();
 angle_upper_byte_4B = angle_upper_byte;
 angle_lower_byte_4B = angle_lower_byte;
}

void angle_4C (unsigned char angle)
{
 _4C = angle;
 degree = 180 - angle;
 angle_value_calculation();
 angle_upper_byte_4C = angle_upper_byte;
 angle_lower_byte_4C = angle_lower_byte;
}

void angle_5A (unsigned char angle)
{
 _5A = degree = angle;
 angle_value_calculation();
 angle_upper_byte_5A = angle_upper_byte;
 angle_lower_byte_5A = angle_lower_byte;
}

void angle_5B (unsigned char angle)
{
 _5B = angle;
 degree = 180 - angle;
 angle_value_calculation();
 angle_upper_byte_5B = angle_upper_byte;
 angle_lower_byte_5B = angle_lower_byte;
}

void angle_5C (unsigned char angle)
{
 _5C = angle;
 degree = 180 - angle;
 angle_value_calculation();
 angle_upper_byte_5C = angle_upper_byte;
 angle_lower_byte_5C = angle_lower_byte;
}

void angle_6A (unsigned char angle)
{
 _6A = degree = angle;
 angle_value_calculation();
 angle_upper_byte_6A = angle_upper_byte;
 angle_lower_byte_6A = angle_lower_byte;
}

void angle_6B (unsigned char angle)
{
 _6B = angle;
 degree = 180 - angle;
 angle_value_calculation();
 angle_upper_byte_6B = angle_upper_byte;
 angle_lower_byte_6B = angle_lower_byte;
}

void angle_6C (unsigned char angle)
{
 _6C = angle;
 degree = 180 - angle;
 angle_value_calculation();
 angle_upper_byte_6C = angle_upper_byte;
 angle_lower_byte_6C = angle_lower_byte;
}

void buzzer_on (void)
{
 PORTC = PORTC | 0x08;
}

void buzzer_off (void)
{
 PORTC = PORTC & 0xF7;
}