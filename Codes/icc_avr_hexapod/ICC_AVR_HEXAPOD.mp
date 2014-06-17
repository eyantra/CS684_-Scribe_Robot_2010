NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   00E4   0004 =      4. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00E4  __lit_start
       00E8  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   00E8   000A =     10. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00E8  __idata_start
       00F2  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00F2   1C54 =   7252. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0079  __start
       0079  __text_start
       009B  _exit
       009C  _servo_on
       009E  _servo_off
       00A2  _reset_SP_LEFT
       00A8  _set_SP_LEFT
       00AE  _reset_1A
       00B2  _set_1A
       00B4  _reset_1B
       00BA  _set_1B
       00C0  _reset_1C
       00C4  _set_1C
       00C6  _reset_2A
       00CC  _set_2A
       00D2  _reset_2B
       00D6  _set_2B
       00D8  _reset_2C
       00DE  _set_2C
       00E4  _reset_3A
       00EA  _set_3A
       00F0  _reset_3B
       00F6  _set_3B
       00FC  _reset_3C
       0102  _set_3C
       0108  _reset_SP_RIGHT
       010E  _set_SP_RIGHT
       0114  _reset_4A
       0118  _set_4A
       011A  _reset_4B
       011E  _set_4B
       0120  _reset_4C
       0124  _set_4C
       0126  _reset_5A
       012C  _set_5A
       0132  _reset_5B
       0138  _set_5B
       013E  _reset_5C
       0144  _set_5C
       014A  _reset_6A
       0150  _set_6A
       0156  _reset_6B
       015C  _set_6B
       0162  _reset_6C
       0168  _set_6C
       016E  _delay
       018E  _delay_100ms
       019D  _delay_250ms
       01AC  _delay_500ms
       01BB  _delay_1s
       01CA  _port_init
       01F2  _timer1_init
       0219  _timer1_compa_isr
       0264  _timer1_compb_isr
       02AF  _timer1_compc_isr
       02FA  _timer1_ovf_isr
       0426  _uart0_init
       0437  _uart0_rx_isr
       0450  _init_devices
       0477  _angle_value_calculation
       0491  _angle_1A
       04A2  _angle_1B
       04B3  _angle_1C
       04C4  _angle_2A
       04D5  _angle_2B
       04E9  _angle_2C
       04FA  _angle_3A
       050B  _angle_3B
       051C  _angle_3C
       052D  _angle_4A
       053E  _angle_4B
       0555  _angle_4C
       056C  _angle_5A
       057D  _angle_5B
       0594  _angle_5C
       05AB  _angle_6A
       05BC  _angle_6B
       05D3  _angle_6C
       05EA  _buzzer_on
       05EC  _buzzer_off
       05F0  _servo_calibration
       0615  _odd_A_servo
       061F  _even_A_servo
       0629  _A_servo
       0639  _odd_B_servo
       0643  _even_B_servo
       064D  _B_servo
       065D  _odd_C_servo
       0667  _even_C_servo
       0671  _C_servo
       0681  _odd_BC_servo
       068C  _even_BC_servo
       0697  _BC_servo
       06A2  _odd_A_servo_forward
       06B2  _even_A_servo_forward
       06C2  _A_servo_forward
       06DE  _odd_A_servo_backward
       06EE  _even_A_servo_backward
       06FE  _A_servo_backward
       071A  _opp_14_A
       0722  _opp_26_A
       072A  _opp_35_A
       0732  _opp_14_A_forward
       073E  _opp_26_A_forward
       074A  _opp_35_A_forward
       0756  _opp_14_BC
       0765  _opp_26_BC
       0774  _opp_35_BC
       0783  _even_A_servo_90
       078A  _even_A_servo_65
       0791  _even_A_servo_115
       0798  _even_BC_servo_90
       07A5  _even_BC_servo_up_45
       07B2  _even_BC_servo_down_45
       07BF  _odd_A_servo_90
       07C6  _odd_A_servo_65
       07CD  _odd_A_servo_115
       07D4  _odd_BC_servo_90
       07E1  _odd_BC_servo_up_45
       07EE  _odd_BC_servo_down_45
       07FB  _rotate_clockwise_3
       0826  _rotate_clockwise
       084C  _rotate_anticlockwise_3
       0877  _rotate_anticlockwise
       089D  _forward
       08EC  _forward_3_legs
       091B  _backward
       096F  _backward_3_legs
       099E  _robot_standup
       09C0  _remote_control
       0A1E  _main
       0A5C  _forward_1_4
       0AB5  _forward_4_5
       0B0E  _forward_3_2
       0B67  _forward_2_1
       0BC0  _forward_5_6
       0C19  _next_letter
       0C2E  _write_H
       0C83  _write_X
       0CC2  mod16u
       0CC4  div16u
       0CC5  xdiv16u
       0CDE  elpm32
       0CF2  empy16s
       0D02  push_xgset300C
       0D07  pop_xgset300C
       0D0C  push_xgsetF000
       0D11  pop_xgsetF000
       0D16  neg32
       0D1F  fpint
       0D4B  uint2fp
       0D4D  int2fp
       0D56  ulong2fp
       0D58  long2fp
       0D6B  fpdiv1
       0D74  fpdiv2
       0D7E  fpdiv1x
       0D8A  fpdiv2x
       0E1B  unpacks
       0E23  tstR16_R19
       0E2B  unpacku
       0E40  normalize_and_pack
       0E6E  pack
       0E78  fpneg
       0E7F  fpneg2
       0E85  saveR8toR25
       0E94  restoreR8toR25
       0EA3  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0200   000A =     10. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0200  _arm_number
       0200  __data_start
       0201  _angle_upper_byte
       0202  _angle_lower_byte
       0203  _degree
       0204  _delay_count
       0206  _serial_communication_interval
       0208  _serial_communication_channel_number
       0209  _motion_busy
       020A  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   020A   003E =     62. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       020A  __bss_start
       020A  _remote_data
       0212  _angle_lower_byte_6C
       0213  _angle_upper_byte_6C
       0214  _angle_lower_byte_6B
       0215  _angle_upper_byte_6B
       0216  _angle_lower_byte_6A
       0217  _angle_upper_byte_6A
       0218  _angle_lower_byte_5C
       0219  _angle_upper_byte_5C
       021A  _angle_lower_byte_5B
       021B  _angle_upper_byte_5B
       021C  _angle_lower_byte_5A
       021D  _angle_upper_byte_5A
       021E  _angle_lower_byte_4C
       021F  _angle_upper_byte_4C
       0220  _angle_lower_byte_4B
       0221  _angle_upper_byte_4B
       0222  _angle_lower_byte_4A
       0223  _angle_upper_byte_4A
       0224  _angle_lower_byte_3C
       0225  _angle_upper_byte_3C
       0226  _angle_lower_byte_3B
       0227  _angle_upper_byte_3B
       0228  _angle_lower_byte_3A
       0229  _angle_upper_byte_3A
       022A  _angle_lower_byte_2C
       022B  _angle_upper_byte_2C
       022C  _angle_lower_byte_2B
       022D  _angle_upper_byte_2B
       022E  _angle_lower_byte_2A
       022F  _angle_upper_byte_2A
       0230  _angle_lower_byte_1C
       0231  _angle_upper_byte_1C
       0232  _angle_lower_byte_1B
       0233  _angle_upper_byte_1B
       0234  _angle_lower_byte_1A
       0235  _angle_upper_byte_1A
       0236  __6C
       0237  __6B
       0238  __6A
       0239  __5C
       023A  __5B
       023B  __5A
       023C  __4C
       023D  __4B
       023E  __4A
       023F  __3C
       0240  __3B
       0241  __3A
       0242  __2C
       0243  __2B
       0244  __2A
       0245  __1C
       0246  __1B
       0247  __1A
       0248  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0068 =    104. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
main.o	[ main.c ]
<library>	[ div16u.s, elpm32.s, emul16s.s, gpushx.s, gpushy.s, lneg.s, fpint.s, int2fp.s, fpdiv_new.s, fputil.s ]


User Global Definitions

ram_end = 0x21ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0xe4
data = 0x200
eeprom:0.4096

