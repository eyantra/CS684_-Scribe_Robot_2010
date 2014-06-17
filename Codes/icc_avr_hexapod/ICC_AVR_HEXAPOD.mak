CC = iccavr
CFLAGS =  -e -D__ICC_VERSION="7.14" -DATMEGA -D_EE_EXTIO -DATMega2560  -l -g -Mavr_extended -Wf-use_elpm 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x40000 -xcall -ucrtatmega.o -bfunc_lit:0xe4.0x10000 -dram_end:0x21ff -bdata:0x200.0x21ff -dhwstk_size:30 -beeprom:0.4096 -fihx_coff -S2
FILES = main.o 

ICC_AVR_HEXAPOD:	$(FILES)
	$(CC) -o ICC_AVR_HEXAPOD $(LFLAGS) @ICC_AVR_HEXAPOD.lk   -lcatm256
main.o: C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod.h C:\iccv7avr\include\math.h C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\hexapod_firebirdv.h C:\iccv7avr\include\iom2560v.h C:\iccv7avr\include\macros.h
main.o:	C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
	$(CC) -c $(CFLAGS) C:\DOCUME~1\Administrator\Desktop\Embedded\icc_avr_hexapod\icc_avr_hexapod\main.c
