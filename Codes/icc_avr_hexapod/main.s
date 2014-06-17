	.module main.c
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
_arm_number::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e arm_number _arm_number c
_angle_upper_byte::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e angle_upper_byte _angle_upper_byte c
_angle_lower_byte::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e angle_lower_byte _angle_lower_byte c
_degree::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e degree _degree c
_delay_count::
	.blkb 2
	.area idata
	.word 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e delay_count _delay_count i
_serial_communication_interval::
	.blkb 2
	.area idata
	.word 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e serial_communication_interval _serial_communication_interval i
_serial_communication_channel_number::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e serial_communication_channel_number _serial_communication_channel_number c
_motion_busy::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e motion_busy _motion_busy c
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbfunc e servo_on _servo_on fV
	.even
_servo_on::
	.dbline -1
	.dbline 227
; /**
; 
;  hexapod_firebirdv.h : Basic control operations setting ports, defining interfaces, etc. for FirebirdV platform.
;  @author Group 10: Abhinav Maurya 10305016
;  		 	   	   Yogesh Kakde	  10305039
; 				   Lokesh Rajwani 10305066
;  
;  AVR Studio Version 4.17, Build 666
; 
;  Date: 6th November 2010
;  
;     Make sure that in the configuration options following settings are 
;  	done for proper operation of the code
; 
;  	Microcontroller: atmega2560
;  	Frequency: 11059200
;  	Optimization: -O0 (For more information read section: Selecting proper optimization options 
; 						below figure 4.22 in the hardware manual)
; *********************************************************************************/
; 
; 
; /********************************************************************************
; 
;    Copyright (c) 2010, ERTS Lab IIT Bombay erts@cse.iitb.ac.in               -*- c -*-
;    All rights reserved.
; 
;    Redistribution and use in source and binary forms, with or without
;    modification, are permitted provided that the following conditions are met:
; 
;    * Redistributions of source code must retain the above copyright
;      notice, this list of conditions and the following disclaimer.
; 
;    * Redistributions in binary form must reproduce the above copyright
;      notice, this list of conditions and the following disclaimer in
;      the documentation and/or other materials provided with the
;      distribution.
; 
;    * Neither the name of the copyright holders nor the names of
;      contributors may be used to endorse or promote products derived
;      from this software without specific prior written permission.
; 
;    * Source code can be used for academic purpose. 
; 	 For commercial use permission form the author needs to be taken.
; 
;   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;   POSSIBILITY OF SUCH DAMAGE. 
; 
; ********************************************************************************/
; 
; 
; 	// Application: ICC-AVR
; // Target: M2560
; // Crystal: 11.059Mhz
; 
; //List of variables supplied by this header file, hexapod_firebirdv.h
; /*
; unsigned char arm_number;
; unsigned char angle_upper_byte; 
; unsigned char angle_lower_byte;
; unsigned char degree;
; unsigned char _1A, _1B, _1C, _2A, _2B, _2C, _3A, _3B, _3C, _4A, _4B, _4C, _5A, _5B, _5C, _6A, _6B, _6C;
; unsigned char angle_upper_byte_1A, angle_lower_byte_1A, angle_upper_byte_1B, angle_lower_byte_1B, angle_upper_byte_1C, angle_lower_byte_1C;
; unsigned char angle_upper_byte_2A, angle_lower_byte_2A, angle_upper_byte_2B, angle_lower_byte_2B, angle_upper_byte_2C, angle_lower_byte_2C;
; unsigned char angle_upper_byte_3A, angle_lower_byte_3A, angle_upper_byte_3B, angle_lower_byte_3B, angle_upper_byte_3C, angle_lower_byte_3C;
; unsigned char angle_upper_byte_4A, angle_lower_byte_4A, angle_upper_byte_4B, angle_lower_byte_4B, angle_upper_byte_4C, angle_lower_byte_4C;
; unsigned char angle_upper_byte_5A, angle_lower_byte_5A, angle_upper_byte_5B, angle_lower_byte_5B, angle_upper_byte_5C, angle_lower_byte_5C;
; unsigned char angle_upper_byte_6A, angle_lower_byte_6A, angle_upper_byte_6B, angle_lower_byte_6B, angle_upper_byte_6C, angle_lower_byte_6C;
; unsigned int delay_count;
; unsigned int serial_communication_interval;
; unsigned char serial_communication_channel_number;
; unsigned char remote_data [8];
; unsigned char motion_busy;
; */
; 
; //List of functions supplied by this header file, hexapod_firebirdv.h
; /*
; void servo_on (void);
; void servo_off (void);
; void reset_SP_LEFT (void);
; void set_SP_LEFT (void);
; void reset_1A (void);
; void set_1A (void);
; void reset_1B (void);
; void set_1B (void);
; void reset_1C (void);
; void set_1C (void);
; void reset_2A (void);
; void set_2A (void);
; void reset_2B (void);
; void set_2B (void);
; void reset_2C (void);
; void set_2C (void);
; void reset_3A (void);
; void set_3A (void);
; void reset_3B (void);
; void set_3B (void);
; void reset_3C (void);
; void set_3C (void);
; void reset_SP_RIGHT (void);
; void set_SP_RIGHT (void);
; void reset_4A (void);
; void set_4A (void);
; void reset_4B (void);
; void set_4B (void);
; void reset_4C (void);
; void set_4C (void);
; void reset_5A (void);
; void set_5A (void);
; void reset_5B (void);
; void set_5B (void);
; void reset_5C (void);
; void set_5C (void);
; void reset_6A (void);
; void set_6A (void);
; void reset_6B (void);
; void set_6B (void);
; void reset_6C (void);
; void set_6C (void);
; void delay (int millisec);
; void delay_100ms (void);
; void delay_250ms (void);
; void delay_500ms (void);
; void delay_1s (void);
; void port_init (void);
; void timer1_init (void);
; void timer1_compa_isr (void);
; void timer1_compb_isr (void);
; void timer1_compc_isr (void);
; void timer1_ovf_isr (void);
; void uart0_init (void);
; void uart0_rx_isr (void);
; void init_devices (void);
; void angle_value_calculation (void);
; void angle_1A (unsigned char angle);
; void angle_1B (unsigned char angle);
; void angle_1C (unsigned char angle);
; void angle_2A (unsigned char angle);
; void angle_2B (unsigned char angle);
; void angle_2C (unsigned char angle);
; void angle_3A (unsigned char angle);
; void angle_3B (unsigned char angle);
; void angle_3C (unsigned char angle);
; void angle_4A (unsigned char angle);
; void angle_4B (unsigned char angle);
; void angle_4C (unsigned char angle);
; void angle_5A (unsigned char angle);
; void angle_5B (unsigned char angle);
; void angle_5C (unsigned char angle);
; void angle_6A (unsigned char angle);
; void angle_6B (unsigned char angle);
; void angle_6C (unsigned char angle);
; void buzzer_on (void);
; void buzzer_off (void);
; */
; 
; /*
; Pin name	Port		Anding (make 0)		Oring (make 1)
; SP LEFT	PL1		1111 1101	0xFD		0000 0010	0x02
; 
; 1A		PD5		1101 1111	0xDF		0010 0000	0x20
; 1B		PL2		1111 1011	0xFB		0000 0100	0x04
; 1C		PG1		1111 1101	0xFD		0000 0010	0x02
; 2A		PL6		1011 1111	0xBF		0100 0000	0x40
; 2B		PD4		1110 1111	0xEF		0001 0000	0x10
; 2C		PL7		0111 1111	0x7F		1000 0000	0x80
; 3A		PH6		1011 1111	0xBF		0100 0000	0x40
; 3B		PH4		1110 1111	0xEF		0001 0000	0x10
; 3C		PH5		1101 1111	0xDF		0010 0000	0x20
; SP RIGHT	PJ7		0111 1111	0x7F		1000 0000	0x80
; 4A		PG0		1111 1110	0xFE		0000 0001	0x01
; 4B		PD7		0111 1111	0x7F		1000 0000	0x80
; 4C		PD6		1011 1111	0xBF		0100 0000	0x40
; 5A		PJ5		1101 1111	0xDF		0010 0000	0x20
; 5B		PJ6		1011 1111	0xBF		0100 0000	0x40
; 5C		PJ4		1110 1111	0xEF		0001 0000	0x10
; 6A		PJ3		1111 0111	0XF7		0000 1000	0x08
; 6B		PJ1		1111 1101	0xFD		0000 0010	0x02
; 6C		PJ2		1111 1011	0xFB		0000 0100	0x04
; 
; Remote control communication protocoal
; transmitted command		received data
; 1						right joystick x axis 8 bit analog position;	center:0x24; left: 0x3B; right: 0x04
; 2						right joystick y axis 8 bit analog position;	center:0x24; up: 0x3B; down: 0x04
; 3						left joystick x axis 8 bit analog position;		center:0x3A; left: 0x23; right: 0x04
; 4						left joystick y axis 8 bit analog position;		center:0x1F; up: 0x34; down: 0x04
; 5						right joystick button
; 6						left joystick button
; 7						digital switches left 1,2 and right 1,2
; 						bit7: Right 2; bit6: right 1; bit4: left 1; bit3: left 2
; 
; Received data will be stored in the array unsigned char remote_data [8]; from the location 1 to 7 in the same order as the command.
; */
; 
; #include <iom2560v.h>
; #include <macros.h>
; 
; #define angle(motor, angle) { degree = angle; angle_value_calculation(); angle_upper_byte_motor = angle_upper_byte; angle_lower_byte_motor = angle_lower_byte; }
; 
; unsigned char arm_number = 0;
; unsigned char angle_upper_byte = 0; 
; unsigned char angle_lower_byte = 0;
; unsigned char degree = 0;
; unsigned char _1A, _1B, _1C, _2A, _2B, _2C, _3A, _3B, _3C, _4A, _4B, _4C, _5A, _5B, _5C, _6A, _6B, _6C;
; unsigned char angle_upper_byte_1A, angle_lower_byte_1A, angle_upper_byte_1B, angle_lower_byte_1B, angle_upper_byte_1C, angle_lower_byte_1C;
; unsigned char angle_upper_byte_2A, angle_lower_byte_2A, angle_upper_byte_2B, angle_lower_byte_2B, angle_upper_byte_2C, angle_lower_byte_2C;
; unsigned char angle_upper_byte_3A, angle_lower_byte_3A, angle_upper_byte_3B, angle_lower_byte_3B, angle_upper_byte_3C, angle_lower_byte_3C;
; unsigned char angle_upper_byte_4A, angle_lower_byte_4A, angle_upper_byte_4B, angle_lower_byte_4B, angle_upper_byte_4C, angle_lower_byte_4C;
; unsigned char angle_upper_byte_5A, angle_lower_byte_5A, angle_upper_byte_5B, angle_lower_byte_5B, angle_upper_byte_5C, angle_lower_byte_5C;
; unsigned char angle_upper_byte_6A, angle_lower_byte_6A, angle_upper_byte_6B, angle_lower_byte_6B, angle_upper_byte_6C, angle_lower_byte_6C;
; unsigned int delay_count = 0;
; //variables relatd to the serial commuication or remote control
; unsigned int serial_communication_interval = 0;
; unsigned char serial_communication_channel_number  = 0;
; unsigned char remote_data [8]; //see remote channel allocation in the notes above
; unsigned char motion_busy = 0; //sets to one if any of the motion function is called.
; 
; void servo_on (void)
; { PORTB = PORTB | 0x01; }
	.dbline 227
	sbi 0x5,0
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e servo_off _servo_off fV
	.even
_servo_off::
	.dbline -1
	.dbline 230
; 
; void servo_off (void)
; { PORTB = PORTB & 0xFE; }
	.dbline 230
	in R24,0x5
	andi R24,254
	out 0x5,R24
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_SP_LEFT _reset_SP_LEFT fV
	.even
_reset_SP_LEFT::
	.dbline -1
	.dbline 233
; 
; void reset_SP_LEFT (void)
; { PORTL = PORTL & 0xFD; }
	.dbline 233
	lds R24,267
	andi R24,253
	sts 267,R24
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_SP_LEFT _set_SP_LEFT fV
	.even
_set_SP_LEFT::
	.dbline -1
	.dbline 236
; 
; void set_SP_LEFT (void)
; { PORTL = PORTL | 0x02; }
	.dbline 236
	lds R24,267
	ori R24,2
	sts 267,R24
	.dbline -2
L4:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_1A _reset_1A fV
	.even
_reset_1A::
	.dbline -1
	.dbline 239
; 
; void reset_1A (void)
; { PORTD = PORTD & 0xDF; }
	.dbline 239
	in R24,0xb
	andi R24,223
	out 0xb,R24
	.dbline -2
L5:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_1A _set_1A fV
	.even
_set_1A::
	.dbline -1
	.dbline 242
; 
; void set_1A (void)
; { PORTD = PORTD | 0x20; }
	.dbline 242
	sbi 0xb,5
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_1B _reset_1B fV
	.even
_reset_1B::
	.dbline -1
	.dbline 245
; 
; void reset_1B (void)
; { PORTL = PORTL & 0xFB; }
	.dbline 245
	lds R24,267
	andi R24,251
	sts 267,R24
	.dbline -2
L7:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_1B _set_1B fV
	.even
_set_1B::
	.dbline -1
	.dbline 248
; 
; void set_1B (void)
; { PORTL = PORTL | 0x04; }
	.dbline 248
	lds R24,267
	ori R24,4
	sts 267,R24
	.dbline -2
L8:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_1C _reset_1C fV
	.even
_reset_1C::
	.dbline -1
	.dbline 251
; 
; void reset_1C (void)
; { PORTG = PORTG & 0xFD; }
	.dbline 251
	in R24,0x14
	andi R24,253
	out 0x14,R24
	.dbline -2
L9:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_1C _set_1C fV
	.even
_set_1C::
	.dbline -1
	.dbline 254
; 
; void set_1C (void)
; { PORTG = PORTG | 0x02; }
	.dbline 254
	sbi 0x14,1
	.dbline -2
L10:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_2A _reset_2A fV
	.even
_reset_2A::
	.dbline -1
	.dbline 257
; 
; void reset_2A (void)
; { PORTL = PORTL & 0xBF; }
	.dbline 257
	lds R24,267
	andi R24,191
	sts 267,R24
	.dbline -2
L11:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_2A _set_2A fV
	.even
_set_2A::
	.dbline -1
	.dbline 260
; 
; void set_2A (void)
; { PORTL = PORTL | 0x40; }
	.dbline 260
	lds R24,267
	ori R24,64
	sts 267,R24
	.dbline -2
L12:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_2B _reset_2B fV
	.even
_reset_2B::
	.dbline -1
	.dbline 263
; 
; void reset_2B (void)
; { PORTD = PORTD & 0xEF; }
	.dbline 263
	in R24,0xb
	andi R24,239
	out 0xb,R24
	.dbline -2
L13:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_2B _set_2B fV
	.even
_set_2B::
	.dbline -1
	.dbline 266
; 
; void set_2B (void)
; { PORTD = PORTD | 0x10; }
	.dbline 266
	sbi 0xb,4
	.dbline -2
L14:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_2C _reset_2C fV
	.even
_reset_2C::
	.dbline -1
	.dbline 269
; 
; void reset_2C (void)
; { PORTL = PORTL & 0x7F; }
	.dbline 269
	lds R24,267
	andi R24,127
	sts 267,R24
	.dbline -2
L15:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_2C _set_2C fV
	.even
_set_2C::
	.dbline -1
	.dbline 272
; 
; void set_2C (void)
; { PORTL = PORTL | 0x80; }
	.dbline 272
	lds R24,267
	ori R24,128
	sts 267,R24
	.dbline -2
L16:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_3A _reset_3A fV
	.even
_reset_3A::
	.dbline -1
	.dbline 275
; 
; void reset_3A (void)
; { PORTH = PORTH & 0xBF; }
	.dbline 275
	lds R24,258
	andi R24,191
	sts 258,R24
	.dbline -2
L17:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_3A _set_3A fV
	.even
_set_3A::
	.dbline -1
	.dbline 278
; 
; void set_3A (void)
; { PORTH = PORTH | 0x40; }
	.dbline 278
	lds R24,258
	ori R24,64
	sts 258,R24
	.dbline -2
L18:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_3B _reset_3B fV
	.even
_reset_3B::
	.dbline -1
	.dbline 281
; 
; void reset_3B (void)
; { PORTH = PORTH & 0xEF; }
	.dbline 281
	lds R24,258
	andi R24,239
	sts 258,R24
	.dbline -2
L19:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_3B _set_3B fV
	.even
_set_3B::
	.dbline -1
	.dbline 284
; 
; void set_3B (void)
; { PORTH = PORTH | 0x10; }
	.dbline 284
	lds R24,258
	ori R24,16
	sts 258,R24
	.dbline -2
L20:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_3C _reset_3C fV
	.even
_reset_3C::
	.dbline -1
	.dbline 287
; 
; void reset_3C (void)
; { PORTH = PORTH & 0xDF; }
	.dbline 287
	lds R24,258
	andi R24,223
	sts 258,R24
	.dbline -2
L21:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_3C _set_3C fV
	.even
_set_3C::
	.dbline -1
	.dbline 290
; 
; void set_3C (void)
; { PORTH = PORTH | 0x20; }
	.dbline 290
	lds R24,258
	ori R24,32
	sts 258,R24
	.dbline -2
L22:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_SP_RIGHT _reset_SP_RIGHT fV
	.even
_reset_SP_RIGHT::
	.dbline -1
	.dbline 293
; 
; void reset_SP_RIGHT (void)
; { PORTJ = PORTJ & 0x7F; }
	.dbline 293
	lds R24,261
	andi R24,127
	sts 261,R24
	.dbline -2
L23:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_SP_RIGHT _set_SP_RIGHT fV
	.even
_set_SP_RIGHT::
	.dbline -1
	.dbline 296
; 
; void set_SP_RIGHT (void)
; { PORTJ = PORTJ | 0x80; }
	.dbline 296
	lds R24,261
	ori R24,128
	sts 261,R24
	.dbline -2
L24:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_4A _reset_4A fV
	.even
_reset_4A::
	.dbline -1
	.dbline 299
; 
; void reset_4A (void)
; { PORTG = PORTG & 0xFE; }
	.dbline 299
	in R24,0x14
	andi R24,254
	out 0x14,R24
	.dbline -2
L25:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_4A _set_4A fV
	.even
_set_4A::
	.dbline -1
	.dbline 302
; 
; void set_4A (void)
; { PORTG = PORTG | 0x01; }
	.dbline 302
	sbi 0x14,0
	.dbline -2
L26:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_4B _reset_4B fV
	.even
_reset_4B::
	.dbline -1
	.dbline 305
; 
; void reset_4B (void)
; { PORTD = PORTD & 0x7F; }
	.dbline 305
	in R24,0xb
	andi R24,127
	out 0xb,R24
	.dbline -2
L27:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_4B _set_4B fV
	.even
_set_4B::
	.dbline -1
	.dbline 308
; 
; void set_4B (void)
; { PORTD = PORTD | 0x80; }
	.dbline 308
	sbi 0xb,7
	.dbline -2
L28:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_4C _reset_4C fV
	.even
_reset_4C::
	.dbline -1
	.dbline 311
; 
; void reset_4C (void)
; { PORTD = PORTD & 0xBF; }
	.dbline 311
	in R24,0xb
	andi R24,191
	out 0xb,R24
	.dbline -2
L29:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_4C _set_4C fV
	.even
_set_4C::
	.dbline -1
	.dbline 314
; 
; void set_4C (void)
; { PORTD = PORTD | 0x40; }
	.dbline 314
	sbi 0xb,6
	.dbline -2
L30:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_5A _reset_5A fV
	.even
_reset_5A::
	.dbline -1
	.dbline 317
; 
; void reset_5A (void)
; { PORTJ = PORTJ & 0xDF; }
	.dbline 317
	lds R24,261
	andi R24,223
	sts 261,R24
	.dbline -2
L31:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_5A _set_5A fV
	.even
_set_5A::
	.dbline -1
	.dbline 320
; 
; void set_5A (void)
; { PORTJ = PORTJ | 0x20; }
	.dbline 320
	lds R24,261
	ori R24,32
	sts 261,R24
	.dbline -2
L32:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_5B _reset_5B fV
	.even
_reset_5B::
	.dbline -1
	.dbline 323
; 
; void reset_5B (void)
; { PORTJ = PORTJ & 0xBF; }
	.dbline 323
	lds R24,261
	andi R24,191
	sts 261,R24
	.dbline -2
L33:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_5B _set_5B fV
	.even
_set_5B::
	.dbline -1
	.dbline 326
; 
; void set_5B (void)
; { PORTJ = PORTJ | 0x40; }
	.dbline 326
	lds R24,261
	ori R24,64
	sts 261,R24
	.dbline -2
L34:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_5C _reset_5C fV
	.even
_reset_5C::
	.dbline -1
	.dbline 329
; 
; void reset_5C (void)
; { PORTJ = PORTJ & 0xEF; }
	.dbline 329
	lds R24,261
	andi R24,239
	sts 261,R24
	.dbline -2
L35:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_5C _set_5C fV
	.even
_set_5C::
	.dbline -1
	.dbline 332
; 
; void set_5C (void)
; { PORTJ = PORTJ | 0x10; }
	.dbline 332
	lds R24,261
	ori R24,16
	sts 261,R24
	.dbline -2
L36:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_6A _reset_6A fV
	.even
_reset_6A::
	.dbline -1
	.dbline 335
; 
; void reset_6A (void)
; { PORTJ = PORTJ & 0xF7; }
	.dbline 335
	lds R24,261
	andi R24,247
	sts 261,R24
	.dbline -2
L37:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_6A _set_6A fV
	.even
_set_6A::
	.dbline -1
	.dbline 338
; 
; void set_6A (void)
; { PORTJ = PORTJ | 0x08; }
	.dbline 338
	lds R24,261
	ori R24,8
	sts 261,R24
	.dbline -2
L38:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_6B _reset_6B fV
	.even
_reset_6B::
	.dbline -1
	.dbline 341
; 
; void reset_6B (void)
; { PORTJ = PORTJ & 0xFD; }
	.dbline 341
	lds R24,261
	andi R24,253
	sts 261,R24
	.dbline -2
L39:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_6B _set_6B fV
	.even
_set_6B::
	.dbline -1
	.dbline 344
; 
; void set_6B (void)
; { PORTJ = PORTJ | 0x02; }
	.dbline 344
	lds R24,261
	ori R24,2
	sts 261,R24
	.dbline -2
L40:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e reset_6C _reset_6C fV
	.even
_reset_6C::
	.dbline -1
	.dbline 347
; 
; void reset_6C (void)
; { PORTJ = PORTJ & 0xFB; }
	.dbline 347
	lds R24,261
	andi R24,251
	sts 261,R24
	.dbline -2
L41:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e set_6C _set_6C fV
	.even
_set_6C::
	.dbline -1
	.dbline 350
; 
; void set_6C (void)
; { PORTJ = PORTJ | 0x04; }
	.dbline 350
	lds R24,261
	ori R24,4
	sts 261,R24
	.dbline -2
L42:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e delay _delay fV
;       millisec -> R10,R11
	.even
_delay::
	st -y,R10
	st -y,R11
	movw R10,R16
	.dbline -1
	.dbline 353
; 
; void delay(int millisec)
; {
	.dbline 354
;  if(millisec <=0) return;
	clr R2
	clr R3
	cp R2,R10
	cpc R3,R11
	brlt L44
X0:
	.dbline 354
	xjmp L43
L44:
	.dbline 355
;  delay_count = 0;
	clr R2
	clr R3
	sts _delay_count+1,R3
	sts _delay_count,R2
L46:
	.dbline 356
;  while(delay_count*5 < millisec*2);
L47:
	.dbline 356
	lds R18,_delay_count
	lds R19,_delay_count+1
	ldi R16,5
	ldi R17,0
	xcall empy16s
	movw R2,R10
	lsl R2
	rol R3
	cp R16,R2
	cpc R17,R3
	brlo L46
X1:
	.dbline -2
L43:
	.dbline 0 ; func end
	ld R11,y+
	ld R10,y+
	ret
	.dbsym r millisec 10 I
	.dbend
	.dbfunc e delay_100ms _delay_100ms fV
	.even
_delay_100ms::
	.dbline -1
	.dbline 360
; }
; 
; void delay_100ms(void)
; {
	.dbline 361
;  delay_count = 0;
	clr R2
	clr R3
	sts _delay_count+1,R3
	sts _delay_count,R2
L50:
	.dbline 362
;  while(delay_count < 40);
L51:
	.dbline 362
	lds R24,_delay_count
	lds R25,_delay_count+1
	cpi R24,40
	ldi R30,0
	cpc R25,R30
	brlo L50
X2:
	.dbline -2
L49:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e delay_250ms _delay_250ms fV
	.even
_delay_250ms::
	.dbline -1
	.dbline 366
; }
; 
; void delay_250ms(void)
; {
	.dbline 367
;  delay_count = 0;
	clr R2
	clr R3
	sts _delay_count+1,R3
	sts _delay_count,R2
L54:
	.dbline 368
;  while(delay_count < 100);
L55:
	.dbline 368
	lds R24,_delay_count
	lds R25,_delay_count+1
	cpi R24,100
	ldi R30,0
	cpc R25,R30
	brlo L54
X3:
	.dbline -2
L53:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e delay_500ms _delay_500ms fV
	.even
_delay_500ms::
	.dbline -1
	.dbline 372
; }
; 
; void delay_500ms(void)
; {
	.dbline 373
;  delay_count = 0;
	clr R2
	clr R3
	sts _delay_count+1,R3
	sts _delay_count,R2
L58:
	.dbline 374
;  while(delay_count < 200);
L59:
	.dbline 374
	lds R24,_delay_count
	lds R25,_delay_count+1
	cpi R24,200
	ldi R30,0
	cpc R25,R30
	brlo L58
X4:
	.dbline -2
L57:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e delay_1s _delay_1s fV
	.even
_delay_1s::
	.dbline -1
	.dbline 378
; }
; 
; void delay_1s(void)
; {
	.dbline 379
;  delay_count = 0;
	clr R2
	clr R3
	sts _delay_count+1,R3
	sts _delay_count,R2
L62:
	.dbline 380
;  while(delay_count < 400);
L63:
	.dbline 380
	lds R24,_delay_count
	lds R25,_delay_count+1
	cpi R24,144
	ldi R30,1
	cpc R25,R30
	brlo L62
X5:
	.dbline -2
L61:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 384
; }
; 
; void port_init(void)
; {
	.dbline 385
;  PORTA = 0x00;
	clr R2
	out 0x2,R2
	.dbline 386
;  DDRA  = 0xFF;
	ldi R24,255
	out 0x1,R24
	.dbline 387
;  PORTB = 0x00;
	out 0x5,R2
	.dbline 388
;  DDRB  = 0x01;
	ldi R24,1
	out 0x4,R24
	.dbline 389
;  PORTC = 0x00; //m103 output only
	out 0x8,R2
	.dbline 390
;  DDRC  = 0xFF;
	ldi R24,255
	out 0x7,R24
	.dbline 391
;  PORTD = 0x00;
	out 0xb,R2
	.dbline 392
;  DDRD  = 0xF0;
	ldi R24,240
	out 0xa,R24
	.dbline 393
;  PORTE = 0x00;
	out 0xe,R2
	.dbline 394
;  DDRE  = 0x00;
	out 0xd,R2
	.dbline 395
;  PORTF = 0x00;
	out 0x11,R2
	.dbline 396
;  DDRF  = 0x00;
	out 0x10,R2
	.dbline 397
;  PORTG = 0x00;
	out 0x14,R2
	.dbline 398
;  DDRG  = 0x03;
	ldi R24,3
	out 0x13,R24
	.dbline 399
;  PORTH = 0x00;
	sts 258,R2
	.dbline 400
;  DDRH  = 0x70;
	ldi R24,112
	sts 257,R24
	.dbline 401
;  PORTJ = 0x00;
	sts 261,R2
	.dbline 402
;  DDRJ  = 0xFE; //0xFE original
	ldi R24,254
	sts 260,R24
	.dbline 403
;  PORTK = 0x00;
	sts 264,R2
	.dbline 404
;  DDRK  = 0x00;
	sts 263,R2
	.dbline 405
;  PORTL = 0x00;
	sts 267,R2
	.dbline 406
;  DDRL  = 0xC7;
	ldi R24,199
	sts 266,R24
	.dbline -2
L65:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 414
; }
; 
; //TIMER1 initialize - prescale:1
; // WGM: 0) Normal, TOP=0xFFFF
; // desired value: 400Hz
; // actual value: 400.007Hz (0.0%)
; void timer1_init(void)
; {
	.dbline 415
;  TCCR1B = 0x00; //stop
	clr R2
	sts 129,R2
	.dbline 416
;  TCNT1H = 0x94; //setup
	ldi R24,148
	sts 133,R24
	.dbline 417
;  TCNT1L = 0x01;
	ldi R24,1
	sts 132,R24
	.dbline 418
;  OCR1AH = 0x6B;
	ldi R24,107
	sts 137,R24
	.dbline 419
;  OCR1AL = 0xFF;
	ldi R24,255
	sts 136,R24
	.dbline 420
;  OCR1BH = 0x6B;
	ldi R24,107
	sts 139,R24
	.dbline 421
;  OCR1BL = 0xFF;
	ldi R24,255
	sts 138,R24
	.dbline 422
;  OCR1CH = 0x00;
	sts 141,R2
	.dbline 423
;  OCR1CL = 0x00;
	sts 140,R2
	.dbline 424
;  ICR1H  = 0x6B;
	ldi R24,107
	sts 135,R24
	.dbline 425
;  ICR1L  = 0xFF;
	ldi R24,255
	sts 134,R24
	.dbline 426
;  TCCR1A = 0x00;
	sts 128,R2
	.dbline 427
;  TCCR1C = 0x00;
	sts 130,R2
	.dbline 428
;  TCCR1B = 0x01; //start Timer
	ldi R24,1
	sts 129,R24
	.dbline -2
L66:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 68
	jmp _timer1_compa_isr
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbfunc e timer1_compa_isr _timer1_compa_isr fV
	.even
_timer1_compa_isr::
	st -y,R0
	st -y,R1
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R6
	st -y,R7
	st -y,R8
	st -y,R9
	st -y,R16
	st -y,R17
	st -y,R18
	st -y,R19
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R27
	st -y,R30
	st -y,R31
	in R0,0x3f
	st -y,R0
	.dbline -1
	.dbline 433
; }
; 
; #pragma interrupt_handler timer1_compa_isr:iv_TIM1_COMPA
; void timer1_compa_isr(void)
; {
	.dbline 435
;  //compare occured TCNT1=OCR1A
;  if (arm_number == 0) { reset_1A(); }
	lds R2,_arm_number
	tst R2
	brne L68
X6:
	.dbline 435
	.dbline 435
	xcall _reset_1A
	.dbline 435
L68:
	.dbline 436
;  if (arm_number == 1) { reset_2A(); }
	lds R24,_arm_number
	cpi R24,1
	brne L70
X7:
	.dbline 436
	.dbline 436
	xcall _reset_2A
	.dbline 436
L70:
	.dbline 437
;  if (arm_number == 2) { reset_3A(); }
	lds R24,_arm_number
	cpi R24,2
	brne L72
X8:
	.dbline 437
	.dbline 437
	xcall _reset_3A
	.dbline 437
L72:
	.dbline 438
;  if (arm_number == 3) { reset_4A(); }
	lds R24,_arm_number
	cpi R24,3
	brne L74
X9:
	.dbline 438
	.dbline 438
	xcall _reset_4A
	.dbline 438
L74:
	.dbline 439
;  if (arm_number == 4) { reset_5A(); }
	lds R24,_arm_number
	cpi R24,4
	brne L76
X10:
	.dbline 439
	.dbline 439
	xcall _reset_5A
	.dbline 439
L76:
	.dbline 440
;  if (arm_number == 5) { reset_6A(); }
	lds R24,_arm_number
	cpi R24,5
	brne L78
X11:
	.dbline 440
	.dbline 440
	xcall _reset_6A
	.dbline 440
L78:
	.dbline -2
L67:
	.dbline 0 ; func end
	ld R0,y+
	out 0x3f,R0
	ld R31,y+
	ld R30,y+
	ld R27,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R19,y+
	ld R18,y+
	ld R17,y+
	ld R16,y+
	ld R9,y+
	ld R8,y+
	ld R7,y+
	ld R6,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	ld R1,y+
	ld R0,y+
	reti
	.dbend
	.area vector(rom, abs)
	.org 72
	jmp _timer1_compb_isr
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbfunc e timer1_compb_isr _timer1_compb_isr fV
	.even
_timer1_compb_isr::
	st -y,R0
	st -y,R1
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R6
	st -y,R7
	st -y,R8
	st -y,R9
	st -y,R16
	st -y,R17
	st -y,R18
	st -y,R19
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R27
	st -y,R30
	st -y,R31
	in R0,0x3f
	st -y,R0
	.dbline -1
	.dbline 445
; }
; 
; #pragma interrupt_handler timer1_compb_isr:iv_TIM1_COMPB
; void timer1_compb_isr(void)
; {
	.dbline 447
;  //compare occured TCNT1=OCR1B
;  if (arm_number == 0) { reset_1B(); }
	lds R2,_arm_number
	tst R2
	brne L81
X12:
	.dbline 447
	.dbline 447
	xcall _reset_1B
	.dbline 447
L81:
	.dbline 448
;  if (arm_number == 1) { reset_2B(); }
	lds R24,_arm_number
	cpi R24,1
	brne L83
X13:
	.dbline 448
	.dbline 448
	xcall _reset_2B
	.dbline 448
L83:
	.dbline 449
;  if (arm_number == 2) { reset_3B(); }
	lds R24,_arm_number
	cpi R24,2
	brne L85
X14:
	.dbline 449
	.dbline 449
	xcall _reset_3B
	.dbline 449
L85:
	.dbline 450
;  if (arm_number == 3) { reset_4B(); }
	lds R24,_arm_number
	cpi R24,3
	brne L87
X15:
	.dbline 450
	.dbline 450
	xcall _reset_4B
	.dbline 450
L87:
	.dbline 451
;  if (arm_number == 4) { reset_5B(); }
	lds R24,_arm_number
	cpi R24,4
	brne L89
X16:
	.dbline 451
	.dbline 451
	xcall _reset_5B
	.dbline 451
L89:
	.dbline 452
;  if (arm_number == 5) { reset_6B(); }
	lds R24,_arm_number
	cpi R24,5
	brne L91
X17:
	.dbline 452
	.dbline 452
	xcall _reset_6B
	.dbline 452
L91:
	.dbline -2
L80:
	.dbline 0 ; func end
	ld R0,y+
	out 0x3f,R0
	ld R31,y+
	ld R30,y+
	ld R27,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R19,y+
	ld R18,y+
	ld R17,y+
	ld R16,y+
	ld R9,y+
	ld R8,y+
	ld R7,y+
	ld R6,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	ld R1,y+
	ld R0,y+
	reti
	.dbend
	.area vector(rom, abs)
	.org 76
	jmp _timer1_compc_isr
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbfunc e timer1_compc_isr _timer1_compc_isr fV
	.even
_timer1_compc_isr::
	st -y,R0
	st -y,R1
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R6
	st -y,R7
	st -y,R8
	st -y,R9
	st -y,R16
	st -y,R17
	st -y,R18
	st -y,R19
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R27
	st -y,R30
	st -y,R31
	in R0,0x3f
	st -y,R0
	.dbline -1
	.dbline 457
; }
; 
; #pragma interrupt_handler timer1_compc_isr:iv_TIM1_COMPC
; void timer1_compc_isr(void)
; {
	.dbline 459
;  //compare occured TCNT1=OCR1c
;  if (arm_number == 0) { reset_1C(); }
	lds R2,_arm_number
	tst R2
	brne L94
X18:
	.dbline 459
	.dbline 459
	xcall _reset_1C
	.dbline 459
L94:
	.dbline 460
;  if (arm_number == 1) { reset_2C(); }
	lds R24,_arm_number
	cpi R24,1
	brne L96
X19:
	.dbline 460
	.dbline 460
	xcall _reset_2C
	.dbline 460
L96:
	.dbline 461
;  if (arm_number == 2) { reset_3C(); }
	lds R24,_arm_number
	cpi R24,2
	brne L98
X20:
	.dbline 461
	.dbline 461
	xcall _reset_3C
	.dbline 461
L98:
	.dbline 462
;  if (arm_number == 3) { reset_4C(); }
	lds R24,_arm_number
	cpi R24,3
	brne L100
X21:
	.dbline 462
	.dbline 462
	xcall _reset_4C
	.dbline 462
L100:
	.dbline 463
;  if (arm_number == 4) { reset_5C(); }
	lds R24,_arm_number
	cpi R24,4
	brne L102
X22:
	.dbline 463
	.dbline 463
	xcall _reset_5C
	.dbline 463
L102:
	.dbline 464
;  if (arm_number == 5) { reset_6C(); }
	lds R24,_arm_number
	cpi R24,5
	brne L104
X23:
	.dbline 464
	.dbline 464
	xcall _reset_6C
	.dbline 464
L104:
	.dbline -2
L93:
	.dbline 0 ; func end
	ld R0,y+
	out 0x3f,R0
	ld R31,y+
	ld R30,y+
	ld R27,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R19,y+
	ld R18,y+
	ld R17,y+
	ld R16,y+
	ld R9,y+
	ld R8,y+
	ld R7,y+
	ld R6,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	ld R1,y+
	ld R0,y+
	reti
	.dbend
	.area vector(rom, abs)
	.org 80
	jmp _timer1_ovf_isr
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbfunc e timer1_ovf_isr _timer1_ovf_isr fV
	.even
_timer1_ovf_isr::
	st -y,R0
	st -y,R1
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R6
	st -y,R7
	st -y,R8
	st -y,R9
	st -y,R16
	st -y,R17
	st -y,R18
	st -y,R19
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R27
	st -y,R30
	st -y,R31
	in R0,0x3f
	st -y,R0
	.dbline -1
	.dbline 469
; }
; 
; #pragma interrupt_handler timer1_ovf_isr:iv_TIM1_OVF
; void timer1_ovf_isr(void)
; {
	.dbline 471
;  //TIMER1 has overflowed
;  TCNT1H = 0x94; //reload counter high value
	ldi R24,148
	sts 133,R24
	.dbline 472
;  TCNT1L = 0x01; //reload counter low value
	ldi R24,1
	sts 132,R24
	.dbline 473
;  delay_count++;
	lds R24,_delay_count
	lds R25,_delay_count+1
	adiw R24,1
	sts _delay_count+1,R25
	sts _delay_count,R24
	.dbline 474
;  arm_number ++;
	lds R24,_arm_number
	subi R24,255    ; addi 1
	sts _arm_number,R24
	.dbline 475
;  if (arm_number>7)
	ldi R24,7
	lds R2,_arm_number
	cp R24,R2
	brsh L107
X24:
	.dbline 476
;  {
	.dbline 477
;   	arm_number = 0;
	clr R2
	sts _arm_number,R2
	.dbline 478
;  }
L107:
	.dbline 480
;    
;  if (arm_number == 0)
	lds R2,_arm_number
	tst R2
	brne L109
X25:
	.dbline 481
;  {
	.dbline 482
;   set_1A(); 
	xcall _set_1A
	.dbline 483
;   set_1B(); 
	xcall _set_1B
	.dbline 484
;   set_1C();
	xcall _set_1C
	.dbline 485
;   OCR1AH = angle_upper_byte_1A;
	lds R2,_angle_upper_byte_1A
	sts 137,R2
	.dbline 486
;   OCR1AL = angle_lower_byte_1A;
	lds R2,_angle_lower_byte_1A
	sts 136,R2
	.dbline 487
;   OCR1BH = angle_upper_byte_1B;
	lds R2,_angle_upper_byte_1B
	sts 139,R2
	.dbline 488
;   OCR1BL = angle_lower_byte_1B;
	lds R2,_angle_lower_byte_1B
	sts 138,R2
	.dbline 489
;   OCR1CH = angle_upper_byte_1C;
	lds R2,_angle_upper_byte_1C
	sts 141,R2
	.dbline 490
;   OCR1CL = angle_lower_byte_1C;
	lds R2,_angle_lower_byte_1C
	sts 140,R2
	.dbline 491
;  }
L109:
	.dbline 493
;  
;  if (arm_number == 1)
	lds R24,_arm_number
	cpi R24,1
	brne L111
X26:
	.dbline 494
;  {
	.dbline 495
;   set_2A(); 
	xcall _set_2A
	.dbline 496
;   set_2B(); 
	xcall _set_2B
	.dbline 497
;   set_2C();
	xcall _set_2C
	.dbline 498
;   OCR1AH = angle_upper_byte_2A;
	lds R2,_angle_upper_byte_2A
	sts 137,R2
	.dbline 499
;   OCR1AL = angle_lower_byte_2A;
	lds R2,_angle_lower_byte_2A
	sts 136,R2
	.dbline 500
;   OCR1BH = angle_upper_byte_2B;
	lds R2,_angle_upper_byte_2B
	sts 139,R2
	.dbline 501
;   OCR1BL = angle_lower_byte_2B;
	lds R2,_angle_lower_byte_2B
	sts 138,R2
	.dbline 502
;   OCR1CH = angle_upper_byte_2C;
	lds R2,_angle_upper_byte_2C
	sts 141,R2
	.dbline 503
;   OCR1CL = angle_lower_byte_2C;
	lds R2,_angle_lower_byte_2C
	sts 140,R2
	.dbline 504
;  }
L111:
	.dbline 506
;  
;  if (arm_number == 2)
	lds R24,_arm_number
	cpi R24,2
	brne L113
X27:
	.dbline 507
;  {
	.dbline 508
;   set_3A(); 
	xcall _set_3A
	.dbline 509
;   set_3B(); 
	xcall _set_3B
	.dbline 510
;   set_3C();
	xcall _set_3C
	.dbline 511
;   OCR1AH = angle_upper_byte_3A;
	lds R2,_angle_upper_byte_3A
	sts 137,R2
	.dbline 512
;   OCR1AL = angle_lower_byte_3A;
	lds R2,_angle_lower_byte_3A
	sts 136,R2
	.dbline 513
;   OCR1BH = angle_upper_byte_3B;
	lds R2,_angle_upper_byte_3B
	sts 139,R2
	.dbline 514
;   OCR1BL = angle_lower_byte_3B;
	lds R2,_angle_lower_byte_3B
	sts 138,R2
	.dbline 515
;   OCR1CH = angle_upper_byte_3C;
	lds R2,_angle_upper_byte_3C
	sts 141,R2
	.dbline 516
;   OCR1CL = angle_lower_byte_3C;
	lds R2,_angle_lower_byte_3C
	sts 140,R2
	.dbline 517
;  }
L113:
	.dbline 519
;  
;  if (arm_number == 3)
	lds R24,_arm_number
	cpi R24,3
	brne L115
X28:
	.dbline 520
;  {
	.dbline 521
;   set_4A(); 
	xcall _set_4A
	.dbline 522
;   set_4B(); 
	xcall _set_4B
	.dbline 523
;   set_4C();
	xcall _set_4C
	.dbline 524
;   OCR1AH = angle_upper_byte_4A;
	lds R2,_angle_upper_byte_4A
	sts 137,R2
	.dbline 525
;   OCR1AL = angle_lower_byte_4A;
	lds R2,_angle_lower_byte_4A
	sts 136,R2
	.dbline 526
;   OCR1BH = angle_upper_byte_4B;
	lds R2,_angle_upper_byte_4B
	sts 139,R2
	.dbline 527
;   OCR1BL = angle_lower_byte_4B;
	lds R2,_angle_lower_byte_4B
	sts 138,R2
	.dbline 528
;   OCR1CH = angle_upper_byte_4C;
	lds R2,_angle_upper_byte_4C
	sts 141,R2
	.dbline 529
;   OCR1CL = angle_lower_byte_4C;
	lds R2,_angle_lower_byte_4C
	sts 140,R2
	.dbline 530
;  }
L115:
	.dbline 532
;  
;  if (arm_number == 4)
	lds R24,_arm_number
	cpi R24,4
	brne L117
X29:
	.dbline 533
;  {
	.dbline 534
;   set_5A(); 
	xcall _set_5A
	.dbline 535
;   set_5B(); 
	xcall _set_5B
	.dbline 536
;   set_5C();
	xcall _set_5C
	.dbline 537
;   OCR1AH = angle_upper_byte_5A;
	lds R2,_angle_upper_byte_5A
	sts 137,R2
	.dbline 538
;   OCR1AL = angle_lower_byte_5A;
	lds R2,_angle_lower_byte_5A
	sts 136,R2
	.dbline 539
;   OCR1BH = angle_upper_byte_5B;
	lds R2,_angle_upper_byte_5B
	sts 139,R2
	.dbline 540
;   OCR1BL = angle_lower_byte_5B;
	lds R2,_angle_lower_byte_5B
	sts 138,R2
	.dbline 541
;   OCR1CH = angle_upper_byte_5C;
	lds R2,_angle_upper_byte_5C
	sts 141,R2
	.dbline 542
;   OCR1CL = angle_lower_byte_5C;
	lds R2,_angle_lower_byte_5C
	sts 140,R2
	.dbline 543
;  }
L117:
	.dbline 545
;  
;  if (arm_number == 5)
	lds R24,_arm_number
	cpi R24,5
	brne L119
X30:
	.dbline 546
;  {
	.dbline 547
;   set_6A(); 
	xcall _set_6A
	.dbline 548
;   set_6B(); 
	xcall _set_6B
	.dbline 549
;   set_6C();
	xcall _set_6C
	.dbline 550
;   OCR1AH = angle_upper_byte_6A;
	lds R2,_angle_upper_byte_6A
	sts 137,R2
	.dbline 551
;   OCR1AL = angle_lower_byte_6A;
	lds R2,_angle_lower_byte_6A
	sts 136,R2
	.dbline 552
;   OCR1BH = angle_upper_byte_6B;
	lds R2,_angle_upper_byte_6B
	sts 139,R2
	.dbline 553
;   OCR1BL = angle_lower_byte_6B;
	lds R2,_angle_lower_byte_6B
	sts 138,R2
	.dbline 554
;   OCR1CH = angle_upper_byte_6C;
	lds R2,_angle_upper_byte_6C
	sts 141,R2
	.dbline 555
;   OCR1CL = angle_lower_byte_6C;
	lds R2,_angle_lower_byte_6C
	sts 140,R2
	.dbline 556
;  }
L119:
	.dbline 558
;  //serial communication related code
;  serial_communication_interval ++;
	lds R24,_serial_communication_interval
	lds R25,_serial_communication_interval+1
	adiw R24,1
	sts _serial_communication_interval+1,R25
	sts _serial_communication_interval,R24
	.dbline 559
;   if (serial_communication_interval > 40) //gives time interval of 40*2.5ms = 100ms
	ldi R24,40
	ldi R25,0
	lds R2,_serial_communication_interval
	lds R3,_serial_communication_interval+1
	cp R24,R2
	cpc R25,R3
	brsh L121
X31:
	.dbline 560
;  {
	.dbline 561
;   serial_communication_interval = 0;
	clr R2
	clr R3
	sts _serial_communication_interval+1,R3
	sts _serial_communication_interval,R2
	.dbline 562
;   serial_communication_channel_number++;
	lds R24,_serial_communication_channel_number
	subi R24,255    ; addi 1
	sts _serial_communication_channel_number,R24
	.dbline 563
;   if(serial_communication_channel_number > 4) //set maximum number of command (can be set up to 7)
	ldi R24,4
	lds R2,_serial_communication_channel_number
	cp R24,R2
	brsh L123
X32:
	.dbline 564
;   {
	.dbline 565
;   serial_communication_channel_number  = 3; //set first command to begin with (can be set up to 1)
	ldi R24,3
	sts _serial_communication_channel_number,R24
	.dbline 566
;   }
L123:
	.dbline 567
;   UDR0 = serial_communication_channel_number;
	lds R2,_serial_communication_channel_number
	sts 198,R2
	.dbline 568
;  }
L121:
	.dbline -2
L106:
	.dbline 0 ; func end
	ld R0,y+
	out 0x3f,R0
	ld R31,y+
	ld R30,y+
	ld R27,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R19,y+
	ld R18,y+
	ld R17,y+
	ld R16,y+
	ld R9,y+
	ld R8,y+
	ld R7,y+
	ld R6,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	ld R1,y+
	ld R0,y+
	reti
	.dbend
	.dbfunc e uart0_init _uart0_init fV
	.even
_uart0_init::
	.dbline -1
	.dbline 577
; }
; 
; //UART0 initialize
; // desired baud rate: 9600
; // actual: baud rate:9600 (0.0%)
; // char size: 8 bit
; // parity: Disabled
; void uart0_init(void)
; {
	.dbline 578
;  UCSR0B = 0x00; //disable while setting baud rate
	clr R2
	sts 193,R2
	.dbline 579
;  UCSR0A = 0x00;
	sts 192,R2
	.dbline 580
;  UCSR0C = 0x06;
	ldi R24,6
	sts 194,R24
	.dbline 581
;  UBRR0L = 0x47; //set baud rate lo
	ldi R24,71
	sts 196,R24
	.dbline 582
;  UBRR0H = 0x00; //set baud rate hi
	sts 197,R2
	.dbline 583
;  UCSR0B = 0x98;
	ldi R24,152
	sts 193,R24
	.dbline -2
L125:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 100
	jmp _uart0_rx_isr
	.area text(rom, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbfunc e uart0_rx_isr _uart0_rx_isr fV
	.even
_uart0_rx_isr::
	st -y,R2
	st -y,R24
	st -y,R25
	st -y,R30
	st -y,R31
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 588
; }
; 
; #pragma interrupt_handler uart0_rx_isr:iv_USART0_RXC
; void uart0_rx_isr(void)
; {
	.dbline 590
;  //uart has received a character in UDR
;  remote_data[serial_communication_channel_number] = UDR0;  
	ldi R24,<_remote_data
	ldi R25,>_remote_data
	lds R30,_serial_communication_channel_number
	clr R31
	add R30,R24
	adc R31,R25
	lds R2,198
	std z+0,R2
	.dbline -2
L126:
	.dbline 0 ; func end
	ld R2,y+
	out 0x3f,R2
	ld R31,y+
	ld R30,y+
	ld R25,y+
	ld R24,y+
	ld R2,y+
	reti
	.dbend
	.dbfunc e init_devices _init_devices fV
	.even
_init_devices::
	.dbline -1
	.dbline 595
; }
; 
; //call this routine to initialize all peripherals
; void init_devices(void)
; {
	.dbline 597
;  //stop errant interrupts until set up
;  CLI(); //disable all interrupts
	cli
	.dbline 598
;  XMCRA = 0x00; //external memory
	clr R2
	sts 116,R2
	.dbline 599
;  XMCRB = 0x00; //external memory
	sts 117,R2
	.dbline 600
;  port_init();
	xcall _port_init
	.dbline 601
;  timer1_init();
	xcall _timer1_init
	.dbline 602
;  uart0_init();
	xcall _uart0_init
	.dbline 604
; 
;  MCUCR  = 0x00;
	clr R2
	out 0x35,R2
	.dbline 605
;  EICRA  = 0x00; //pin change int edge 0:3
	sts 105,R2
	.dbline 606
;  EICRB  = 0x00; //pin change int edge 4:7
	sts 106,R2
	.dbline 607
;  PCICR  = 0x00; //pin change int enable
	sts 104,R2
	.dbline 608
;  PCMSK0 = 0x00; //pin change mask
	sts 107,R2
	.dbline 609
;  PCMSK1 = 0x00; //pin change mask
	sts 108,R2
	.dbline 610
;  PCMSK2 = 0x00; //pin change mask
	sts 109,R2
	.dbline 611
;  EIMSK  = 0x00;
	out 0x1d,R2
	.dbline 612
;  TIMSK0 = 0x00; //timer0 interrupt sources
	sts 110,R2
	.dbline 613
;  TIMSK1 = 0x0F; //timer1 interrupt sources
	ldi R24,15
	sts 111,R24
	.dbline 614
;  TIMSK2 = 0x00; //timer2 interrupt sources
	sts 112,R2
	.dbline 615
;  TIMSK3 = 0x00; //timer3 interrupt sources
	sts 113,R2
	.dbline 616
;  TIMSK4 = 0x00; //timer4 interrupt sources
	sts 114,R2
	.dbline 617
;  TIMSK5 = 0x00; //timer5 interrupt sources
	sts 115,R2
	.dbline 619
;  
;  SEI(); //re-enable interrupts
	sei
	.dbline -2
L127:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e angle_value_calculation _angle_value_calculation fV
;           temp -> R16,R17
;    angle_value -> R18,R19
	.even
_angle_value_calculation::
	.dbline -1
	.dbline 624
;  //all peripherals are now initialized
; }
; 
; void angle_value_calculation (void)
; {
	.dbline 625
;  unsigned int angle_value = 0;
	clr R18
	clr R19
	.dbline 626
;  unsigned int temp = 0;
	clr R16
	clr R17
	.dbline 627
;  if (degree > 180)
	ldi R24,180
	lds R2,_degree
	cp R24,R2
	brsh L129
X33:
	.dbline 628
;  degree = 180; // limiting the scope of the servo rotation
	sts _degree,R24
L129:
	.dbline 630
;  
;  angle_value = 0xBF39 + (64 * (unsigned char) degree); //actual constant is 64.4
	lds R2,_degree
	ldi R24,64
	mul R24,R2
	movw R18,R0
	subi R18,199  ; offset = 48953
	sbci R19,64
	.dbline 632
;  
;  angle_lower_byte = (unsigned char) angle_value; //separating the lower byte
	sts _angle_lower_byte,R18
	.dbline 634
;  
;  temp = angle_value >> 8;
	movw R16,R18
	mov R16,R17
	clr R17
	.dbline 635
;  angle_upper_byte = (unsigned char) temp; //separating the upper byte
	sts _angle_upper_byte,R16
	.dbline -2
L128:
	.dbline 0 ; func end
	ret
	.dbsym r temp 16 i
	.dbsym r angle_value 18 i
	.dbend
	.dbfunc e angle_1A _angle_1A fV
;          angle -> R10
	.even
_angle_1A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 640
; }
; 
; 
; void angle_1A (unsigned char angle)
; {
	.dbline 641
;  _1A = degree = angle;
	sts _degree,R10
	sts __1A,R10
	.dbline 642
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 643
;  angle_upper_byte_1A = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_1A,R2
	.dbline 644
;  angle_lower_byte_1A = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_1A,R2
	.dbline -2
L131:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_1B _angle_1B fV
;          angle -> R10
	.even
_angle_1B::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 648
; }
; 
; void angle_1B (unsigned char angle)
; {
	.dbline 649
;  _1B = degree = angle;
	sts _degree,R10
	sts __1B,R10
	.dbline 650
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 651
;  angle_upper_byte_1B = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_1B,R2
	.dbline 652
;  angle_lower_byte_1B = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_1B,R2
	.dbline -2
L132:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_1C _angle_1C fV
;          angle -> R10
	.even
_angle_1C::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 656
; }
; 
; void angle_1C (unsigned char angle)
; {
	.dbline 657
;  _1C = degree = angle;
	sts _degree,R10
	sts __1C,R10
	.dbline 658
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 659
;  angle_upper_byte_1C = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_1C,R2
	.dbline 660
;  angle_lower_byte_1C = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_1C,R2
	.dbline -2
L133:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_2A _angle_2A fV
;          angle -> R10
	.even
_angle_2A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 664
; }
; 
; void angle_2A (unsigned char angle)
; {
	.dbline 665
;  _2A = degree = angle;
	sts _degree,R10
	sts __2A,R10
	.dbline 666
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 667
;  angle_upper_byte_2A = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_2A,R2
	.dbline 668
;  angle_lower_byte_2A = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_2A,R2
	.dbline -2
L134:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_2B _angle_2B fV
;          angle -> R20
	.even
_angle_2B::
	st -y,R20
	st -y,R21
	mov R20,R16
	.dbline -1
	.dbline 672
; }
; 
; void angle_2B (unsigned char angle)
; {
	.dbline 673
;  angle = angle+9;		//Setting this offset for error correction in servo 2B
	subi R20,247    ; addi 9
	.dbline 678
;  	   	 				//The above line is not required if the servo 2B is working correctly
; 	/* Such offsets are often introduced to remove or atleast minimize hardware errors with the slight change in code
; 	   This is one of the example, where instead of replacing a costly servo motor, we have set an offset to its value */
; 	   
;  _2B = degree = angle;
	sts _degree,R20
	sts __2B,R20
	.dbline 679
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 680
;  angle_upper_byte_2B = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_2B,R2
	.dbline 681
;  angle_lower_byte_2B = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_2B,R2
	.dbline -2
L135:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r angle 20 c
	.dbend
	.dbfunc e angle_2C _angle_2C fV
;          angle -> R10
	.even
_angle_2C::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 685
; }
; 
; void angle_2C (unsigned char angle)
; {
	.dbline 686
;  _2C = degree = angle;
	sts _degree,R10
	sts __2C,R10
	.dbline 687
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 688
;  angle_upper_byte_2C = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_2C,R2
	.dbline 689
;  angle_lower_byte_2C = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_2C,R2
	.dbline -2
L136:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_3A _angle_3A fV
;          angle -> R10
	.even
_angle_3A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 693
; }
; 
; void angle_3A (unsigned char angle)
; {
	.dbline 694
;  _3A = degree = angle;
	sts _degree,R10
	sts __3A,R10
	.dbline 695
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 696
;  angle_upper_byte_3A = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_3A,R2
	.dbline 697
;  angle_lower_byte_3A = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_3A,R2
	.dbline -2
L137:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_3B _angle_3B fV
;          angle -> R10
	.even
_angle_3B::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 701
; }
; 
; void angle_3B (unsigned char angle)
; {
	.dbline 702
;  _3B = degree = angle;
	sts _degree,R10
	sts __3B,R10
	.dbline 703
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 704
;  angle_upper_byte_3B = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_3B,R2
	.dbline 705
;  angle_lower_byte_3B = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_3B,R2
	.dbline -2
L138:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_3C _angle_3C fV
;          angle -> R10
	.even
_angle_3C::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 709
; }
; 
; void angle_3C (unsigned char angle)
; {
	.dbline 710
;  _3C = degree = angle;
	sts _degree,R10
	sts __3C,R10
	.dbline 711
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 712
;  angle_upper_byte_3C = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_3C,R2
	.dbline 713
;  angle_lower_byte_3C = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_3C,R2
	.dbline -2
L139:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_4A _angle_4A fV
;          angle -> R10
	.even
_angle_4A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 717
; }
; 
; void angle_4A (unsigned char angle)
; {
	.dbline 718
;  _4A = degree = angle;
	sts _degree,R10
	sts __4A,R10
	.dbline 719
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 720
;  angle_upper_byte_4A = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_4A,R2
	.dbline 721
;  angle_lower_byte_4A = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_4A,R2
	.dbline -2
L140:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_4B _angle_4B fV
;          angle -> R10
	.even
_angle_4B::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 725
; }
; 
; void angle_4B (unsigned char angle)
; {
	.dbline 726
;  _4B = angle;
	sts __4B,R10
	.dbline 727
;  degree = 180 - angle;
	mov R2,R10
	clr R3
	ldi R24,180
	ldi R25,0
	sub R24,R2
	sbc R25,R3
	sts _degree,R24
	.dbline 728
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 729
;  angle_upper_byte_4B = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_4B,R2
	.dbline 730
;  angle_lower_byte_4B = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_4B,R2
	.dbline -2
L141:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_4C _angle_4C fV
;          angle -> R10
	.even
_angle_4C::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 734
; }
; 
; void angle_4C (unsigned char angle)
; {
	.dbline 735
;  _4C = angle;
	sts __4C,R10
	.dbline 736
;  degree = 180 - angle;
	mov R2,R10
	clr R3
	ldi R24,180
	ldi R25,0
	sub R24,R2
	sbc R25,R3
	sts _degree,R24
	.dbline 737
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 738
;  angle_upper_byte_4C = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_4C,R2
	.dbline 739
;  angle_lower_byte_4C = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_4C,R2
	.dbline -2
L142:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_5A _angle_5A fV
;          angle -> R10
	.even
_angle_5A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 743
; }
; 
; void angle_5A (unsigned char angle)
; {
	.dbline 744
;  _5A = degree = angle;
	sts _degree,R10
	sts __5A,R10
	.dbline 745
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 746
;  angle_upper_byte_5A = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_5A,R2
	.dbline 747
;  angle_lower_byte_5A = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_5A,R2
	.dbline -2
L143:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_5B _angle_5B fV
;          angle -> R10
	.even
_angle_5B::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 751
; }
; 
; void angle_5B (unsigned char angle)
; {
	.dbline 752
;  _5B = angle;
	sts __5B,R10
	.dbline 753
;  degree = 180 - angle;
	mov R2,R10
	clr R3
	ldi R24,180
	ldi R25,0
	sub R24,R2
	sbc R25,R3
	sts _degree,R24
	.dbline 754
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 755
;  angle_upper_byte_5B = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_5B,R2
	.dbline 756
;  angle_lower_byte_5B = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_5B,R2
	.dbline -2
L144:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_5C _angle_5C fV
;          angle -> R10
	.even
_angle_5C::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 760
; }
; 
; void angle_5C (unsigned char angle)
; {
	.dbline 761
;  _5C = angle;
	sts __5C,R10
	.dbline 762
;  degree = 180 - angle;
	mov R2,R10
	clr R3
	ldi R24,180
	ldi R25,0
	sub R24,R2
	sbc R25,R3
	sts _degree,R24
	.dbline 763
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 764
;  angle_upper_byte_5C = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_5C,R2
	.dbline 765
;  angle_lower_byte_5C = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_5C,R2
	.dbline -2
L145:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_6A _angle_6A fV
;          angle -> R10
	.even
_angle_6A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 769
; }
; 
; void angle_6A (unsigned char angle)
; {
	.dbline 770
;  _6A = degree = angle;
	sts _degree,R10
	sts __6A,R10
	.dbline 771
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 772
;  angle_upper_byte_6A = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_6A,R2
	.dbline 773
;  angle_lower_byte_6A = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_6A,R2
	.dbline -2
L146:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_6B _angle_6B fV
;          angle -> R10
	.even
_angle_6B::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 777
; }
; 
; void angle_6B (unsigned char angle)
; {
	.dbline 778
;  _6B = angle;
	sts __6B,R10
	.dbline 779
;  degree = 180 - angle;
	mov R2,R10
	clr R3
	ldi R24,180
	ldi R25,0
	sub R24,R2
	sbc R25,R3
	sts _degree,R24
	.dbline 780
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 781
;  angle_upper_byte_6B = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_6B,R2
	.dbline 782
;  angle_lower_byte_6B = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_6B,R2
	.dbline -2
L147:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e angle_6C _angle_6C fV
;          angle -> R10
	.even
_angle_6C::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 786
; }
; 
; void angle_6C (unsigned char angle)
; {
	.dbline 787
;  _6C = angle;
	sts __6C,R10
	.dbline 788
;  degree = 180 - angle;
	mov R2,R10
	clr R3
	ldi R24,180
	ldi R25,0
	sub R24,R2
	sbc R25,R3
	sts _degree,R24
	.dbline 789
;  angle_value_calculation();
	xcall _angle_value_calculation
	.dbline 790
;  angle_upper_byte_6C = angle_upper_byte;
	lds R2,_angle_upper_byte
	sts _angle_upper_byte_6C,R2
	.dbline 791
;  angle_lower_byte_6C = angle_lower_byte;
	lds R2,_angle_lower_byte
	sts _angle_lower_byte_6C,R2
	.dbline -2
L148:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e buzzer_on _buzzer_on fV
	.even
_buzzer_on::
	.dbline -1
	.dbline 795
; }
; 
; void buzzer_on (void)
; {
	.dbline 796
;  PORTC = PORTC | 0x08;
	sbi 0x8,3
	.dbline -2
L149:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e buzzer_off _buzzer_off fV
	.even
_buzzer_off::
	.dbline -1
	.dbline 800
; }
; 
; void buzzer_off (void)
; {
	.dbline 801
;  PORTC = PORTC & 0xF7;
	in R24,0x8
	andi R24,247
	out 0x8,R24
	.dbline -2
L150:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod.h
	.dbfunc e servo_calibration _servo_calibration fV
	.even
_servo_calibration::
	.dbline -1
	.dbline 132
; /**
; 
;  hexapod.h :
;  This file contains the logical code for Hexapod motion and builds upon the file hexapod_firebirdv.h
;  hexapod_firebirdv.h contains platform-specific code for controlling the sensors and actuators using Atmega2560 ports.
; 
;  @author Group 10: Abhinav Maurya 10305016
;  		 	   	   Yogesh Kakde	  10305039
; 				   Lokesh Rajwani 10305066
;  
;  AVR Studio Version 4.17, Build 666
; 
;  Date: 6th November 2010
;  
;     Make sure that in the configuration options following settings are 
;  	done for proper operation of the code
; 
;  	Microcontroller: atmega2560
;  	Frequency: 11059200
;  	Optimization: -O0 (For more information read section: Selecting proper optimization options 
; 						below figure 4.22 in the hardware manual)
; *********************************************************************************/
; 
; 
; /********************************************************************************
; 
;    Copyright (c) 2010, ERTS Lab IIT Bombay erts@cse.iitb.ac.in               -*- c -*-
;    All rights reserved.
; 
;    Redistribution and use in source and binary forms, with or without
;    modification, are permitted provided that the following conditions are met:
; 
;    * Redistributions of source code must retain the above copyright
;      notice, this list of conditions and the following disclaimer.
; 
;    * Redistributions in binary form must reproduce the above copyright
;      notice, this list of conditions and the following disclaimer in
;      the documentation and/or other materials provided with the
;      distribution.
; 
;    * Neither the name of the copyright holders nor the names of
;      contributors may be used to endorse or promote products derived
;      from this software without specific prior written permission.
; 
;    * Source code can be used for academic purpose. 
; 	 For commercial use permission form the author needs to be taken.
; 
;   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;   POSSIBILITY OF SUCH DAMAGE. 
; 
; ********************************************************************************/
; 
; 
; 	// Application: ICC-AVR
; // Target: M2560
; // Crystal: 11.059Mhz
; 
; //List of functions supplied by this header file, hexapod.h
; /*
; void servo_calibration (void);
; void odd_A_servo (unsigned char angle);
; void even_A_servo (unsigned char angle);
; void A_servo (unsigned char angle);
; void odd_B_servo (unsigned char angle);
; void even_B_servo (unsigned char angle);
; void B_servo (unsigned char angle);
; void odd_C_servo (unsigned char angle);
; void even_C_servo (unsigned char angle);
; void C_servo (unsigned char angle);
; void odd_BC_servo (unsigned char angleB, unsigned char angleC);
; void even_BC_servo (unsigned char angleB, unsigned char angleC);
; void BC_servo (unsigned char angleB, unsigned char angleC);
; void odd_A_servo_forward (unsigned char diff);
; void even_A_servo_forward (unsigned char diff);
; void A_servo_forward (unsigned char diff);
; void odd_A_servo_backward (unsigned char diff);
; void even_A_servo_backward (unsigned char diff);
; void A_servo_backward (unsigned char diff);
; void even_A_servo_90 (void);
; void even_A_servo_65 (void);
; void even_A_servo_115 (void);
; void even_BC_servo_90 (void);
; void even_BC_servo_up_45 (void);
; void even_BC_servo_down_45 (void);
; void odd_A_servo_90 (void);
; void odd_A_servo_65 (void);
; void odd_A_servo_115 (void);
; void odd_BC_servo_90 (void);
; void odd_BC_servo_up_45 (void);
; void odd_BC_servo_down_45 (void);
; void rotate_clockwise_7_5 (void)
; void rotate_anticlockwise_7_5 (void);
; void forward (void);
; void forward_3_legs (void);
; void backward (void);
; void backward_3_legs (void);
; void robot_standup (void);
; void remote_control(void);
; */
; 
; //Functions to be coded
; /*
; void rotate_clockwise (unsigned int clock_angle);
; void rotate_anticlockwise (unsigned int anticlock_angle);
; void rotate (signed int angle);
; void move_12 (unsigned int distance);
; void move_23 (unsigned int distance);
; void move_45 (unsigned int distance);
; void move_56 (unsigned int distance);
; void move_14 (unsigned int distance);
; void move_36 (unsigned int distance);
; void forward (unsigned int distance);
; void backward (unsigned int distance);
; void move (unsigned char angle, unsigned int distance);
; void stroke (unsigned char angle, unsigned int distance);
; void curve (unsigned char tangent_angle, unsigned char segment_angle, unsigned int distance);
; */
; 
; #include <math.h>
; #include "hexapod_firebirdv.h"
; 
; void servo_calibration (void)
; {
	.dbline 133
; angle_1A(90); angle_1B(90); angle_1C(90); angle_2A(90); angle_2B(90); angle_2C(90);
	ldi R16,90
	xcall _angle_1A
	.dbline 133
	ldi R16,90
	xcall _angle_1B
	.dbline 133
	ldi R16,90
	xcall _angle_1C
	.dbline 133
	ldi R16,90
	xcall _angle_2A
	.dbline 133
	ldi R16,90
	xcall _angle_2B
	.dbline 133
	ldi R16,90
	xcall _angle_2C
	.dbline 134
; angle_3A(90); angle_3B(90); angle_3C(90); angle_4A(90); angle_4B(90); angle_4C(90);
	ldi R16,90
	xcall _angle_3A
	.dbline 134
	ldi R16,90
	xcall _angle_3B
	.dbline 134
	ldi R16,90
	xcall _angle_3C
	.dbline 134
	ldi R16,90
	xcall _angle_4A
	.dbline 134
	ldi R16,90
	xcall _angle_4B
	.dbline 134
	ldi R16,90
	xcall _angle_4C
	.dbline 135
; angle_5A(90); angle_5B(90); angle_5C(90); angle_6A(90); angle_6B(90); angle_6C(90);
	ldi R16,90
	xcall _angle_5A
	.dbline 135
	ldi R16,90
	xcall _angle_5B
	.dbline 135
	ldi R16,90
	xcall _angle_5C
	.dbline 135
	ldi R16,90
	xcall _angle_6A
	.dbline 135
	ldi R16,90
	xcall _angle_6B
	.dbline 135
	ldi R16,90
	xcall _angle_6C
	.dbline -2
L151:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_A_servo _odd_A_servo fV
;          angle -> R10
	.even
_odd_A_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 145
; }
; 
; /*
; Setting angle for A Motors:
; 90  - Perpendicular
; 65  - Clockwise
; 115 - Anticlockwise
; */
; void odd_A_servo (unsigned char angle)
; { angle_1A(angle); angle_3A(angle); angle_5A(angle); }
	.dbline 145
	mov R16,R10
	xcall _angle_1A
	.dbline 145
	mov R16,R10
	xcall _angle_3A
	.dbline 145
	mov R16,R10
	xcall _angle_5A
	.dbline -2
L152:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e even_A_servo _even_A_servo fV
;          angle -> R10
	.even
_even_A_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 148
; 
; void even_A_servo (unsigned char angle)
; { angle_2A(angle); angle_4A(angle); angle_6A(angle); }
	.dbline 148
	mov R16,R10
	xcall _angle_2A
	.dbline 148
	mov R16,R10
	xcall _angle_4A
	.dbline 148
	mov R16,R10
	xcall _angle_6A
	.dbline -2
L153:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e A_servo _A_servo fV
;          angle -> R10
	.even
_A_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 151
; 
; void A_servo (unsigned char angle)
; { angle_1A(angle); angle_2A(angle); angle_3A(angle); angle_4A(angle); angle_5A(angle); angle_6A(angle); }
	.dbline 151
	mov R16,R10
	xcall _angle_1A
	.dbline 151
	mov R16,R10
	xcall _angle_2A
	.dbline 151
	mov R16,R10
	xcall _angle_3A
	.dbline 151
	mov R16,R10
	xcall _angle_4A
	.dbline 151
	mov R16,R10
	xcall _angle_5A
	.dbline 151
	mov R16,R10
	xcall _angle_6A
	.dbline -2
L154:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e odd_B_servo _odd_B_servo fV
;          angle -> R10
	.even
_odd_B_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 160
; 
; /*
; Setting angle for B Motors:
; 90  - Horizontal
; 45  - Inclined
; 135 - Declined
; */
; void odd_B_servo (unsigned char angle)
; { angle_1B(angle); angle_3B(angle); angle_5B(angle); }
	.dbline 160
	mov R16,R10
	xcall _angle_1B
	.dbline 160
	mov R16,R10
	xcall _angle_3B
	.dbline 160
	mov R16,R10
	xcall _angle_5B
	.dbline -2
L155:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e even_B_servo _even_B_servo fV
;          angle -> R10
	.even
_even_B_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 163
; 
; void even_B_servo (unsigned char angle)
; { angle_2B(angle); angle_4B(angle); angle_6B(angle); }
	.dbline 163
	mov R16,R10
	xcall _angle_2B
	.dbline 163
	mov R16,R10
	xcall _angle_4B
	.dbline 163
	mov R16,R10
	xcall _angle_6B
	.dbline -2
L156:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e B_servo _B_servo fV
;          angle -> R10
	.even
_B_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 166
; 
; void B_servo (unsigned char angle)
; { angle_1B(angle); angle_2B(angle); angle_3B(angle); angle_4B(angle); angle_5B(angle); angle_6B(angle); }
	.dbline 166
	mov R16,R10
	xcall _angle_1B
	.dbline 166
	mov R16,R10
	xcall _angle_2B
	.dbline 166
	mov R16,R10
	xcall _angle_3B
	.dbline 166
	mov R16,R10
	xcall _angle_4B
	.dbline 166
	mov R16,R10
	xcall _angle_5B
	.dbline 166
	mov R16,R10
	xcall _angle_6B
	.dbline -2
L157:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e odd_C_servo _odd_C_servo fV
;          angle -> R10
	.even
_odd_C_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 175
; 
; /*
; Setting angle for C Motors:
; 90  - Perpendicular
; 45  - Outward
; 135 - Inward
; */
; void odd_C_servo (unsigned char angle)
; { angle_1C(angle); angle_3C(angle); angle_5C(angle); }
	.dbline 175
	mov R16,R10
	xcall _angle_1C
	.dbline 175
	mov R16,R10
	xcall _angle_3C
	.dbline 175
	mov R16,R10
	xcall _angle_5C
	.dbline -2
L158:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e even_C_servo _even_C_servo fV
;          angle -> R10
	.even
_even_C_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 178
; 
; void even_C_servo (unsigned char angle)
; { angle_2C(angle); angle_4C(angle); angle_6C(angle); }
	.dbline 178
	mov R16,R10
	xcall _angle_2C
	.dbline 178
	mov R16,R10
	xcall _angle_4C
	.dbline 178
	mov R16,R10
	xcall _angle_6C
	.dbline -2
L159:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e C_servo _C_servo fV
;          angle -> R10
	.even
_C_servo::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 181
; 
; void C_servo (unsigned char angle)
; { angle_1C(angle); angle_2C(angle); angle_3C(angle); angle_4C(angle); angle_5C(angle); angle_6C(angle); }
	.dbline 181
	mov R16,R10
	xcall _angle_1C
	.dbline 181
	mov R16,R10
	xcall _angle_2C
	.dbline 181
	mov R16,R10
	xcall _angle_3C
	.dbline 181
	mov R16,R10
	xcall _angle_4C
	.dbline 181
	mov R16,R10
	xcall _angle_5C
	.dbline 181
	mov R16,R10
	xcall _angle_6C
	.dbline -2
L160:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angle 10 c
	.dbend
	.dbfunc e odd_BC_servo _odd_BC_servo fV
;         angleC -> R10
;         angleB -> R12
	.even
_odd_BC_servo::
	st -y,R10
	st -y,R12
	mov R10,R18
	mov R12,R16
	.dbline -1
	.dbline 190
; 
; /*
; Setting angle for BC Motors:
; 90  - Perpendicular
; 45  - Clockwise
; 135 - Anticlockwise
; */
; void odd_BC_servo (unsigned char angleB, unsigned char angleC)
; { odd_B_servo(angleB); odd_C_servo(angleC); }
	.dbline 190
	mov R16,R12
	xcall _odd_B_servo
	.dbline 190
	mov R16,R10
	xcall _odd_C_servo
	.dbline -2
L161:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r angleC 10 c
	.dbsym r angleB 12 c
	.dbend
	.dbfunc e even_BC_servo _even_BC_servo fV
;         angleC -> R10
;         angleB -> R12
	.even
_even_BC_servo::
	st -y,R10
	st -y,R12
	mov R10,R18
	mov R12,R16
	.dbline -1
	.dbline 193
; 
; void even_BC_servo (unsigned char angleB, unsigned char angleC)
; { even_B_servo(angleB); even_C_servo(angleC); }
	.dbline 193
	mov R16,R12
	xcall _even_B_servo
	.dbline 193
	mov R16,R10
	xcall _even_C_servo
	.dbline -2
L162:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r angleC 10 c
	.dbsym r angleB 12 c
	.dbend
	.dbfunc e BC_servo _BC_servo fV
;         angleC -> R10
;         angleB -> R12
	.even
_BC_servo::
	st -y,R10
	st -y,R12
	mov R10,R18
	mov R12,R16
	.dbline -1
	.dbline 196
; 
; void BC_servo (unsigned char angleB, unsigned char angleC)
; { B_servo(angleB); C_servo(angleC);  }
	.dbline 196
	mov R16,R12
	xcall _B_servo
	.dbline 196
	mov R16,R10
	xcall _C_servo
	.dbline -2
L163:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r angleC 10 c
	.dbsym r angleB 12 c
	.dbend
	.dbfunc e odd_A_servo_forward _odd_A_servo_forward fV
;           diff -> R10
	.even
_odd_A_servo_forward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 200
; 
; //Setting angle for A Motors: Non-uniform for Forward Rectilinear Motion
; void odd_A_servo_forward (unsigned char diff)
; { angle_1A(_1A-diff); angle_3A(_3A-diff); angle_5A(_5A+diff); }
	.dbline 200
	lds R16,__1A
	sub R16,R10
	xcall _angle_1A
	.dbline 200
	lds R16,__3A
	sub R16,R10
	xcall _angle_3A
	.dbline 200
	lds R16,__5A
	add R16,R10
	xcall _angle_5A
	.dbline -2
L164:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e even_A_servo_forward _even_A_servo_forward fV
;           diff -> R10
	.even
_even_A_servo_forward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 203
; 
; void even_A_servo_forward (unsigned char diff)
; { angle_2A(_2A-diff); angle_4A(_4A+diff); angle_6A(_6A+diff); }
	.dbline 203
	lds R16,__2A
	sub R16,R10
	xcall _angle_2A
	.dbline 203
	lds R16,__4A
	add R16,R10
	xcall _angle_4A
	.dbline 203
	lds R16,__6A
	add R16,R10
	xcall _angle_6A
	.dbline -2
L165:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e A_servo_forward _A_servo_forward fV
;           diff -> R10
	.even
_A_servo_forward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 206
; 
; void A_servo_forward (unsigned char diff)
; { angle_1A(_1A-diff); angle_2A(_2A-diff); angle_3A(_3A-diff); angle_4A(_4A+diff); angle_5A(_5A+diff); angle_6A(_6A+diff); }
	.dbline 206
	lds R16,__1A
	sub R16,R10
	xcall _angle_1A
	.dbline 206
	lds R16,__2A
	sub R16,R10
	xcall _angle_2A
	.dbline 206
	lds R16,__3A
	sub R16,R10
	xcall _angle_3A
	.dbline 206
	lds R16,__4A
	add R16,R10
	xcall _angle_4A
	.dbline 206
	lds R16,__5A
	add R16,R10
	xcall _angle_5A
	.dbline 206
	lds R16,__6A
	add R16,R10
	xcall _angle_6A
	.dbline -2
L166:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e odd_A_servo_backward _odd_A_servo_backward fV
;           diff -> R10
	.even
_odd_A_servo_backward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 210
; 
; //Setting angle for A Motors: Non-uniform for Backward Rectilinear Motion
; void odd_A_servo_backward (unsigned char diff)
; { angle_1A(_1A+diff); angle_3A(_3A+diff); angle_5A(_5A-diff); }
	.dbline 210
	lds R16,__1A
	add R16,R10
	xcall _angle_1A
	.dbline 210
	lds R16,__3A
	add R16,R10
	xcall _angle_3A
	.dbline 210
	lds R16,__5A
	sub R16,R10
	xcall _angle_5A
	.dbline -2
L167:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e even_A_servo_backward _even_A_servo_backward fV
;           diff -> R10
	.even
_even_A_servo_backward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 213
; 
; void even_A_servo_backward (unsigned char diff)
; { angle_2A(_2A+diff); angle_4A(_4A-diff); angle_6A(_6A-diff); }
	.dbline 213
	lds R16,__2A
	add R16,R10
	xcall _angle_2A
	.dbline 213
	lds R16,__4A
	sub R16,R10
	xcall _angle_4A
	.dbline 213
	lds R16,__6A
	sub R16,R10
	xcall _angle_6A
	.dbline -2
L168:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e A_servo_backward _A_servo_backward fV
;           diff -> R10
	.even
_A_servo_backward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 216
; 
; void A_servo_backward (unsigned char diff)
; { angle_1A(_1A+diff); angle_2A(_2A+diff); angle_3A(_3A+diff); angle_4A(_4A-diff); angle_5A(_5A-diff); angle_6A(_6A-diff); }
	.dbline 216
	lds R16,__1A
	add R16,R10
	xcall _angle_1A
	.dbline 216
	lds R16,__2A
	add R16,R10
	xcall _angle_2A
	.dbline 216
	lds R16,__3A
	add R16,R10
	xcall _angle_3A
	.dbline 216
	lds R16,__4A
	sub R16,R10
	xcall _angle_4A
	.dbline 216
	lds R16,__5A
	sub R16,R10
	xcall _angle_5A
	.dbline 216
	lds R16,__6A
	sub R16,R10
	xcall _angle_6A
	.dbline -2
L169:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e opp_14_A _opp_14_A fV
;         angleA -> R10
	.even
_opp_14_A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 219
; 
; void opp_14_A (unsigned char angleA)
; { angle_1A(angleA); angle_4A(angleA); }
	.dbline 219
	mov R16,R10
	xcall _angle_1A
	.dbline 219
	mov R16,R10
	xcall _angle_4A
	.dbline -2
L170:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angleA 10 c
	.dbend
	.dbfunc e opp_26_A _opp_26_A fV
;         angleA -> R10
	.even
_opp_26_A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 222
; 
; void opp_26_A (unsigned char angleA)
; { angle_2A(angleA); angle_6A(angleA); }
	.dbline 222
	mov R16,R10
	xcall _angle_2A
	.dbline 222
	mov R16,R10
	xcall _angle_6A
	.dbline -2
L171:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angleA 10 c
	.dbend
	.dbfunc e opp_35_A _opp_35_A fV
;         angleA -> R10
	.even
_opp_35_A::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 225
; 
; void opp_35_A (unsigned char angleA)
; { angle_3A(angleA); angle_5A(angleA); }
	.dbline 225
	mov R16,R10
	xcall _angle_3A
	.dbline 225
	mov R16,R10
	xcall _angle_5A
	.dbline -2
L172:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r angleA 10 c
	.dbend
	.dbfunc e opp_14_A_forward _opp_14_A_forward fV
;           diff -> R10
	.even
_opp_14_A_forward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 228
; 
; void opp_14_A_forward (unsigned char diff)
; { angle_1A(_1A-diff); angle_4A(_4A+diff); }
	.dbline 228
	lds R16,__1A
	sub R16,R10
	xcall _angle_1A
	.dbline 228
	lds R16,__4A
	add R16,R10
	xcall _angle_4A
	.dbline -2
L173:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e opp_26_A_forward _opp_26_A_forward fV
;           diff -> R10
	.even
_opp_26_A_forward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 231
; 
; void opp_26_A_forward (unsigned char diff)
; { angle_2A(_2A-diff); angle_6A(_6A+diff); }
	.dbline 231
	lds R16,__2A
	sub R16,R10
	xcall _angle_2A
	.dbline 231
	lds R16,__6A
	add R16,R10
	xcall _angle_6A
	.dbline -2
L174:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e opp_35_A_forward _opp_35_A_forward fV
;           diff -> R10
	.even
_opp_35_A_forward::
	st -y,R10
	mov R10,R16
	.dbline -1
	.dbline 234
; 
; void opp_35_A_forward (unsigned char diff)
; { angle_3A(_3A-diff); angle_5A(_5A+diff); }
	.dbline 234
	lds R16,__3A
	sub R16,R10
	xcall _angle_3A
	.dbline 234
	lds R16,__5A
	add R16,R10
	xcall _angle_5A
	.dbline -2
L175:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r diff 10 c
	.dbend
	.dbfunc e opp_14_BC _opp_14_BC fV
;         angleC -> R10
;         angleB -> R12
	.even
_opp_14_BC::
	st -y,R10
	st -y,R12
	mov R10,R18
	mov R12,R16
	.dbline -1
	.dbline 237
; 
; void opp_14_BC (unsigned char angleB, unsigned char angleC)
; { angle_1B(angleB); angle_1C(angleC); angle_4B(angleB); angle_4C(angleC); }
	.dbline 237
	mov R16,R12
	xcall _angle_1B
	.dbline 237
	mov R16,R10
	xcall _angle_1C
	.dbline 237
	mov R16,R12
	xcall _angle_4B
	.dbline 237
	mov R16,R10
	xcall _angle_4C
	.dbline -2
L176:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r angleC 10 c
	.dbsym r angleB 12 c
	.dbend
	.dbfunc e opp_26_BC _opp_26_BC fV
;         angleC -> R10
;         angleB -> R12
	.even
_opp_26_BC::
	st -y,R10
	st -y,R12
	mov R10,R18
	mov R12,R16
	.dbline -1
	.dbline 240
; 
; void opp_26_BC (unsigned char angleB, unsigned char angleC)
; { angle_2B(angleB); angle_2C(angleC); angle_6B(angleB); angle_6C(angleC); }
	.dbline 240
	mov R16,R12
	xcall _angle_2B
	.dbline 240
	mov R16,R10
	xcall _angle_2C
	.dbline 240
	mov R16,R12
	xcall _angle_6B
	.dbline 240
	mov R16,R10
	xcall _angle_6C
	.dbline -2
L177:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r angleC 10 c
	.dbsym r angleB 12 c
	.dbend
	.dbfunc e opp_35_BC _opp_35_BC fV
;         angleC -> R10
;         angleB -> R12
	.even
_opp_35_BC::
	st -y,R10
	st -y,R12
	mov R10,R18
	mov R12,R16
	.dbline -1
	.dbline 243
; 
; void opp_35_BC (unsigned char angleB, unsigned char angleC)
; { angle_3B(angleB); angle_3C(angleC); angle_5B(angleB); angle_5C(angleC); }
	.dbline 243
	mov R16,R12
	xcall _angle_3B
	.dbline 243
	mov R16,R10
	xcall _angle_3C
	.dbline 243
	mov R16,R12
	xcall _angle_5B
	.dbline 243
	mov R16,R10
	xcall _angle_5C
	.dbline -2
L178:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym r angleC 10 c
	.dbsym r angleB 12 c
	.dbend
	.dbfunc e even_A_servo_90 _even_A_servo_90 fV
	.even
_even_A_servo_90::
	.dbline -1
	.dbline 247
; 
; //Specific Angles
; void even_A_servo_90 (void)
; { angle_2A(90); angle_4A(90); angle_6A(90); }
	.dbline 247
	ldi R16,90
	xcall _angle_2A
	.dbline 247
	ldi R16,90
	xcall _angle_4A
	.dbline 247
	ldi R16,90
	xcall _angle_6A
	.dbline -2
L179:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e even_A_servo_65 _even_A_servo_65 fV
	.even
_even_A_servo_65::
	.dbline -1
	.dbline 250
; 
; void even_A_servo_65 (void) //clockwise
; { angle_2A(65); angle_4A(65); angle_6A(65); }
	.dbline 250
	ldi R16,65
	xcall _angle_2A
	.dbline 250
	ldi R16,65
	xcall _angle_4A
	.dbline 250
	ldi R16,65
	xcall _angle_6A
	.dbline -2
L180:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e even_A_servo_115 _even_A_servo_115 fV
	.even
_even_A_servo_115::
	.dbline -1
	.dbline 253
; 
; void even_A_servo_115 (void)//anticlockwise
; { angle_2A(115); angle_4A(115); angle_6A(115); }
	.dbline 253
	ldi R16,115
	xcall _angle_2A
	.dbline 253
	ldi R16,115
	xcall _angle_4A
	.dbline 253
	ldi R16,115
	xcall _angle_6A
	.dbline -2
L181:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e even_BC_servo_90 _even_BC_servo_90 fV
	.even
_even_BC_servo_90::
	.dbline -1
	.dbline 256
; 
; void even_BC_servo_90 (void)
; { angle_2B(90); angle_2C(90); angle_4B(90); angle_4C(90); angle_6B(90); angle_6C(90); }
	.dbline 256
	ldi R16,90
	xcall _angle_2B
	.dbline 256
	ldi R16,90
	xcall _angle_2C
	.dbline 256
	ldi R16,90
	xcall _angle_4B
	.dbline 256
	ldi R16,90
	xcall _angle_4C
	.dbline 256
	ldi R16,90
	xcall _angle_6B
	.dbline 256
	ldi R16,90
	xcall _angle_6C
	.dbline -2
L182:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e even_BC_servo_up_45 _even_BC_servo_up_45 fV
	.even
_even_BC_servo_up_45::
	.dbline -1
	.dbline 259
; 
; void even_BC_servo_up_45 (void)
; { angle_2B(45); angle_2C(45); angle_4B(45); angle_4C(45); angle_6B(45); angle_6C(45); }
	.dbline 259
	ldi R16,45
	xcall _angle_2B
	.dbline 259
	ldi R16,45
	xcall _angle_2C
	.dbline 259
	ldi R16,45
	xcall _angle_4B
	.dbline 259
	ldi R16,45
	xcall _angle_4C
	.dbline 259
	ldi R16,45
	xcall _angle_6B
	.dbline 259
	ldi R16,45
	xcall _angle_6C
	.dbline -2
L183:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e even_BC_servo_down_45 _even_BC_servo_down_45 fV
	.even
_even_BC_servo_down_45::
	.dbline -1
	.dbline 262
; 
; void even_BC_servo_down_45 (void)
; { angle_2B(135); angle_2C(135); angle_4B(135); angle_4C(135); angle_6B(135); angle_6C(135); }
	.dbline 262
	ldi R16,135
	xcall _angle_2B
	.dbline 262
	ldi R16,135
	xcall _angle_2C
	.dbline 262
	ldi R16,135
	xcall _angle_4B
	.dbline 262
	ldi R16,135
	xcall _angle_4C
	.dbline 262
	ldi R16,135
	xcall _angle_6B
	.dbline 262
	ldi R16,135
	xcall _angle_6C
	.dbline -2
L184:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_A_servo_90 _odd_A_servo_90 fV
	.even
_odd_A_servo_90::
	.dbline -1
	.dbline 265
; 
; void odd_A_servo_90 (void)
; { angle_1A(90); angle_3A(90); angle_5A(90); }
	.dbline 265
	ldi R16,90
	xcall _angle_1A
	.dbline 265
	ldi R16,90
	xcall _angle_3A
	.dbline 265
	ldi R16,90
	xcall _angle_5A
	.dbline -2
L185:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_A_servo_65 _odd_A_servo_65 fV
	.even
_odd_A_servo_65::
	.dbline -1
	.dbline 268
; 
; void odd_A_servo_65 (void)//clockwise
; { angle_1A(65); angle_3A(65); angle_5A(65); }
	.dbline 268
	ldi R16,65
	xcall _angle_1A
	.dbline 268
	ldi R16,65
	xcall _angle_3A
	.dbline 268
	ldi R16,65
	xcall _angle_5A
	.dbline -2
L186:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_A_servo_115 _odd_A_servo_115 fV
	.even
_odd_A_servo_115::
	.dbline -1
	.dbline 271
; 
; void odd_A_servo_115 (void) //anticlockwise
; { angle_1A(115); angle_3A(115); angle_5A(115); }
	.dbline 271
	ldi R16,115
	xcall _angle_1A
	.dbline 271
	ldi R16,115
	xcall _angle_3A
	.dbline 271
	ldi R16,115
	xcall _angle_5A
	.dbline -2
L187:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_BC_servo_90 _odd_BC_servo_90 fV
	.even
_odd_BC_servo_90::
	.dbline -1
	.dbline 274
; 
; void odd_BC_servo_90 (void)
; { angle_1B(90); angle_1C(90); angle_3B(90); angle_3C(90); angle_5B(90); angle_5C(90); }
	.dbline 274
	ldi R16,90
	xcall _angle_1B
	.dbline 274
	ldi R16,90
	xcall _angle_1C
	.dbline 274
	ldi R16,90
	xcall _angle_3B
	.dbline 274
	ldi R16,90
	xcall _angle_3C
	.dbline 274
	ldi R16,90
	xcall _angle_5B
	.dbline 274
	ldi R16,90
	xcall _angle_5C
	.dbline -2
L188:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_BC_servo_up_45 _odd_BC_servo_up_45 fV
	.even
_odd_BC_servo_up_45::
	.dbline -1
	.dbline 277
; 
; void odd_BC_servo_up_45 (void)
; { angle_1B(45); angle_1C(45); angle_3B(45); angle_3C(45); angle_5B(45); angle_5C(45); }
	.dbline 277
	ldi R16,45
	xcall _angle_1B
	.dbline 277
	ldi R16,45
	xcall _angle_1C
	.dbline 277
	ldi R16,45
	xcall _angle_3B
	.dbline 277
	ldi R16,45
	xcall _angle_3C
	.dbline 277
	ldi R16,45
	xcall _angle_5B
	.dbline 277
	ldi R16,45
	xcall _angle_5C
	.dbline -2
L189:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e odd_BC_servo_down_45 _odd_BC_servo_down_45 fV
	.even
_odd_BC_servo_down_45::
	.dbline -1
	.dbline 280
; 
; void odd_BC_servo_down_45 (void)
; { angle_1B(135); angle_1C(135); angle_3B(135); angle_3C(135); angle_5B(135); angle_5C(135); }
	.dbline 280
	ldi R16,135
	xcall _angle_1B
	.dbline 280
	ldi R16,135
	xcall _angle_1C
	.dbline 280
	ldi R16,135
	xcall _angle_3B
	.dbline 280
	ldi R16,135
	xcall _angle_3C
	.dbline 280
	ldi R16,135
	xcall _angle_5B
	.dbline 280
	ldi R16,135
	xcall _angle_5C
	.dbline -2
L190:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e rotate_clockwise_3 _rotate_clockwise_3 fV
	.even
_rotate_clockwise_3::
	.dbline -1
	.dbline 300
; 
; /*********************void rotate_clockwise_3v2 (void)
; {
;  motion_busy = 1; 
;  servo_calibration(); delay_250ms(); 
;  even_A_servo(77); even_BC_servo(45,45); delay_250ms(); 
;  even_BC_servo(90,90); delay_250ms(); 
;  odd_A_servo(77); odd_BC_servo(45,45); delay_250ms(); 
;  odd_BC_servo(90,90); delay_250ms(); 
;  even_A_servo(90); odd_A_servo(90);
;  motion_busy = 0; 
; }*///////////////////***////*/
; 
; 
; /*********************************************************************/
; /***************Code for CLOCKWISE ROTATATION*************************/
; 
;   //  A single rotation move using three legs at a time.
; void rotate_clockwise_3 (void)
; {
	.dbline 301
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 302
;  servo_calibration(); delay_250ms(); 
	xcall _servo_calibration
	.dbline 302
	xcall _delay_250ms
	.dbline 303
;  even_A_servo(62); even_BC_servo(45,45); angle_2B(_2B-9); delay_250ms(); 
	ldi R16,62
	xcall _even_A_servo
	.dbline 303
	ldi R18,45
	ldi R16,45
	xcall _even_BC_servo
	.dbline 303
	lds R16,__2B
	subi R16,9
	xcall _angle_2B
	.dbline 303
	xcall _delay_250ms
	.dbline 304
;  even_BC_servo(90,90); angle_2B(_2B-9); delay_250ms(); 
	ldi R18,90
	ldi R16,90
	xcall _even_BC_servo
	.dbline 304
	lds R16,__2B
	subi R16,9
	xcall _angle_2B
	.dbline 304
	xcall _delay_250ms
	.dbline 305
;  odd_A_servo(62); odd_BC_servo(45,45); delay_250ms(); 
	ldi R16,62
	xcall _odd_A_servo
	.dbline 305
	ldi R18,45
	ldi R16,45
	xcall _odd_BC_servo
	.dbline 305
	xcall _delay_250ms
	.dbline 306
;  odd_BC_servo(90,90); delay_250ms(); 
	ldi R18,90
	ldi R16,90
	xcall _odd_BC_servo
	.dbline 306
	xcall _delay_250ms
	.dbline 307
;  servo_calibration(); angle_2B(_2B-9); delay_250ms();
	xcall _servo_calibration
	.dbline 307
	lds R16,__2B
	subi R16,9
	xcall _angle_2B
	.dbline 307
	xcall _delay_250ms
	.dbline 308
;  motion_busy = 0;
	clr R2
	sts _motion_busy,R2
	.dbline -2
L191:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e rotate_clockwise _rotate_clockwise fV
;          count -> R10,R11
;              i -> R20,R21
;    clock_angle -> R10,R11
	.even
_rotate_clockwise::
	xcall push_xgset300C
	movw R10,R16
	.dbline -1
	.dbline 317
;  
;  /*Pls note that, the calibration offset of 2B servo, in case of rotation wasn't required,
;  Hence to overcome that, we had used angle_2B(_2B-9); to nullify the effect of offset defined in angle_2B function  */ 
; }
; 
; 
;  // Main rotate function to be used specifying the degrees to be rotated
; void rotate_clockwise (unsigned int clock_angle)
; {
	.dbline 318
;  int count = (clock_angle%180)/(90.0/12);
	ldi R18,180
	ldi R19,0
	movw R16,R10
	xcall mod16u
	xcall uint2fp
	movw R2,R16
	movw R4,R18
	ldi R16,<L193
	ldi R17,>L193
	xcall elpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	movw R16,R2
	movw R18,R4
	xcall fpdiv2
	xcall fpint
	movw R10,R16
	.dbline 321
;  	 	   	 						//Thereby getting a precision of 90/12 degrees in one rotation.
;  int i;
;  for (i=0; i < count; i++)
	clr R20
	clr R21
	xjmp L197
L194:
	.dbline 322
;  	  rotate_clockwise_3();
	xcall _rotate_clockwise_3
L195:
	.dbline 321
	subi R20,255  ; offset = 1
	sbci R21,255
L197:
	.dbline 321
	cp R20,R10
	cpc R21,R11
	brlt L194
X34:
	.dbline -2
L192:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r count 10 I
	.dbsym r i 20 I
	.dbsym r clock_angle 10 i
	.dbend
	.dbfunc e rotate_anticlockwise_3 _rotate_anticlockwise_3 fV
	.even
_rotate_anticlockwise_3::
	.dbline -1
	.dbline 333
; }
; 
; /*********************************************************************/
; 
; 
; /*********************************************************************/
; /*************Code for ANTI-CLOCKWISE ROTATATION**********************/
; 
;   //  A single rotation move using three legs at a time.
; void rotate_anticlockwise_3 (void)
; {
	.dbline 334
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 335
;  servo_calibration(); delay_250ms(); 
	xcall _servo_calibration
	.dbline 335
	xcall _delay_250ms
	.dbline 336
;  even_A_servo(118); even_BC_servo(45,45); angle_2B(_2B-9); delay_250ms(); 
	ldi R16,118
	xcall _even_A_servo
	.dbline 336
	ldi R18,45
	ldi R16,45
	xcall _even_BC_servo
	.dbline 336
	lds R16,__2B
	subi R16,9
	xcall _angle_2B
	.dbline 336
	xcall _delay_250ms
	.dbline 337
;  even_BC_servo(90,90); angle_2B(_2B-9); delay_250ms(); 
	ldi R18,90
	ldi R16,90
	xcall _even_BC_servo
	.dbline 337
	lds R16,__2B
	subi R16,9
	xcall _angle_2B
	.dbline 337
	xcall _delay_250ms
	.dbline 338
;  odd_A_servo(118); odd_BC_servo(45,45); delay_250ms(); 
	ldi R16,118
	xcall _odd_A_servo
	.dbline 338
	ldi R18,45
	ldi R16,45
	xcall _odd_BC_servo
	.dbline 338
	xcall _delay_250ms
	.dbline 339
;  odd_BC_servo(90,90); delay_250ms(); 
	ldi R18,90
	ldi R16,90
	xcall _odd_BC_servo
	.dbline 339
	xcall _delay_250ms
	.dbline 340
;  servo_calibration(); angle_2B(_2B-9); delay_250ms();
	xcall _servo_calibration
	.dbline 340
	lds R16,__2B
	subi R16,9
	xcall _angle_2B
	.dbline 340
	xcall _delay_250ms
	.dbline 341
;  motion_busy = 0;
	clr R2
	sts _motion_busy,R2
	.dbline -2
L198:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e rotate_anticlockwise _rotate_anticlockwise fV
;          count -> R10,R11
;              i -> R20,R21
; anticlock_angle -> R10,R11
	.even
_rotate_anticlockwise::
	xcall push_xgset300C
	movw R10,R16
	.dbline -1
	.dbline 349
;  
;  /*Pls note that, the calibration offset of 2B servo, in case of rotation wasn't required,
;   Hence to overcome that, we had used angle_2B(_2B-9); to nullify the effect of offset defined in angle_2B function  */
; }
; 
;  // Main rotate function to be used specifying the degrees to be rotated
; void rotate_anticlockwise (unsigned int anticlock_angle)
; {
	.dbline 350
;  int count = (anticlock_angle%180)/(90.0/12);
	ldi R18,180
	ldi R19,0
	movw R16,R10
	xcall mod16u
	xcall uint2fp
	movw R2,R16
	movw R4,R18
	ldi R16,<L193
	ldi R17,>L193
	xcall elpm32
	st -y,R19
	st -y,R18
	st -y,R17
	st -y,R16
	movw R16,R2
	movw R18,R4
	xcall fpdiv2
	xcall fpint
	movw R10,R16
	.dbline 353
;  	 	   	 						//Thereby getting a precision of 90/12 degrees in one rotation.
;  int i;
;  for (i=0; i < count; i++)
	clr R20
	clr R21
	xjmp L203
L200:
	.dbline 354
;  	  rotate_anticlockwise_3(); 
	xcall _rotate_anticlockwise_3
L201:
	.dbline 353
	subi R20,255  ; offset = 1
	sbci R21,255
L203:
	.dbline 353
	cp R20,R10
	cpc R21,R11
	brlt L200
X35:
	.dbline -2
L199:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r count 10 I
	.dbsym r i 20 I
	.dbsym r anticlock_angle 10 i
	.dbend
	.dbfunc e forward _forward fV
	.even
_forward::
	.dbline -1
	.dbline 383
; }
; /*********************************************************************/
; 
; 
; /*********************************************************************/
; /*******************A general rotate function*************************/
; /*******************Rotation values valid from -180 degree to +180 degree***********/
; /*******
; void rotate (signed int angle)
; {
;  angle = angle % 180;
;  while(angle>=180)
;  		angle -= angle%180;
;  
;  if (angle == 0)
;  	return;
;  else if(angle > 0)
;  		  rotate_clockwise(angle);
;  else
;  	 	  rotate_anticlockwise(-angle);
; }**********/
; 
; 
; 
; 
; /****FORWARD USING 2 LEGS AT A TIME****************/
; 
; void forward (void)
; {
	.dbline 384
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 385
;  servo_calibration();
	xcall _servo_calibration
	.dbline 386
;  delay_250ms();
	xcall _delay_250ms
	.dbline 389
;  
;  //legs 2 and 4 move forward
;  angle_2B(45); angle_2C(45); angle_4B(45); angle_4C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_2B
	.dbline 389
	ldi R16,45
	xcall _angle_2C
	.dbline 389
	ldi R16,45
	xcall _angle_4B
	.dbline 389
	ldi R16,45
	xcall _angle_4C
	.dbline 390
;  delay_250ms();
	xcall _delay_250ms
	.dbline 391
;  angle_2A(60); angle_4A(120); //front pair move forward while legs are up
	ldi R16,60
	xcall _angle_2A
	.dbline 391
	ldi R16,120
	xcall _angle_4A
	.dbline 392
;  delay_250ms();
	xcall _delay_250ms
	.dbline 393
;  angle_2B(90); angle_2C(90); angle_4B(90); angle_4C(90); // put down legs
	ldi R16,90
	xcall _angle_2B
	.dbline 393
	ldi R16,90
	xcall _angle_2C
	.dbline 393
	ldi R16,90
	xcall _angle_4B
	.dbline 393
	ldi R16,90
	xcall _angle_4C
	.dbline 394
;  delay_250ms();
	xcall _delay_250ms
	.dbline 397
;  
;  //legs 1 and 6 move forward
;  angle_1B(45); angle_1C(45); angle_6B(45); angle_6C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_1B
	.dbline 397
	ldi R16,45
	xcall _angle_1C
	.dbline 397
	ldi R16,45
	xcall _angle_6B
	.dbline 397
	ldi R16,45
	xcall _angle_6C
	.dbline 398
;  delay_250ms();
	xcall _delay_250ms
	.dbline 399
;  angle_1A(60); angle_6A(120); //middel pair move back while legs are up
	ldi R16,60
	xcall _angle_1A
	.dbline 399
	ldi R16,120
	xcall _angle_6A
	.dbline 400
;  delay_250ms();
	xcall _delay_250ms
	.dbline 401
;  angle_1B(90); angle_1C(90); angle_6B(90); angle_6C(90); // put down legs
	ldi R16,90
	xcall _angle_1B
	.dbline 401
	ldi R16,90
	xcall _angle_1C
	.dbline 401
	ldi R16,90
	xcall _angle_6B
	.dbline 401
	ldi R16,90
	xcall _angle_6C
	.dbline 402
;  delay_250ms();
	xcall _delay_250ms
	.dbline 405
;  
;  //legs 3 and 5 move forward
;  angle_3B(45); angle_3C(45); angle_5B(45); angle_5C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_3B
	.dbline 405
	ldi R16,45
	xcall _angle_3C
	.dbline 405
	ldi R16,45
	xcall _angle_5B
	.dbline 405
	ldi R16,45
	xcall _angle_5C
	.dbline 406
;  delay_250ms();
	xcall _delay_250ms
	.dbline 407
;  angle_3A(60); angle_5A(120); //middel pair move forward while legs are up
	ldi R16,60
	xcall _angle_3A
	.dbline 407
	ldi R16,120
	xcall _angle_5A
	.dbline 408
;  delay_250ms();
	xcall _delay_250ms
	.dbline 409
;  angle_3B(90); angle_3C(90); angle_5B(90); angle_5C(90); // put down legs
	ldi R16,90
	xcall _angle_3B
	.dbline 409
	ldi R16,90
	xcall _angle_3C
	.dbline 409
	ldi R16,90
	xcall _angle_5B
	.dbline 409
	ldi R16,90
	xcall _angle_5C
	.dbline 410
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 412
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 413
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L204:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e forward_3_legs _forward_3_legs fV
	.even
_forward_3_legs::
	.dbline -1
	.dbline 420
; }
; 
; 
; /****FORWARD USING 3 LEGS AT A TIME****************/
; 
; void forward_3_legs (void)
; {
	.dbline 421
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 423
;  
;  servo_calibration();
	xcall _servo_calibration
	.dbline 424
;  delay_250ms();
	xcall _delay_250ms
	.dbline 427
;  
;  //even legs move forward
;  even_BC_servo(45,45); //even BC servos raise limbs
	ldi R18,45
	ldi R16,45
	xcall _even_BC_servo
	.dbline 428
;  delay_250ms();
	xcall _delay_250ms
	.dbline 429
;  even_A_servo_forward(20); //even A servos move raised limbs in forward direction
	ldi R16,20
	xcall _even_A_servo_forward
	.dbline 430
;  delay_250ms();
	xcall _delay_250ms
	.dbline 431
;  even_BC_servo(90,90); // put down raised limbs
	ldi R18,90
	ldi R16,90
	xcall _even_BC_servo
	.dbline 432
;  delay_250ms();
	xcall _delay_250ms
	.dbline 435
;  
;  //odd legs move forward
;  odd_BC_servo(45,45); //odd BC servos raise limbs
	ldi R18,45
	ldi R16,45
	xcall _odd_BC_servo
	.dbline 436
;  delay_250ms();
	xcall _delay_250ms
	.dbline 437
;  even_A_servo(90); //even A servos move chassis in forward direction
	ldi R16,90
	xcall _even_A_servo
	.dbline 438
;  delay_250ms();
	xcall _delay_250ms
	.dbline 445
;  //odd_BC_servo(90,90); // put down raised limbs
;  //delay_250ms();
;  
;  //odd legs move forward
;  //odd_BC_servo(45,45); //odd BC servos raise limbs
;  //delay_250ms();
;  odd_A_servo_forward(20); //odd A servos move raised limbs in forward direction
	ldi R16,20
	xcall _odd_A_servo_forward
	.dbline 446
;  delay_250ms();
	xcall _delay_250ms
	.dbline 447
;  odd_BC_servo(90,90); // put down raised limbs
	ldi R18,90
	ldi R16,90
	xcall _odd_BC_servo
	.dbline 448
;  delay_250ms();
	xcall _delay_250ms
	.dbline 451
;  
;  //even legs move forward
;  even_BC_servo(45,45); //even BC servos raise limbs
	ldi R18,45
	ldi R16,45
	xcall _even_BC_servo
	.dbline 452
;  delay_250ms();
	xcall _delay_250ms
	.dbline 453
;  odd_A_servo(90); //odd A servos move chassis in forward direction
	ldi R16,90
	xcall _odd_A_servo
	.dbline 454
;  delay_250ms();
	xcall _delay_250ms
	.dbline 455
;  even_BC_servo(90,90); // put down raised limbs
	ldi R18,90
	ldi R16,90
	xcall _even_BC_servo
	.dbline 456
;  delay_250ms();
	xcall _delay_250ms
	.dbline 458
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 459
;  delay_250ms();
	xcall _delay_250ms
	.dbline 461
;  
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L205:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e backward _backward fV
	.even
_backward::
	.dbline -1
	.dbline 469
; }
; 
; 
; 
; /****BACKWARD USING 2 LEGS AT A TIME****************/
; 
;  void backward (void)
;  {
	.dbline 470
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 471
;  servo_calibration();
	xcall _servo_calibration
	.dbline 472
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 475
;  
;  //legs 2 and 4 move back
;  angle_2B(45); angle_2C(45); angle_4B(45); angle_4C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_2B
	.dbline 475
	ldi R16,45
	xcall _angle_2C
	.dbline 475
	ldi R16,45
	xcall _angle_4B
	.dbline 475
	ldi R16,45
	xcall _angle_4C
	.dbline 476
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 477
;  angle_2A(120); angle_4A(60); //front pair move forward while legs are up
	ldi R16,120
	xcall _angle_2A
	.dbline 477
	ldi R16,60
	xcall _angle_4A
	.dbline 478
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 479
;  angle_2B(90); angle_2C(90); angle_4B(90); angle_4C(90); // put down legs
	ldi R16,90
	xcall _angle_2B
	.dbline 479
	ldi R16,90
	xcall _angle_2C
	.dbline 479
	ldi R16,90
	xcall _angle_4B
	.dbline 479
	ldi R16,90
	xcall _angle_4C
	.dbline 480
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 483
;  
;  //legs 1 and 6 move back
;  angle_1B(45); angle_1C(45); angle_6B(45); angle_6C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_1B
	.dbline 483
	ldi R16,45
	xcall _angle_1C
	.dbline 483
	ldi R16,45
	xcall _angle_6B
	.dbline 483
	ldi R16,45
	xcall _angle_6C
	.dbline 484
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 485
;  angle_1A(120); angle_6A(60); //middel pair move back while legs are up
	ldi R16,120
	xcall _angle_1A
	.dbline 485
	ldi R16,60
	xcall _angle_6A
	.dbline 486
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 487
;  angle_1B(90); angle_1C(90); angle_6B(90); angle_6C(90); // put down legs
	ldi R16,90
	xcall _angle_1B
	.dbline 487
	ldi R16,90
	xcall _angle_1C
	.dbline 487
	ldi R16,90
	xcall _angle_6B
	.dbline 487
	ldi R16,90
	xcall _angle_6C
	.dbline 488
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 491
;  
;  //legs 3 and 5 move back
;  angle_3B(45); angle_3C(45); angle_5B(45); angle_5C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_3B
	.dbline 491
	ldi R16,45
	xcall _angle_3C
	.dbline 491
	ldi R16,45
	xcall _angle_5B
	.dbline 491
	ldi R16,45
	xcall _angle_5C
	.dbline 492
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 493
;  angle_3A(120); angle_5A(60); //middel pair move forward while legs are up
	ldi R16,120
	xcall _angle_3A
	.dbline 493
	ldi R16,60
	xcall _angle_5A
	.dbline 494
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 495
;  angle_3B(90); angle_3C(90); angle_5B(90); angle_5C(90); // put down legs
	ldi R16,90
	xcall _angle_3B
	.dbline 495
	ldi R16,90
	xcall _angle_3C
	.dbline 495
	ldi R16,90
	xcall _angle_5B
	.dbline 495
	ldi R16,90
	xcall _angle_5C
	.dbline 496
;  delay_250ms();  
	xcall _delay_250ms
	.dbline 498
;  
;  servo_calibration(); angle_3B(_3B+9); delay_250ms(); //push towards back
	xcall _servo_calibration
	.dbline 498
	lds R16,__3B
	subi R16,247    ; addi 9
	xcall _angle_3B
	.dbline 498
	xcall _delay_250ms
	.dbline 499
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L206:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e backward_3_legs _backward_3_legs fV
	.even
_backward_3_legs::
	.dbline -1
	.dbline 506
; }
; 
; 
; /****BACKWARD USING 3 LEGS AT A TIME****************/
; 
; void backward_3_legs (void)
;  {
	.dbline 507
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 509
;  
;  servo_calibration();
	xcall _servo_calibration
	.dbline 510
;  delay_250ms();
	xcall _delay_250ms
	.dbline 513
;  
;  //even legs move forward
;  even_BC_servo(45,45); //even BC servos raise limbs
	ldi R18,45
	ldi R16,45
	xcall _even_BC_servo
	.dbline 514
;  delay_250ms();
	xcall _delay_250ms
	.dbline 515
;  even_A_servo_backward(20); //even A servos move raised limbs in forward direction
	ldi R16,20
	xcall _even_A_servo_backward
	.dbline 516
;  delay_250ms();
	xcall _delay_250ms
	.dbline 517
;  even_BC_servo(90,90); // put down raised limbs
	ldi R18,90
	ldi R16,90
	xcall _even_BC_servo
	.dbline 518
;  delay_250ms();
	xcall _delay_250ms
	.dbline 521
;  
;  //odd legs move forward
;  odd_BC_servo(45,45); //odd BC servos raise limbs
	ldi R18,45
	ldi R16,45
	xcall _odd_BC_servo
	.dbline 522
;  delay_250ms();
	xcall _delay_250ms
	.dbline 523
;  even_A_servo(90); //even A servos move chassis in forward direction
	ldi R16,90
	xcall _even_A_servo
	.dbline 524
;  delay_250ms();
	xcall _delay_250ms
	.dbline 531
;  //odd_BC_servo(90,90); // put down raised limbs
;  //delay_250ms();
;  
;  //odd legs move forward
;  //odd_BC_servo(45,45); //odd BC servos raise limbs
;  //delay_250ms();
;  odd_A_servo_backward(20); //odd A servos move raised limbs in forward direction
	ldi R16,20
	xcall _odd_A_servo_backward
	.dbline 532
;  delay_250ms();
	xcall _delay_250ms
	.dbline 533
;  odd_BC_servo(90,90); // put down raised limbs
	ldi R18,90
	ldi R16,90
	xcall _odd_BC_servo
	.dbline 534
;  delay_250ms();
	xcall _delay_250ms
	.dbline 537
;  
;  //even legs move forward
;  even_BC_servo(45,45); //even BC servos raise limbs
	ldi R18,45
	ldi R16,45
	xcall _even_BC_servo
	.dbline 538
;  delay_250ms();
	xcall _delay_250ms
	.dbline 539
;  odd_A_servo(90); //odd A servos move chassis in forward direction
	ldi R16,90
	xcall _odd_A_servo
	.dbline 540
;  delay_250ms();
	xcall _delay_250ms
	.dbline 541
;  even_BC_servo(90,90); // put down raised limbs
	ldi R18,90
	ldi R16,90
	xcall _even_BC_servo
	.dbline 542
;  delay_250ms();
	xcall _delay_250ms
	.dbline 544
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 545
;  delay_250ms();
	xcall _delay_250ms
	.dbline 547
;  
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L207:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e robot_standup _robot_standup fV
	.even
_robot_standup::
	.dbline -1
	.dbline 553
; }
; 
; 
; 
; void robot_standup (void) //warning: do not call this function while robot is standing or servos will get damaged
; {
	.dbline 554
; motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 556
; //servo_calibration();
; angle_1B(1); angle_1C(110); angle_2B(1); angle_2C(110); angle_3B(1); angle_3C(110);
	ldi R16,1
	xcall _angle_1B
	.dbline 556
	ldi R16,110
	xcall _angle_1C
	.dbline 556
	ldi R16,1
	xcall _angle_2B
	.dbline 556
	ldi R16,110
	xcall _angle_2C
	.dbline 556
	ldi R16,1
	xcall _angle_3B
	.dbline 556
	ldi R16,110
	xcall _angle_3C
	.dbline 557
; angle_4B(179); angle_4C(70); angle_5B(179); angle_5C(70); angle_6B(179); angle_6C(70);
	ldi R16,179
	xcall _angle_4B
	.dbline 557
	ldi R16,70
	xcall _angle_4C
	.dbline 557
	ldi R16,179
	xcall _angle_5B
	.dbline 557
	ldi R16,70
	xcall _angle_5C
	.dbline 557
	ldi R16,179
	xcall _angle_6B
	.dbline 557
	ldi R16,70
	xcall _angle_6C
	.dbline 558
; delay_1s();
	xcall _delay_1s
	.dbline 559
; delay_1s();
	xcall _delay_1s
	.dbline 560
; servo_calibration();
	xcall _servo_calibration
	.dbline 561
; motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L208:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e remote_control _remote_control fV
;          flag1 -> R20
	.even
_remote_control::
	xcall push_xgsetF000
	.dbline -1
	.dbline 565
; }
; 
; void remote_control(void)
; {
	.dbline 566
;   unsigned char flag1 = 0;
	clr R20
	.dbline 567
;   PORTA = remote_data[4]; //move left joystick up and down and see if there is any change in the bargraph display.
	lds R2,_remote_data+4
	out 0x2,R2
	.dbline 568
;   flag1 = 0; //resetting the flag
	.dbline 570
;  
;   if((flag1 == 0) && (motion_busy == 0)) //forward, 1 beep
	tst R20
	brne L211
X36:
	lds R2,_motion_busy
	tst R2
	brne L211
X37:
	.dbline 571
;   {
	.dbline 572
;   if(remote_data[4] > 0x29)
	ldi R24,41
	lds R2,_remote_data+4
	cp R24,R2
	brsh L213
X38:
	.dbline 573
;    {
	.dbline 574
;     flag1 = 1;
	ldi R20,1
	.dbline 575
;     forward();
	xcall _forward
	.dbline 577
;     //buzzer_on(); delay_250ms(); buzzer_off(); //use it to debug remote onnection
;    }   
L213:
	.dbline 578
;   }
L211:
	.dbline 580
;   
;   if((flag1 == 0) && (motion_busy == 0)) //back, 2 beep
	tst R20
	brne L216
X39:
	lds R2,_motion_busy
	tst R2
	brne L216
X40:
	.dbline 581
;   {
	.dbline 582
;   if(remote_data[4] < 0x15)
	lds R24,_remote_data+4
	cpi R24,21
	brsh L218
X41:
	.dbline 583
;    {
	.dbline 584
;     flag1 = 1;
	ldi R20,1
	.dbline 585
; 	backward();
	xcall _backward
	.dbline 587
; 	//buzzer_on(); delay_250ms(); buzzer_off();delay_250ms(); buzzer_on(); delay_250ms(); buzzer_off(); //use it to debug remote onnection
;    }
L218:
	.dbline 588
;   }
L216:
	.dbline 590
;   
;   if((flag1 == 0) && (motion_busy == 0)) //anticlockwise (left), 3 beep
	tst R20
	brne L221
X42:
	lds R2,_motion_busy
	tst R2
	brne L221
X43:
	.dbline 591
;   {
	.dbline 592
;   if(remote_data[3] > 0x2D)
	ldi R24,45
	lds R2,_remote_data+3
	cp R24,R2
	brsh L223
X44:
	.dbline 593
;    {
	.dbline 594
;     flag1 = 1;
	ldi R20,1
	.dbline 595
; 	rotate_anticlockwise_3();
	xcall _rotate_anticlockwise_3
	.dbline 597
; 	//buzzer_on(); delay_250ms(); buzzer_off();delay_250ms(); buzzer_on(); delay_250ms(); buzzer_off(); delay_250ms(); buzzer_on(); delay_250ms(); buzzer_off(); //use it to debug remote onnection
;    }
L223:
	.dbline 598
;  }
L221:
	.dbline 600
;   
;   if((flag1 == 0) && (motion_busy == 0)) //clockwise (right), 4 beep
	tst R20
	brne L226
X45:
	lds R2,_motion_busy
	tst R2
	brne L226
X46:
	.dbline 601
;   {
	.dbline 602
;   if(remote_data[3] < 0x19)
	lds R24,_remote_data+3
	cpi R24,25
	brsh L228
X47:
	.dbline 603
;    {
	.dbline 604
;     flag1 = 1;
	ldi R20,1
	.dbline 605
; 	rotate_clockwise_3();
	xcall _rotate_clockwise_3
	.dbline 607
; 	//buzzer_on(); delay_250ms(); buzzer_off();delay_250ms(); buzzer_on(); delay_250ms(); buzzer_off(); delay_250ms(); buzzer_on(); delay_250ms(); buzzer_off();delay_250ms(); buzzer_on(); delay_250ms(); buzzer_off(); //use it to debug remote onnection
;    }
L228:
	.dbline 608
;   }
L226:
	.dbline 610
;   
;   if((flag1 == 0) && (motion_busy == 0)) //stop 1 long beep
	tst R20
	brne L231
X48:
	lds R2,_motion_busy
	tst R2
	brne L231
X49:
	.dbline 611
;   {
	.dbline 612
;   if((0x19 < remote_data[3] < 0x2D) && (0x15 < remote_data[4] < 0x29)) 
	lds R2,_remote_data+3
	ldi R24,25
	cp R24,R2
	brsh L237
X50:
	ldi R22,1
	ldi R23,0
	xjmp L238
L237:
	clr R22
	clr R23
L238:
	cpi R22,45
	ldi R30,0
	cpc R23,R30
	brge L233
X51:
	lds R2,_remote_data+4
	ldi R24,21
	cp R24,R2
	brsh L239
X52:
	ldi R22,1
	ldi R23,0
	xjmp L240
L239:
	clr R22
	clr R23
L240:
	cpi R22,41
	ldi R30,0
	cpc R23,R30
	brge L233
X53:
	.dbline 613
;    {
	.dbline 614
;     flag1 = 1;
	ldi R20,1
	.dbline 615
; 	servo_calibration();
	xcall _servo_calibration
	.dbline 617
; 	//buzzer_on(); delay_250ms(); delay_250ms(); delay_250ms(); buzzer_off(); //use it to debug remote onnection
;    }
L233:
	.dbline 618
;   }
L231:
	.dbline -2
L209:
	.dbline 0 ; func end
	xjmp pop_xgsetF000
	.dbsym r flag1 20 c
	.dbend
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
	.dbfunc e main _main fV
;              i -> R20,R21
	.even
_main::
	.dbline -1
	.dbline 91
; /**
; 
;  main.c :	Main Program
;  This file uses the two header files being created hexapod.h and hexapod_firebirdv.h
;  This piece of code demonstrates the motion of hexapod and also how the letters can be scribed out
;  with the help of hexapod and a pen attached to it, just by tracing the letter through its motion.
; 
;  @author Group 10: Abhinav Maurya 10305016
;  		 	   	   Yogesh Kakde	  10305039
; 				   Lokesh Rajwani 10305066
;  
;  AVR Studio Version 4.17, Build 666
; 
;  Date: 6th November 2010
;  
;     Make sure that in the configuration options following settings are 
;  	done for proper operation of the code
; 
;  	Microcontroller: atmega2560
;  	Frequency: 11059200
;  	Optimization: -O0 (For more information read section: Selecting proper optimization options 
; 						below figure 4.22 in the hardware manual)
; *********************************************************************************/
; 
; 
; /********************************************************************************
; 
;    Copyright (c) 2010, ERTS Lab IIT Bombay erts@cse.iitb.ac.in               -*- c -*-
;    All rights reserved.
; 
;    Redistribution and use in source and binary forms, with or without
;    modification, are permitted provided that the following conditions are met:
; 
;    * Redistributions of source code must retain the above copyright
;      notice, this list of conditions and the following disclaimer.
; 
;    * Redistributions in binary form must reproduce the above copyright
;      notice, this list of conditions and the following disclaimer in
;      the documentation and/or other materials provided with the
;      distribution.
; 
;    * Neither the name of the copyright holders nor the names of
;      contributors may be used to endorse or promote products derived
;      from this software without specific prior written permission.
; 
;    * Source code can be used for academic purpose. 
; 	 For commercial use permission form the author needs to be taken.
; 
;   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;   POSSIBILITY OF SUCH DAMAGE. 
; 
; ********************************************************************************/
; 
; 
; 	// Application: ICC-AVR
; // Target: M2560
; // Crystal: 11.059Mhz
; 
; 
; 
; #include "hexapod.h"
; 
; //These functions provide forward motions in each adjacent limbs direction
; //Although these functions are not currently used, but are provided as a secondary functions.
; 
; void forward_1_4 (void);  		  		 /** 	 	  1    4	   		 **/
; void forward_4_5 (void);
; void forward_3_2 (void);				 /**	  2  	       5		 **/
; void forward_2_1 (void);
; void forward_5_6 (void);				 /** 	 	  3    6	   		 **/
; 
; 
; //The functions declared below are the functions which will scribe out letters as indicated by their names.
; //Such functions can be extended even to scribe out numbers and shapes.
; void write_H(int n);
; void write_X(int n);
; 
; 
; 
; /*******MAIN PROGRAM***********/
; void main(void)
; {
	.dbline 93
;  int i;
;  init_devices();
	xcall _init_devices
	.dbline 95
;  //insert your functional code here...
;  servo_calibration(); //must be called as the first instruction
	xcall _servo_calibration
	.dbline 96
;  servo_on();//turning on the servo supply
	xcall _servo_on
	.dbline 100
; 
; 
;  ////////********DEMO 1***********////////// 
;  delay(5000);
	ldi R16,5000
	ldi R17,19
	xcall _delay
	.dbline 103
;  
;  //The code below rotates the hexapod by 360 degrees
;  rotate_clockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_clockwise
	.dbline 104
;  rotate_clockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_clockwise
	.dbline 105
;  rotate_clockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_clockwise
	.dbline 106
;  rotate_clockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_clockwise
	.dbline 110
;  
;  
;  ////////********DEMO 2***********//////////
;  delay(5000);
	ldi R16,5000
	ldi R17,19
	xcall _delay
	.dbline 113
;  
;  //The code below traverses the hexapod forward and then backward
;  for(i=0;i<5;i++){
	clr R20
	clr R21
L242:
	.dbline 113
	.dbline 114
;   forward();
	xcall _forward
L246:
	.dbline 115
;   while(motion_busy == 1);
L247:
	.dbline 115
	lds R24,_motion_busy
	cpi R24,1
	breq L246
X54:
	.dbline 116
;  }
L243:
	.dbline 113
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 113
	cpi R20,5
	ldi R30,0
	cpc R21,R30
	brlt L242
X55:
	.dbline 118
;  
;  delay(5000);
	ldi R16,5000
	ldi R17,19
	xcall _delay
	.dbline 119
;  for(i=0;i<10;i++){
	clr R20
	clr R21
L249:
	.dbline 119
	.dbline 120
;   backward();
	xcall _backward
L253:
	.dbline 121
;   while(motion_busy == 1);
L254:
	.dbline 121
	lds R24,_motion_busy
	cpi R24,1
	breq L253
X56:
	.dbline 122
;  }
L250:
	.dbline 119
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 119
	cpi R20,10
	ldi R30,0
	cpc R21,R30
	brlt L249
X57:
	.dbline 127
;  
;  
;  ////////********DEMO 3***********//////////
;  ////////********To write H********/////////
;  delay(5000);
	ldi R16,5000
	ldi R17,19
	xcall _delay
	.dbline 128
;  write_H(4);
	ldi R16,4
	ldi R17,0
	xcall _write_H
	.dbline -2
L241:
	.dbline 0 ; func end
	ret
	.dbsym r i 20 I
	.dbend
	.dbfunc e forward_1_4 _forward_1_4 fV
	.even
_forward_1_4::
	.dbline -1
	.dbline 141
; }
; 
; 
; 
; 
; 
; 
; /****************FUNCTION DEFINITIONS***************/
; /***********DEFINING USER-DEFINED FUNCTIONS*********/
; //The following functions may be modified, added depending upon the project needs
; 
; void forward_1_4 (void)
; {
	.dbline 142
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 143
;  servo_calibration();
	xcall _servo_calibration
	.dbline 144
;  delay_250ms();
	xcall _delay_250ms
	.dbline 147
;  
;  //legs 2 and 4 move forward
;  angle_2B(45); angle_2C(45); angle_4B(45); angle_4C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_2B
	.dbline 147
	ldi R16,45
	xcall _angle_2C
	.dbline 147
	ldi R16,45
	xcall _angle_4B
	.dbline 147
	ldi R16,45
	xcall _angle_4C
	.dbline 148
;  delay_250ms();
	xcall _delay_250ms
	.dbline 149
;  angle_2A(60); angle_4A(120); //front pair move forward while legs are up
	ldi R16,60
	xcall _angle_2A
	.dbline 149
	ldi R16,120
	xcall _angle_4A
	.dbline 150
;  delay_250ms();
	xcall _delay_250ms
	.dbline 151
;  angle_2B(90); angle_2C(90); angle_4B(90); angle_4C(90); // put down legs
	ldi R16,90
	xcall _angle_2B
	.dbline 151
	ldi R16,90
	xcall _angle_2C
	.dbline 151
	ldi R16,90
	xcall _angle_4B
	.dbline 151
	ldi R16,90
	xcall _angle_4C
	.dbline 152
;  delay_250ms();
	xcall _delay_250ms
	.dbline 155
;  
;  //legs 1 and 6 move forward
;  angle_1B(45); angle_1C(45); angle_6B(45); angle_6C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_1B
	.dbline 155
	ldi R16,45
	xcall _angle_1C
	.dbline 155
	ldi R16,45
	xcall _angle_6B
	.dbline 155
	ldi R16,45
	xcall _angle_6C
	.dbline 156
;  delay_250ms();
	xcall _delay_250ms
	.dbline 157
;  angle_1A(60); angle_6A(120); //middel pair move back while legs are up
	ldi R16,60
	xcall _angle_1A
	.dbline 157
	ldi R16,120
	xcall _angle_6A
	.dbline 158
;  delay_250ms();
	xcall _delay_250ms
	.dbline 159
;  angle_1B(90); angle_1C(90); angle_6B(90); angle_6C(90); // put down legs
	ldi R16,90
	xcall _angle_1B
	.dbline 159
	ldi R16,90
	xcall _angle_1C
	.dbline 159
	ldi R16,90
	xcall _angle_6B
	.dbline 159
	ldi R16,90
	xcall _angle_6C
	.dbline 160
;  delay_250ms();
	xcall _delay_250ms
	.dbline 163
;  
;  //legs 3 and 5 move forward
;  angle_3B(45); angle_3C(45); angle_5B(45); angle_5C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_3B
	.dbline 163
	ldi R16,45
	xcall _angle_3C
	.dbline 163
	ldi R16,45
	xcall _angle_5B
	.dbline 163
	ldi R16,45
	xcall _angle_5C
	.dbline 164
;  delay_250ms();
	xcall _delay_250ms
	.dbline 165
;  angle_3A(60); angle_5A(120); //middel pair move forward while legs are up
	ldi R16,60
	xcall _angle_3A
	.dbline 165
	ldi R16,120
	xcall _angle_5A
	.dbline 166
;  delay_250ms();
	xcall _delay_250ms
	.dbline 167
;  angle_3B(90); angle_3C(90); angle_5B(90); angle_5C(90); // put down legs
	ldi R16,90
	xcall _angle_3B
	.dbline 167
	ldi R16,90
	xcall _angle_3C
	.dbline 167
	ldi R16,90
	xcall _angle_5B
	.dbline 167
	ldi R16,90
	xcall _angle_5C
	.dbline 168
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 170
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 171
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L256:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e forward_4_5 _forward_4_5 fV
	.even
_forward_4_5::
	.dbline -1
	.dbline 175
; }
; 
; void forward_4_5 (void)
; {
	.dbline 176
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 177
;  servo_calibration();
	xcall _servo_calibration
	.dbline 178
;  delay_250ms();
	xcall _delay_250ms
	.dbline 181
;  
;  //legs 1 and 5 move forward
;  angle_1B(45); angle_1C(45); angle_5B(45); angle_5C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_1B
	.dbline 181
	ldi R16,45
	xcall _angle_1C
	.dbline 181
	ldi R16,45
	xcall _angle_5B
	.dbline 181
	ldi R16,45
	xcall _angle_5C
	.dbline 182
;  delay_250ms();
	xcall _delay_250ms
	.dbline 183
;  angle_1A(80); angle_5A(120); //front pair move forward while legs are up
	ldi R16,80
	xcall _angle_1A
	.dbline 183
	ldi R16,120
	xcall _angle_5A
	.dbline 184
;  delay_250ms();
	xcall _delay_250ms
	.dbline 185
;  angle_1B(90); angle_1C(90); angle_5B(90); angle_5C(90); // put down legs
	ldi R16,90
	xcall _angle_1B
	.dbline 185
	ldi R16,90
	xcall _angle_1C
	.dbline 185
	ldi R16,90
	xcall _angle_5B
	.dbline 185
	ldi R16,90
	xcall _angle_5C
	.dbline 186
;  delay_250ms();
	xcall _delay_250ms
	.dbline 189
;  
;  //legs 4 and 3 move forward
;  angle_4B(45); angle_4C(45); angle_3B(45); angle_3C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_4B
	.dbline 189
	ldi R16,45
	xcall _angle_4C
	.dbline 189
	ldi R16,45
	xcall _angle_3B
	.dbline 189
	ldi R16,45
	xcall _angle_3C
	.dbline 190
;  delay_250ms();
	xcall _delay_250ms
	.dbline 191
;  angle_4A(80); angle_3A(120); //middel pair move back while legs are up
	ldi R16,80
	xcall _angle_4A
	.dbline 191
	ldi R16,120
	xcall _angle_3A
	.dbline 192
;  delay_250ms();
	xcall _delay_250ms
	.dbline 193
;  angle_4B(90); angle_4C(90); angle_3B(90); angle_3C(90); // put down legs
	ldi R16,90
	xcall _angle_4B
	.dbline 193
	ldi R16,90
	xcall _angle_4C
	.dbline 193
	ldi R16,90
	xcall _angle_3B
	.dbline 193
	ldi R16,90
	xcall _angle_3C
	.dbline 194
;  delay_250ms();
	xcall _delay_250ms
	.dbline 197
;  
;  //legs 2 and 6 move forward
;  angle_2B(45); angle_2C(45); angle_6B(45); angle_6C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_2B
	.dbline 197
	ldi R16,45
	xcall _angle_2C
	.dbline 197
	ldi R16,45
	xcall _angle_6B
	.dbline 197
	ldi R16,45
	xcall _angle_6C
	.dbline 198
;  delay_250ms();
	xcall _delay_250ms
	.dbline 199
;  angle_2A(80); angle_6A(120); //middel pair move forward while legs are up
	ldi R16,80
	xcall _angle_2A
	.dbline 199
	ldi R16,120
	xcall _angle_6A
	.dbline 200
;  delay_250ms();
	xcall _delay_250ms
	.dbline 201
;  angle_2B(90); angle_2C(90); angle_6B(90); angle_6C(90); // put down legs
	ldi R16,90
	xcall _angle_2B
	.dbline 201
	ldi R16,90
	xcall _angle_2C
	.dbline 201
	ldi R16,90
	xcall _angle_6B
	.dbline 201
	ldi R16,90
	xcall _angle_6C
	.dbline 202
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 204
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 205
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L257:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e forward_3_2 _forward_3_2 fV
	.even
_forward_3_2::
	.dbline -1
	.dbline 209
; }
; 
; void forward_3_2 (void)
; {
	.dbline 210
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 211
;  servo_calibration();
	xcall _servo_calibration
	.dbline 212
;  delay_250ms();
	xcall _delay_250ms
	.dbline 215
;  
;  //legs 6 and 2 move forward
;  angle_6B(45); angle_6C(45); angle_2B(45); angle_2C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_6B
	.dbline 215
	ldi R16,45
	xcall _angle_6C
	.dbline 215
	ldi R16,45
	xcall _angle_2B
	.dbline 215
	ldi R16,45
	xcall _angle_2C
	.dbline 216
;  delay_250ms();
	xcall _delay_250ms
	.dbline 217
;  angle_6A(60); angle_2A(120); //front pair move forward while legs are up
	ldi R16,60
	xcall _angle_6A
	.dbline 217
	ldi R16,120
	xcall _angle_2A
	.dbline 218
;  delay_250ms();
	xcall _delay_250ms
	.dbline 219
;  angle_6B(90); angle_6C(90); angle_2B(90); angle_2C(90); // put down legs
	ldi R16,90
	xcall _angle_6B
	.dbline 219
	ldi R16,90
	xcall _angle_6C
	.dbline 219
	ldi R16,90
	xcall _angle_2B
	.dbline 219
	ldi R16,90
	xcall _angle_2C
	.dbline 220
;  delay_250ms();
	xcall _delay_250ms
	.dbline 223
;  
;  //legs 3 and 4 move forward
;  angle_3B(45); angle_3C(45); angle_4B(45); angle_4C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_3B
	.dbline 223
	ldi R16,45
	xcall _angle_3C
	.dbline 223
	ldi R16,45
	xcall _angle_4B
	.dbline 223
	ldi R16,45
	xcall _angle_4C
	.dbline 224
;  delay_250ms();
	xcall _delay_250ms
	.dbline 225
;  angle_3A(60); angle_4A(120); //middel pair move back while legs are up
	ldi R16,60
	xcall _angle_3A
	.dbline 225
	ldi R16,120
	xcall _angle_4A
	.dbline 226
;  delay_250ms();
	xcall _delay_250ms
	.dbline 227
;  angle_3B(90); angle_3C(90); angle_4B(90); angle_4C(90); // put down legs
	ldi R16,90
	xcall _angle_3B
	.dbline 227
	ldi R16,90
	xcall _angle_3C
	.dbline 227
	ldi R16,90
	xcall _angle_4B
	.dbline 227
	ldi R16,90
	xcall _angle_4C
	.dbline 228
;  delay_250ms();
	xcall _delay_250ms
	.dbline 231
;  
;  //legs 5 and 1 move forward
;  angle_5B(45); angle_5C(45); angle_1B(45); angle_1C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_5B
	.dbline 231
	ldi R16,45
	xcall _angle_5C
	.dbline 231
	ldi R16,45
	xcall _angle_1B
	.dbline 231
	ldi R16,45
	xcall _angle_1C
	.dbline 232
;  delay_250ms();
	xcall _delay_250ms
	.dbline 233
;  angle_5A(60); angle_1A(120); //middel pair move forward while legs are up
	ldi R16,60
	xcall _angle_5A
	.dbline 233
	ldi R16,120
	xcall _angle_1A
	.dbline 234
;  delay_250ms();
	xcall _delay_250ms
	.dbline 235
;  angle_5B(90); angle_5C(90); angle_1B(90); angle_1C(90); // put down legs
	ldi R16,90
	xcall _angle_5B
	.dbline 235
	ldi R16,90
	xcall _angle_5C
	.dbline 235
	ldi R16,90
	xcall _angle_1B
	.dbline 235
	ldi R16,90
	xcall _angle_1C
	.dbline 236
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 238
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 239
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L258:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e forward_2_1 _forward_2_1 fV
	.even
_forward_2_1::
	.dbline -1
	.dbline 243
; }
; 
; void forward_2_1 (void)
; {
	.dbline 244
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 245
;  servo_calibration();
	xcall _servo_calibration
	.dbline 246
;  delay_250ms();
	xcall _delay_250ms
	.dbline 249
;  
;  //legs 3 and 1 move forward
;  angle_3B(45); angle_3C(45); angle_1B(45); angle_1C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_3B
	.dbline 249
	ldi R16,45
	xcall _angle_3C
	.dbline 249
	ldi R16,45
	xcall _angle_1B
	.dbline 249
	ldi R16,45
	xcall _angle_1C
	.dbline 250
;  delay_250ms();
	xcall _delay_250ms
	.dbline 251
;  angle_3A(60); angle_1A(120); //front pair move forward while legs are up
	ldi R16,60
	xcall _angle_3A
	.dbline 251
	ldi R16,120
	xcall _angle_1A
	.dbline 252
;  delay_250ms();
	xcall _delay_250ms
	.dbline 253
;  angle_3B(90); angle_3C(90); angle_1B(90); angle_1C(90); // put down legs
	ldi R16,90
	xcall _angle_3B
	.dbline 253
	ldi R16,90
	xcall _angle_3C
	.dbline 253
	ldi R16,90
	xcall _angle_1B
	.dbline 253
	ldi R16,90
	xcall _angle_1C
	.dbline 254
;  delay_250ms();
	xcall _delay_250ms
	.dbline 257
;  
;  //legs 2 and 5 move forward
;  angle_2B(45); angle_2C(45); angle_5B(45); angle_5C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_2B
	.dbline 257
	ldi R16,45
	xcall _angle_2C
	.dbline 257
	ldi R16,45
	xcall _angle_5B
	.dbline 257
	ldi R16,45
	xcall _angle_5C
	.dbline 258
;  delay_250ms();
	xcall _delay_250ms
	.dbline 259
;  angle_2A(60); angle_5A(120); //middel pair move back while legs are up
	ldi R16,60
	xcall _angle_2A
	.dbline 259
	ldi R16,120
	xcall _angle_5A
	.dbline 260
;  delay_250ms();
	xcall _delay_250ms
	.dbline 261
;  angle_2B(90); angle_2C(90); angle_5B(90); angle_5C(90); // put down legs
	ldi R16,90
	xcall _angle_2B
	.dbline 261
	ldi R16,90
	xcall _angle_2C
	.dbline 261
	ldi R16,90
	xcall _angle_5B
	.dbline 261
	ldi R16,90
	xcall _angle_5C
	.dbline 262
;  delay_250ms();
	xcall _delay_250ms
	.dbline 265
;  
;  //legs 6 and 4 move forward
;  angle_6B(45); angle_6C(45); angle_4B(45); angle_4C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_6B
	.dbline 265
	ldi R16,45
	xcall _angle_6C
	.dbline 265
	ldi R16,45
	xcall _angle_4B
	.dbline 265
	ldi R16,45
	xcall _angle_4C
	.dbline 266
;  delay_250ms();
	xcall _delay_250ms
	.dbline 267
;  angle_6A(60); angle_4A(120); //middel pair move forward while legs are up
	ldi R16,60
	xcall _angle_6A
	.dbline 267
	ldi R16,120
	xcall _angle_4A
	.dbline 268
;  delay_250ms();
	xcall _delay_250ms
	.dbline 269
;  angle_6B(90); angle_6C(90); angle_4B(90); angle_4C(90); // put down legs
	ldi R16,90
	xcall _angle_6B
	.dbline 269
	ldi R16,90
	xcall _angle_6C
	.dbline 269
	ldi R16,90
	xcall _angle_4B
	.dbline 269
	ldi R16,90
	xcall _angle_4C
	.dbline 270
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 272
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 273
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L259:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e forward_5_6 _forward_5_6 fV
	.even
_forward_5_6::
	.dbline -1
	.dbline 277
; }
; 
; void forward_5_6 (void)
; {
	.dbline 278
;  motion_busy = 1; 
	ldi R24,1
	sts _motion_busy,R24
	.dbline 279
;  servo_calibration();
	xcall _servo_calibration
	.dbline 280
;  delay_250ms();
	xcall _delay_250ms
	.dbline 283
;  
;  //legs 4 and 6 move forward
;  angle_4B(45); angle_4C(45); angle_6B(45); angle_6C(45); //front pair BC servo up 45
	ldi R16,45
	xcall _angle_4B
	.dbline 283
	ldi R16,45
	xcall _angle_4C
	.dbline 283
	ldi R16,45
	xcall _angle_6B
	.dbline 283
	ldi R16,45
	xcall _angle_6C
	.dbline 284
;  delay_250ms();
	xcall _delay_250ms
	.dbline 285
;  angle_4A(60); angle_6A(120); //front pair move forward while legs are up
	ldi R16,60
	xcall _angle_4A
	.dbline 285
	ldi R16,120
	xcall _angle_6A
	.dbline 286
;  delay_250ms();
	xcall _delay_250ms
	.dbline 287
;  angle_4B(90); angle_4C(90); angle_6B(90); angle_6C(90); // put down legs
	ldi R16,90
	xcall _angle_4B
	.dbline 287
	ldi R16,90
	xcall _angle_4C
	.dbline 287
	ldi R16,90
	xcall _angle_6B
	.dbline 287
	ldi R16,90
	xcall _angle_6C
	.dbline 288
;  delay_250ms();
	xcall _delay_250ms
	.dbline 291
;  
;  //legs 5 and 2 move forward
;  angle_5B(45); angle_5C(45); angle_2B(45); angle_2C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_5B
	.dbline 291
	ldi R16,45
	xcall _angle_5C
	.dbline 291
	ldi R16,45
	xcall _angle_2B
	.dbline 291
	ldi R16,45
	xcall _angle_2C
	.dbline 292
;  delay_250ms();
	xcall _delay_250ms
	.dbline 293
;  angle_5A(60); angle_2A(120); //middel pair move back while legs are up
	ldi R16,60
	xcall _angle_5A
	.dbline 293
	ldi R16,120
	xcall _angle_2A
	.dbline 294
;  delay_250ms();
	xcall _delay_250ms
	.dbline 295
;  angle_5B(90); angle_5C(90); angle_2B(90); angle_2C(90); // put down legs
	ldi R16,90
	xcall _angle_5B
	.dbline 295
	ldi R16,90
	xcall _angle_5C
	.dbline 295
	ldi R16,90
	xcall _angle_2B
	.dbline 295
	ldi R16,90
	xcall _angle_2C
	.dbline 296
;  delay_250ms();
	xcall _delay_250ms
	.dbline 299
;  
;  //legs 1 and 3 move forward
;  angle_1B(45); angle_1C(45); angle_3B(45); angle_3C(45); //middel pair BC servo up 45
	ldi R16,45
	xcall _angle_1B
	.dbline 299
	ldi R16,45
	xcall _angle_1C
	.dbline 299
	ldi R16,45
	xcall _angle_3B
	.dbline 299
	ldi R16,45
	xcall _angle_3C
	.dbline 300
;  delay_250ms();
	xcall _delay_250ms
	.dbline 301
;  angle_1A(60); angle_3A(120); //middel pair move forward while legs are up
	ldi R16,60
	xcall _angle_1A
	.dbline 301
	ldi R16,120
	xcall _angle_3A
	.dbline 302
;  delay_250ms();
	xcall _delay_250ms
	.dbline 303
;  angle_1B(90); angle_1C(90); angle_3B(90); angle_3C(90); // put down legs
	ldi R16,90
	xcall _angle_1B
	.dbline 303
	ldi R16,90
	xcall _angle_1C
	.dbline 303
	ldi R16,90
	xcall _angle_3B
	.dbline 303
	ldi R16,90
	xcall _angle_3C
	.dbline 304
;  delay_250ms(); 
	xcall _delay_250ms
	.dbline 306
;  
;  servo_calibration(); //push towards forward
	xcall _servo_calibration
	.dbline 307
;  motion_busy = 0; 
	clr R2
	sts _motion_busy,R2
	.dbline -2
L260:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e next_letter _next_letter fV
;              i -> R20,R21
	.even
_next_letter::
	st -y,R20
	st -y,R21
	.dbline -1
	.dbline 322
; }
; 
; 
; /*****************************************************************
; 	The functions below describe the scribing of letters.
; 	Each letter starts when hexapod is at upright position
; 	and after scribing out the letter, the hexapod ends with
; 	facing right position. So, to start off with next letter
; 	again, next_letter() function must be called which not only
; 	resets the hexapod position to facing UP but also keeps
; 	some distance from the previous letter scribbed out.
; *****************************************************************/
; 
; void next_letter()
; {
	.dbline 324
;  int i;
;  for(i=0;i<10;i++)
	clr R20
	clr R21
L262:
	.dbline 325
;  {
	.dbline 326
;  forward_3_legs();
	xcall _forward_3_legs
L266:
	.dbline 327
;  while(motion_busy == 1);
L267:
	.dbline 327
	lds R24,_motion_busy
	cpi R24,1
	breq L266
X58:
	.dbline 328
;  } 
L263:
	.dbline 324
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 324
	cpi R20,10
	ldi R30,0
	cpc R21,R30
	brlt L262
X59:
	.dbline 329
;  rotate_anticlockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_anticlockwise
	.dbline -2
L261:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r i 20 I
	.dbend
	.dbfunc e write_H _write_H fV
;              i -> R20,R21
;              n -> R10,R11
	.even
_write_H::
	xcall push_xgset300C
	movw R10,R16
	.dbline -1
	.dbline 336
; }
; 
; //parameter n resembles to size of letter being scribed out
; 
; /***************  H  ***************/
; void write_H(int n)
; {
	.dbline 338
;  int i;
;  for(i=0;i<2*n;i++)
	clr R20
	clr R21
	xjmp L273
L270:
	.dbline 339
;  {
	.dbline 340
;  forward();
	xcall _forward
L274:
	.dbline 341
;  while(motion_busy == 1);
L275:
	.dbline 341
	lds R24,_motion_busy
	cpi R24,1
	breq L274
X60:
	.dbline 342
;  }
L271:
	.dbline 338
	subi R20,255  ; offset = 1
	sbci R21,255
L273:
	.dbline 338
	movw R2,R10
	lsl R2
	rol R3
	cp R20,R2
	cpc R21,R3
	brlt L270
X61:
	.dbline 344
;  
;  for(i=0;i<n;i++)
	clr R20
	clr R21
	xjmp L280
L277:
	.dbline 345
;  {
	.dbline 346
;  backward();
	xcall _backward
L281:
	.dbline 347
;  while(motion_busy == 1);
L282:
	.dbline 347
	lds R24,_motion_busy
	cpi R24,1
	breq L281
X62:
	.dbline 348
;  }
L278:
	.dbline 344
	subi R20,255  ; offset = 1
	sbci R21,255
L280:
	.dbline 344
	cp R20,R10
	cpc R21,R11
	brlt L277
X63:
	.dbline 350
;  
;  rotate_clockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_clockwise
	.dbline 352
;  
;  for(i=0;i<n;i++)
	clr R20
	clr R21
	xjmp L287
L284:
	.dbline 353
;  {
	.dbline 354
;  forward();
	xcall _forward
L288:
	.dbline 355
;  while(motion_busy == 1);
L289:
	.dbline 355
	lds R24,_motion_busy
	cpi R24,1
	breq L288
X64:
	.dbline 356
;  }
L285:
	.dbline 352
	subi R20,255  ; offset = 1
	sbci R21,255
L287:
	.dbline 352
	cp R20,R10
	cpc R21,R11
	brlt L284
X65:
	.dbline 358
;  
;  rotate_anticlockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_anticlockwise
	.dbline 360
;  
;  for(i=0;i<n;i++)
	clr R20
	clr R21
	xjmp L294
L291:
	.dbline 361
;  {
	.dbline 362
;  forward();
	xcall _forward
L295:
	.dbline 363
;  while(motion_busy == 1);
L296:
	.dbline 363
	lds R24,_motion_busy
	cpi R24,1
	breq L295
X66:
	.dbline 364
;  }
L292:
	.dbline 360
	subi R20,255  ; offset = 1
	sbci R21,255
L294:
	.dbline 360
	cp R20,R10
	cpc R21,R11
	brlt L291
X67:
	.dbline 366
;  
;  for(i=0;i<2*n;i++)
	clr R20
	clr R21
	xjmp L301
L298:
	.dbline 367
;  {
	.dbline 368
;  backward();
	xcall _backward
L302:
	.dbline 369
;  while(motion_busy == 1);
L303:
	.dbline 369
	lds R24,_motion_busy
	cpi R24,1
	breq L302
X68:
	.dbline 370
;  }
L299:
	.dbline 366
	subi R20,255  ; offset = 1
	sbci R21,255
L301:
	.dbline 366
	movw R2,R10
	lsl R2
	rol R3
	cp R20,R2
	cpc R21,R3
	brlt L298
X69:
	.dbline 372
;  
;  rotate_anticlockwise(90);
	ldi R16,90
	ldi R17,0
	xcall _rotate_anticlockwise
	.dbline -2
L269:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r i 20 I
	.dbsym r n 10 I
	.dbend
	.dbfunc e write_X _write_X fV
;              i -> R20,R21
;              n -> R10,R11
	.even
_write_X::
	xcall push_xgset300C
	movw R10,R16
	.dbline -1
	.dbline 377
; }
; 
; /***************  X  ***************/
; void write_X(int n)
; {
	.dbline 379
;  int i;
;  for(i=0;i<2*n;i++)
	clr R20
	clr R21
	xjmp L309
L306:
	.dbline 380
;  {
	.dbline 381
;  forward_4_5();
	xcall _forward_4_5
L310:
	.dbline 382
;  while(motion_busy == 1);
L311:
	.dbline 382
	lds R24,_motion_busy
	cpi R24,1
	breq L310
X70:
	.dbline 383
;  }
L307:
	.dbline 379
	subi R20,255  ; offset = 1
	sbci R21,255
L309:
	.dbline 379
	movw R2,R10
	lsl R2
	rol R3
	cp R20,R2
	cpc R21,R3
	brlt L306
X71:
	.dbline 385
;  
;  for(i=0;i<n;i++)
	clr R20
	clr R21
	xjmp L316
L313:
	.dbline 386
;  {
	.dbline 387
;  forward_3_2();
	xcall _forward_3_2
L317:
	.dbline 388
;  while(motion_busy == 1);
L318:
	.dbline 388
	lds R24,_motion_busy
	cpi R24,1
	breq L317
X72:
	.dbline 389
;  }
L314:
	.dbline 385
	subi R20,255  ; offset = 1
	sbci R21,255
L316:
	.dbline 385
	cp R20,R10
	cpc R21,R11
	brlt L313
X73:
	.dbline 391
;  
;  for(i=0;i<n;i++)
	clr R20
	clr R21
	xjmp L323
L320:
	.dbline 392
;  {
	.dbline 393
;  forward_2_1();
	xcall _forward_2_1
L324:
	.dbline 394
;  while(motion_busy == 1);
L325:
	.dbline 394
	lds R24,_motion_busy
	cpi R24,1
	breq L324
X74:
	.dbline 395
;  }
L321:
	.dbline 391
	subi R20,255  ; offset = 1
	sbci R21,255
L323:
	.dbline 391
	cp R20,R10
	cpc R21,R11
	brlt L320
X75:
	.dbline 397
;  
;  for(i=0;i<2*n;i++)
	clr R20
	clr R21
	xjmp L330
L327:
	.dbline 398
;  {
	.dbline 399
;  forward_5_6();
	xcall _forward_5_6
L331:
	.dbline 400
;  while(motion_busy == 1);
L332:
	.dbline 400
	lds R24,_motion_busy
	cpi R24,1
	breq L331
X76:
	.dbline 401
;  }  
L328:
	.dbline 397
	subi R20,255  ; offset = 1
	sbci R21,255
L330:
	.dbline 397
	movw R2,R10
	lsl R2
	rol R3
	cp R20,R2
	cpc R21,R3
	brlt L327
X77:
	.dbline -2
L305:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r i 20 I
	.dbsym r n 10 I
	.dbend
	.area bss(ram, con, rel)
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
_remote_data::
	.blkb 8
	.dbfile C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h
	.dbsym e remote_data _remote_data A[8:8]c
_angle_lower_byte_6C::
	.blkb 1
	.dbsym e angle_lower_byte_6C _angle_lower_byte_6C c
_angle_upper_byte_6C::
	.blkb 1
	.dbsym e angle_upper_byte_6C _angle_upper_byte_6C c
_angle_lower_byte_6B::
	.blkb 1
	.dbsym e angle_lower_byte_6B _angle_lower_byte_6B c
_angle_upper_byte_6B::
	.blkb 1
	.dbsym e angle_upper_byte_6B _angle_upper_byte_6B c
_angle_lower_byte_6A::
	.blkb 1
	.dbsym e angle_lower_byte_6A _angle_lower_byte_6A c
_angle_upper_byte_6A::
	.blkb 1
	.dbsym e angle_upper_byte_6A _angle_upper_byte_6A c
_angle_lower_byte_5C::
	.blkb 1
	.dbsym e angle_lower_byte_5C _angle_lower_byte_5C c
_angle_upper_byte_5C::
	.blkb 1
	.dbsym e angle_upper_byte_5C _angle_upper_byte_5C c
_angle_lower_byte_5B::
	.blkb 1
	.dbsym e angle_lower_byte_5B _angle_lower_byte_5B c
_angle_upper_byte_5B::
	.blkb 1
	.dbsym e angle_upper_byte_5B _angle_upper_byte_5B c
_angle_lower_byte_5A::
	.blkb 1
	.dbsym e angle_lower_byte_5A _angle_lower_byte_5A c
_angle_upper_byte_5A::
	.blkb 1
	.dbsym e angle_upper_byte_5A _angle_upper_byte_5A c
_angle_lower_byte_4C::
	.blkb 1
	.dbsym e angle_lower_byte_4C _angle_lower_byte_4C c
_angle_upper_byte_4C::
	.blkb 1
	.dbsym e angle_upper_byte_4C _angle_upper_byte_4C c
_angle_lower_byte_4B::
	.blkb 1
	.dbsym e angle_lower_byte_4B _angle_lower_byte_4B c
_angle_upper_byte_4B::
	.blkb 1
	.dbsym e angle_upper_byte_4B _angle_upper_byte_4B c
_angle_lower_byte_4A::
	.blkb 1
	.dbsym e angle_lower_byte_4A _angle_lower_byte_4A c
_angle_upper_byte_4A::
	.blkb 1
	.dbsym e angle_upper_byte_4A _angle_upper_byte_4A c
_angle_lower_byte_3C::
	.blkb 1
	.dbsym e angle_lower_byte_3C _angle_lower_byte_3C c
_angle_upper_byte_3C::
	.blkb 1
	.dbsym e angle_upper_byte_3C _angle_upper_byte_3C c
_angle_lower_byte_3B::
	.blkb 1
	.dbsym e angle_lower_byte_3B _angle_lower_byte_3B c
_angle_upper_byte_3B::
	.blkb 1
	.dbsym e angle_upper_byte_3B _angle_upper_byte_3B c
_angle_lower_byte_3A::
	.blkb 1
	.dbsym e angle_lower_byte_3A _angle_lower_byte_3A c
_angle_upper_byte_3A::
	.blkb 1
	.dbsym e angle_upper_byte_3A _angle_upper_byte_3A c
_angle_lower_byte_2C::
	.blkb 1
	.dbsym e angle_lower_byte_2C _angle_lower_byte_2C c
_angle_upper_byte_2C::
	.blkb 1
	.dbsym e angle_upper_byte_2C _angle_upper_byte_2C c
_angle_lower_byte_2B::
	.blkb 1
	.dbsym e angle_lower_byte_2B _angle_lower_byte_2B c
_angle_upper_byte_2B::
	.blkb 1
	.dbsym e angle_upper_byte_2B _angle_upper_byte_2B c
_angle_lower_byte_2A::
	.blkb 1
	.dbsym e angle_lower_byte_2A _angle_lower_byte_2A c
_angle_upper_byte_2A::
	.blkb 1
	.dbsym e angle_upper_byte_2A _angle_upper_byte_2A c
_angle_lower_byte_1C::
	.blkb 1
	.dbsym e angle_lower_byte_1C _angle_lower_byte_1C c
_angle_upper_byte_1C::
	.blkb 1
	.dbsym e angle_upper_byte_1C _angle_upper_byte_1C c
_angle_lower_byte_1B::
	.blkb 1
	.dbsym e angle_lower_byte_1B _angle_lower_byte_1B c
_angle_upper_byte_1B::
	.blkb 1
	.dbsym e angle_upper_byte_1B _angle_upper_byte_1B c
_angle_lower_byte_1A::
	.blkb 1
	.dbsym e angle_lower_byte_1A _angle_lower_byte_1A c
_angle_upper_byte_1A::
	.blkb 1
	.dbsym e angle_upper_byte_1A _angle_upper_byte_1A c
__6C::
	.blkb 1
	.dbsym e _6C __6C c
__6B::
	.blkb 1
	.dbsym e _6B __6B c
__6A::
	.blkb 1
	.dbsym e _6A __6A c
__5C::
	.blkb 1
	.dbsym e _5C __5C c
__5B::
	.blkb 1
	.dbsym e _5B __5B c
__5A::
	.blkb 1
	.dbsym e _5A __5A c
__4C::
	.blkb 1
	.dbsym e _4C __4C c
__4B::
	.blkb 1
	.dbsym e _4B __4B c
__4A::
	.blkb 1
	.dbsym e _4A __4A c
__3C::
	.blkb 1
	.dbsym e _3C __3C c
__3B::
	.blkb 1
	.dbsym e _3B __3B c
__3A::
	.blkb 1
	.dbsym e _3A __3A c
__2C::
	.blkb 1
	.dbsym e _2C __2C c
__2B::
	.blkb 1
	.dbsym e _2B __2B c
__2A::
	.blkb 1
	.dbsym e _2A __2A c
__1C::
	.blkb 1
	.dbsym e _1C __1C c
__1B::
	.blkb 1
	.dbsym e _1B __1B c
__1A::
	.blkb 1
	.dbsym e _1A __1A c
	.area lit(rom, con, rel)
L193:
	.word 0x0,0x40f0
; }
; 
