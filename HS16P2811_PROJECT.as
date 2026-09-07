opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_Init
	FNCALL	_main,_user_init
	FNCALL	_main,_delay_ms
	FNCALL	_user_init,_adc_init
	FNCALL	_user_init,_timer1_init
	FNCALL	_user_init,_timer3_init
	FNCALL	_user_init,_delay_ms
	FNCALL	_System_Init,_GPIO_Init
	FNCALL	_System_Init,_CLR_RAM_EveryBank
	FNROOT	_main
	FNCALL	_myIsr,_led_refresh
	FNCALL	_myIsr,_pen_pwr_off
	FNCALL	_myIsr,_key_scan
	FNCALL	_myIsr,_led_all_off
	FNCALL	_myIsr,_led_status_handle
	FNCALL	_myIsr,___lmul
	FNCALL	_key_scan,_led_all_off
	FNCALL	_key_scan,_pen_pwr_on
	FNCALL	_key_scan,_pen_pwr_off
	FNCALL	_led_refresh,_led_all_off
	FNCALL	_led_refresh,_led1_on
	FNCALL	_led_refresh,_led2_on
	FNCALL	_led_refresh,_led3_on
	FNCALL	_led_refresh,_led4_on
	FNCALL	intlevel1,_myIsr
	global	intlevel1
	FNROOT	intlevel1
	global	_adc_val
	global	_bat_vol
	global	_bat_vol_tmp
	global	_charge_fully_cnt
	global	_pwr_off_cnt
	global	_adc_val_cnt
	global	_charge_anim_phase
	global	_click_cnt
	global	_click_delay_cnt
	global	_cur_key_id
	global	_filter_cnt
	global	_filter_key_id
	global	_into_low_power_cnt
	global	_last_key_id
	global	_led_sta_refresh_cnt
	global	_press_cnt
	global	led_refresh@sta
	global	myIsr@cnt_dest_100ms
	global	myIsr@cnt_dest_10ms
	global	myIsr@is_not_charge_cnt
	global	_flag_is_charge_begin
	global	_adc_enable
	global	_adc_sta
	global	_flag_is_dev_working
	global	_flag_is_in_charging
	global	_flag_is_led_show_enable
	global	_flag_led_1_on
	global	_flag_led_2_on
	global	_flag_led_3_on
	global	_flag_led_4_on
	global	_last_vibration_sensor_lev
	global	_adc_val_sum
	global	_ADB
psect	text669,local,class=CODE,delta=2
global __ptext669
__ptext669:
_ADB	set	28
	global	_ADM
_ADM	set	27
	global	_ADR
_ADR	set	29
	global	_FSR
_FSR	set	4
	global	_INDF
_INDF	set	0
	global	_INTCON
_INTCON	set	11
	global	_PCDCON
_PCDCON	set	19
	global	_PCHCON
_PCHCON	set	18
	global	_PIR1
_PIR1	set	12
	global	_PIR2
_PIR2	set	13
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_STATUS
_STATUS	set	3
	global	_VREFH
_VREFH	set	31
	global	_ADCIF
_ADCIF	set	102
	global	_ADENB
_ADENB	set	223
	global	_ADS
_ADS	set	222
	global	_EOC
_EOC	set	221
	global	_GCHS
_GCHS	set	220
	global	_GIE
_GIE	set	95
	global	_PA0
_PA0	set	40
	global	_PA1
_PA1	set	41
	global	_PA2
_PA2	set	42
	global	_PA5
_PA5	set	45
	global	_PA6
_PA6	set	46
	global	_PAIE
_PAIE	set	91
	global	_PAIF
_PAIF	set	88
	global	_PEIE
_PEIE	set	94
	global	_T1IF
_T1IF	set	96
	global	_T3IF
_T3IF	set	105
	global	_OPTIONR
_OPTIONR	set	129
	global	_OSCM
_OSCM	set	148
	global	_PADCON
_PADCON	set	147
	global	_PAHCON
_PAHCON	set	146
	global	_PAODCON
_PAODCON	set	149
	global	_PIE1
_PIE1	set	140
	global	_PIE2
_PIE2	set	141
	global	_T1CON
_T1CON	set	155
	global	_T1TH
_T1TH	set	156
	global	_T1TL
_T1TL	set	157
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_WUACON
_WUACON	set	143
	global	_ADCIE
_ADCIE	set	1126
	global	_CLKMD
_CLKMD	set	1184
	global	_SLCON
_SLCON	set	1187
	global	_STPHX
_STPHX	set	1185
	global	_T1IE
_T1IE	set	1120
	global	_T1REN
_T1REN	set	1240
	global	_T3IE
_T3IE	set	1129
	global	_WDTE
_WDTE	set	1143
	global	_T3C0
_T3C0	set	272
	global	_T3C1
_T3C1	set	273
	global	_T3C2
_T3C2	set	281
	global	_T3TH
_T3TH	set	275
	global	_T3TL
_T3TL	set	274
	global	_T3REN
_T3REN	set	2183
	file	"HS16P2811_PROJECT.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_adc_enable:
       ds      1

_adc_sta:
       ds      1

_flag_is_dev_working:
       ds      1

_flag_is_in_charging:
       ds      1

_flag_is_led_show_enable:
       ds      1

_flag_led_1_on:
       ds      1

_flag_led_2_on:
       ds      1

_flag_led_3_on:
       ds      1

_flag_led_4_on:
       ds      1

_last_vibration_sensor_lev:
       ds      1

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_flag_is_charge_begin:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adc_val:
       ds      2

_bat_vol:
       ds      2

_bat_vol_tmp:
       ds      2

_charge_fully_cnt:
       ds      2

_pwr_off_cnt:
       ds      2

_adc_val_cnt:
       ds      1

_charge_anim_phase:
       ds      1

_click_cnt:
       ds      1

_click_delay_cnt:
       ds      1

_cur_key_id:
       ds      1

_filter_cnt:
       ds      1

_filter_key_id:
       ds      1

_into_low_power_cnt:
       ds      1

_last_key_id:
       ds      1

_led_sta_refresh_cnt:
       ds      1

_press_cnt:
       ds      1

led_refresh@sta:
       ds      1

myIsr@cnt_dest_100ms:
       ds      1

myIsr@cnt_dest_10ms:
       ds      1

myIsr@is_not_charge_cnt:
       ds      1

_adc_val_sum:
       ds      4

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Dh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_CLR_RAM_EveryBank
?_CLR_RAM_EveryBank:	; 0 bytes @ 0x0
	global	?_adc_init
?_adc_init:	; 0 bytes @ 0x0
	global	?_timer1_init
?_timer1_init:	; 0 bytes @ 0x0
	global	?_timer3_init
?_timer3_init:	; 0 bytes @ 0x0
	global	?_led_refresh
?_led_refresh:	; 0 bytes @ 0x0
	global	??_led_refresh
??_led_refresh:	; 0 bytes @ 0x0
	global	?_pen_pwr_off
?_pen_pwr_off:	; 0 bytes @ 0x0
	global	??_pen_pwr_off
??_pen_pwr_off:	; 0 bytes @ 0x0
	global	?_key_scan
?_key_scan:	; 0 bytes @ 0x0
	global	??_key_scan
??_key_scan:	; 0 bytes @ 0x0
	global	?_led_all_off
?_led_all_off:	; 0 bytes @ 0x0
	global	??_led_all_off
??_led_all_off:	; 0 bytes @ 0x0
	global	?_led_status_handle
?_led_status_handle:	; 0 bytes @ 0x0
	global	??_led_status_handle
??_led_status_handle:	; 0 bytes @ 0x0
	global	?_pen_pwr_on
?_pen_pwr_on:	; 0 bytes @ 0x0
	global	??_pen_pwr_on
??_pen_pwr_on:	; 0 bytes @ 0x0
	global	?_System_Init
?_System_Init:	; 0 bytes @ 0x0
	global	?_user_init
?_user_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_myIsr
?_myIsr:	; 0 bytes @ 0x0
	global	?_led1_on
?_led1_on:	; 0 bytes @ 0x0
	global	??_led1_on
??_led1_on:	; 0 bytes @ 0x0
	global	?_led2_on
?_led2_on:	; 0 bytes @ 0x0
	global	??_led2_on
??_led2_on:	; 0 bytes @ 0x0
	global	?_led3_on
?_led3_on:	; 0 bytes @ 0x0
	global	??_led3_on
??_led3_on:	; 0 bytes @ 0x0
	global	?_led4_on
?_led4_on:	; 0 bytes @ 0x0
	global	??_led4_on
??_led4_on:	; 0 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	4
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_myIsr
??_myIsr:	; 0 bytes @ 0x0
	ds	7
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x7
	global	??_CLR_RAM_EveryBank
??_CLR_RAM_EveryBank:	; 0 bytes @ 0x7
	global	??_adc_init
??_adc_init:	; 0 bytes @ 0x7
	global	??_timer1_init
??_timer1_init:	; 0 bytes @ 0x7
	global	??_timer3_init
??_timer3_init:	; 0 bytes @ 0x7
	global	??_System_Init
??_System_Init:	; 0 bytes @ 0x7
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x7
	global	delay_ms@xms
delay_ms@xms:	; 4 bytes @ 0x7
	ds	4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0xB
	ds	4
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0xF
	ds	2
	global	??_user_init
??_user_init:	; 0 bytes @ 0x11
	global	??_main
??_main:	; 0 bytes @ 0x11
;;Data sizes: Strings 0, constant 0, data 0, bss 29, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80     17      47
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?___lmul	unsigned long  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _myIsr in COMMON
;;
;;   _myIsr->___lmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_delay_ms
;;   _user_init->_delay_ms
;;
;; Critical Paths under _myIsr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _myIsr in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      92
;;                        _System_Init
;;                          _user_init
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _user_init                                            0     0      0      46
;;                           _adc_init
;;                        _timer1_init
;;                        _timer3_init
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _System_Init                                          0     0      0       0
;;                          _GPIO_Init
;;                  _CLR_RAM_EveryBank
;; ---------------------------------------------------------------------------------
;; (2) _timer3_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _timer1_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _adc_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay_ms                                            10     6      4      46
;;                                              7 BANK0     10     6      4
;; ---------------------------------------------------------------------------------
;; (2) _CLR_RAM_EveryBank                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _myIsr                                                7     7      0     136
;;                                              0 BANK0      7     7      0
;;                        _led_refresh
;;                        _pen_pwr_off
;;                           _key_scan
;;                        _led_all_off
;;                  _led_status_handle
;;                             ___lmul
;; ---------------------------------------------------------------------------------
;; (4) _key_scan                                             0     0      0       0
;;                        _led_all_off
;;                         _pen_pwr_on
;;                        _pen_pwr_off
;; ---------------------------------------------------------------------------------
;; (4) _led_refresh                                          0     0      0       0
;;                        _led_all_off
;;                            _led1_on
;;                            _led2_on
;;                            _led3_on
;;                            _led4_on
;; ---------------------------------------------------------------------------------
;; (4) ___lmul                                              12     4      8     136
;;                                              0 COMMON    12     4      8
;; ---------------------------------------------------------------------------------
;; (5) _pen_pwr_on                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _led4_on                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _led3_on                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _led2_on                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _led1_on                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _led_status_handle                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _led_all_off                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _pen_pwr_off                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_Init
;;     _GPIO_Init
;;     _CLR_RAM_EveryBank
;;   _user_init
;;     _adc_init
;;     _timer1_init
;;     _timer3_init
;;     _delay_ms
;;   _delay_ms
;;
;; _myIsr (ROOT)
;;   _led_refresh
;;     _led_all_off
;;     _led1_on
;;     _led2_on
;;     _led3_on
;;     _led4_on
;;   _pen_pwr_off
;;   _key_scan
;;     _led_all_off
;;     _pen_pwr_on
;;     _pen_pwr_off
;;   _led_all_off
;;   _led_status_handle
;;   ___lmul
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       2       0       14.3%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       8       2        0.0%
;;ABS                  0      0      3D       3        0.0%
;;BITBANK0            50      0       1       4        1.3%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     11      2F       5       58.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            20      0       0       6        0.0%
;;BANK1               20      0       0       7        0.0%
;;DATA                 0      0      45       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 252 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_System_Init
;;		_user_init
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	252
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	253
	
l7658:	
;main.c: 253: System_Init();
	fcall	_System_Init
	line	254
;main.c: 254: user_init();
	fcall	_user_init
	line	256
	
l7660:	
;main.c: 256: into_low_power_cnt = (u8)((u16)2000 / 10);
	movlw	(0C8h)
	movwf	(_into_low_power_cnt)	;volatile
	line	266
	
l7662:	
;main.c: 265: if ((flag_is_dev_working && pwr_off_cnt >= (((u16)((u32)50 * 60 * 1000 / 100)))) ||
;main.c: 266: into_low_power_cnt >= (u8)((u16)2000 / 10)) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l7666
u1620:
	
l7664:	
	movlw	high(07530h)
	subwf	(_pwr_off_cnt+1),w	;volatile
	movlw	low(07530h)
	skipnz
	subwf	(_pwr_off_cnt),w	;volatile
	skipnc
	goto	u1631
	goto	u1630
u1631:
	goto	l938
u1630:
	
l7666:	
	movlw	(0C8h)
	subwf	(_into_low_power_cnt),w	;volatile
	skipc
	goto	u1641
	goto	u1640
u1641:
	goto	l7662
u1640:
	line	267
;main.c: 267: label_low_power_in:
	
l938:	
	line	269
;main.c: 269: GIE = 0;
	bcf	(95/8),(95)&7
	line	272
;main.c: 272: T1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	273
;main.c: 273: T3IE = 0;
	bcf	(1129/8)^080h,(1129)&7
	line	274
;main.c: 274: T1REN = 0;
	bcf	(1240/8)^080h,(1240)&7
	line	275
;main.c: 275: T3REN = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2183/8)^0100h,(2183)&7
	line	277
;main.c: 277: ADCIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1126/8)^080h,(1126)&7
	line	278
	
l7668:	
;main.c: 278: ADM &= ~(0x0F << 0);
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(27),f	;volatile
	line	279
	
l7670:	
;main.c: 279: GCHS = 0;
	bcf	(220/8),(220)&7
	line	280
	
l7672:	
;main.c: 280: ADENB = 0;
	bcf	(223/8),(223)&7
	line	283
	
l7674:	
;main.c: 283: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	284
	
l7676:	
;main.c: 284: PAHCON = 0xFF;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	285
	
l7678:	
;main.c: 285: PADCON = 0xFF;
	movlw	(0FFh)
	movwf	(147)^080h	;volatile
	line	289
	
l7680:	
;main.c: 289: PAHCON &= ~(0x01 << 0 | 0x01 << 1 | 0x01 << 2);
	movlw	(0F8h)
	andwf	(146)^080h,f	;volatile
	line	290
	
l7682:	
;main.c: 290: PAIF = 0;
	bcf	(88/8),(88)&7
	line	291
	
l7684:	
;main.c: 291: PAIE = 1;
	bsf	(91/8),(91)&7
	line	294
	
l7686:	
;main.c: 293: WUACON |= (0x01 << 0 |
;main.c: 294: 0x01 << 5);
	movlw	(021h)
	iorwf	(143)^080h,f	;volatile
	line	295
	
l7688:	
;main.c: 295: PEIE = 1;
	bsf	(94/8),(94)&7
	line	297
	
l7690:	
;main.c: 297: CLKMD = 1;
	bsf	(1184/8)^080h,(1184)&7
	line	298
	
l7692:	
;main.c: 298: STPHX = 1;
	bsf	(1185/8)^080h,(1185)&7
	line	299
	
l7694:	
;main.c: 299: SLCON = 1;
	bsf	(1187/8)^080h,(1187)&7
	line	301
	
l7696:	
# 301 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	302
	
l7698:	
# 302 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	303
	
l7700:	
# 303 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
sleep ;#
psect	maintext
	line	304
	
l7702:	
# 304 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	305
	
l7704:	
# 305 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	307
	
l7706:	
;main.c: 307: PAIF = 0;
	bcf	(88/8),(88)&7
	line	308
	
l7708:	
;main.c: 308: PAIE = 0;
	bcf	(91/8),(91)&7
	line	309
	
l7710:	
;main.c: 309: WUACON = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(143)^080h	;volatile
	line	317
	
l7712:	
;main.c: 317: OSCM = 0x01 << 6;
	movlw	(040h)
	movwf	(148)^080h	;volatile
	line	319
	
l7714:	
;main.c: 319: System_Init();
	fcall	_System_Init
	line	320
	
l7716:	
;main.c: 320: user_init();
	fcall	_user_init
	line	322
	
l7718:	
;main.c: 322: delay_ms(10);
	movlw	0Ah
	movwf	(?_delay_ms)
	clrf	(?_delay_ms+1)
	clrf	(?_delay_ms+2)
	clrf	(?_delay_ms+3)

	fcall	_delay_ms
	line	323
	
l7720:	
;main.c: 323: flag_is_led_show_enable = 1;
	bsf	(_flag_is_led_show_enable/8),(_flag_is_led_show_enable)&7
	line	325
	
l7722:	
;main.c: 325: if (PA5 == 0 && bat_vol <= (2900)) {
	btfsc	(45/8),(45)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l7662
u1650:
	
l7724:	
	movlw	high(0B55h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0B55h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u1661
	goto	u1660
u1661:
	goto	l7662
u1660:
	goto	l938
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	331
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_user_init
psect	text670,local,class=CODE,delta=2
global __ptext670
__ptext670:

;; *************** function _user_init *****************
;; Defined at:
;;		line 229 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_adc_init
;;		_timer1_init
;;		_timer3_init
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text670
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	229
	global	__size_of_user_init
	__size_of_user_init	equ	__end_of_user_init-_user_init
	
_user_init:	
	opt	stack 3
; Regs used in _user_init: [wreg+status,2+status,0+pclath+cstack]
	line	231
	
l7650:	
;main.c: 231: PAHCON &= ~(0x01 << 0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(146)^080h+(0/8),(0)&7	;volatile
	line	232
;main.c: 232: TRISA |= (0x01 << 0);
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	234
;main.c: 234: TRISA |= (0x01 << 6);
	bsf	(133)^080h+(6/8),(6)&7	;volatile
	line	236
;main.c: 236: TRISA |= (0x01 << 7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	238
;main.c: 238: TRISA |= (0x01 << 5);
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	240
	
l7652:	
;main.c: 240: adc_init();
	fcall	_adc_init
	line	241
;main.c: 241: timer1_init();
	fcall	_timer1_init
	line	242
;main.c: 242: timer3_init();
	fcall	_timer3_init
	line	243
	
l7654:	
;main.c: 243: GIE = 1;
	bsf	(95/8),(95)&7
	line	244
;main.c: 244: delay_ms(10);
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_delay_ms)
	clrf	(?_delay_ms+1)
	clrf	(?_delay_ms+2)
	clrf	(?_delay_ms+3)

	fcall	_delay_ms
	line	248
	
l7656:	
;main.c: 248: adc_enable = 1;
	bsf	(_adc_enable/8),(_adc_enable)&7
	line	249
	
l929:	
	return
	opt stack 0
GLOBAL	__end_of_user_init
	__end_of_user_init:
;; =============== function _user_init ends ============

	signat	_user_init,88
	global	_System_Init
psect	text671,local,class=CODE,delta=2
global __ptext671
__ptext671:

;; *************** function _System_Init *****************
;; Defined at:
;;		line 61 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_GPIO_Init
;;		_CLR_RAM_EveryBank
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text671
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	61
	global	__size_of_System_Init
	__size_of_System_Init	equ	__end_of_System_Init-_System_Init
	
_System_Init:	
	opt	stack 3
; Regs used in _System_Init: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l7642:	
;main.c: 62: OPTIONR = 0b000000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	65
;main.c: 65: INTCON = 0b00000000;
	clrf	(11)	;volatile
	line	73
	
l7644:	
;main.c: 73: WDTE = 0;
	bcf	(1143/8)^080h,(1143)&7
	line	75
;main.c: 75: PIE1 = 0B00000000;
	clrf	(140)^080h	;volatile
	line	79
;main.c: 79: PIR1 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	83
;main.c: 83: PIE2 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(141)^080h	;volatile
	line	88
;main.c: 88: PIR2 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(13)	;volatile
	line	93
	
l7646:	
;main.c: 93: GPIO_Init();
	fcall	_GPIO_Init
	line	94
	
l7648:	
;main.c: 94: CLR_RAM_EveryBank();
	fcall	_CLR_RAM_EveryBank
	line	95
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_System_Init
	__end_of_System_Init:
;; =============== function _System_Init ends ============

	signat	_System_Init,88
	global	_timer3_init
psect	text672,local,class=CODE,delta=2
global __ptext672
__ptext672:

;; *************** function _timer3_init *****************
;; Defined at:
;;		line 4 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_user_init
;; This function uses a non-reentrant model
;;
psect	text672
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer3.c"
	line	4
	global	__size_of_timer3_init
	__size_of_timer3_init	equ	__end_of_timer3_init-_timer3_init
	
_timer3_init:	
	opt	stack 3
; Regs used in _timer3_init: [wreg+status,2]
	line	5
	
l7256:	
;timer3.c: 5: T3C0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	6
;timer3.c: 6: T3C2 = 0;
	clrf	(281)^0100h	;volatile
	line	7
	
l7258:	
;timer3.c: 7: T3TL = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) % 256;
	movlw	(017h)
	movwf	(274)^0100h	;volatile
	line	8
	
l7260:	
;timer3.c: 8: T3TH = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) / 256;
	movlw	(0FCh)
	movwf	(275)^0100h	;volatile
	line	9
	
l7262:	
;timer3.c: 9: T3C1 = TIMER3_DIV_4_REG_VAL;
	movlw	(05h)
	movwf	(273)^0100h	;volatile
	line	11
	
l7264:	
;timer3.c: 11: T3REN = 1;
	bsf	(2183/8)^0100h,(2183)&7
	line	12
	
l7266:	
;timer3.c: 12: T3IF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(105/8),(105)&7
	line	13
	
l7268:	
;timer3.c: 13: T3IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1129/8)^080h,(1129)&7
	line	14
	
l7270:	
;timer3.c: 14: PEIE = 1;
	bsf	(94/8),(94)&7
	line	16
	
l3618:	
	return
	opt stack 0
GLOBAL	__end_of_timer3_init
	__end_of_timer3_init:
;; =============== function _timer3_init ends ============

	signat	_timer3_init,88
	global	_timer1_init
psect	text673,local,class=CODE,delta=2
global __ptext673
__ptext673:

;; *************** function _timer1_init *****************
;; Defined at:
;;		line 4 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_user_init
;; This function uses a non-reentrant model
;;
psect	text673
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer1.c"
	line	4
	global	__size_of_timer1_init
	__size_of_timer1_init	equ	__end_of_timer1_init-_timer1_init
	
_timer1_init:	
	opt	stack 3
; Regs used in _timer1_init: [wreg]
	line	6
	
l7246:	
;timer1.c: 6: T1TL = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) % 256;
	movlw	(037h)
	movwf	(157)^080h	;volatile
	line	7
;timer1.c: 7: T1TH = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) / 256;
	movlw	(0FFh)
	movwf	(156)^080h	;volatile
	line	9
;timer1.c: 9: T1CON = TIMER1_DIV_4_REG_VAL << 4;
	movlw	(020h)
	movwf	(155)^080h	;volatile
	line	10
	
l7248:	
;timer1.c: 10: T1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	11
	
l7250:	
;timer1.c: 11: T1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	12
	
l7252:	
;timer1.c: 12: PEIE = 1;
	bsf	(94/8),(94)&7
	line	13
	
l7254:	
;timer1.c: 13: T1REN = 1;
	bsf	(1240/8)^080h,(1240)&7
	line	15
	
l2769:	
	return
	opt stack 0
GLOBAL	__end_of_timer1_init
	__end_of_timer1_init:
;; =============== function _timer1_init ends ============

	signat	_timer1_init,88
	global	_adc_init
psect	text674,local,class=CODE,delta=2
global __ptext674
__ptext674:

;; *************** function _adc_init *****************
;; Defined at:
;;		line 5 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_user_init
;; This function uses a non-reentrant model
;;
psect	text674
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\adc.c"
	line	5
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 3
; Regs used in _adc_init: [wreg+status,2+status,0]
	line	6
	
l7232:	
;adc.c: 6: ADM = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(27)	;volatile
	line	7
;adc.c: 7: ADR = 0;
	clrf	(29)	;volatile
	line	8
	
l7234:	
;adc.c: 8: ADM |= 0x0C << 0;
	movlw	(0Ch)
	iorwf	(27),f	;volatile
	line	9
	
l7236:	
;adc.c: 9: GCHS = 1;
	bsf	(220/8),(220)&7
	line	10
	
l7238:	
;adc.c: 10: VREFH = 0;
	clrf	(31)	;volatile
	line	11
	
l7240:	
;adc.c: 11: ADENB = 1;
	bsf	(223/8),(223)&7
	line	12
	
l7242:	
;adc.c: 12: ADCIF = 0;
	bcf	(102/8),(102)&7
	line	13
	
l7244:	
;adc.c: 13: ADCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1126/8)^080h,(1126)&7
	line	28
	
l6225:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
	global	_delay_ms
psect	text675,local,class=CODE,delta=2
global __ptext675
__ptext675:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 215 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;  xms             4    7[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  i               2   15[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       2       0
;;      Temps:          0       4       0
;;      Totals:         0      10       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_user_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text675
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	215
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 4
; Regs used in _delay_ms: [wreg]
	line	216
	
l7224:	
;main.c: 216: while (xms) {
	goto	l920
	line	220
	
l7226:	
;main.c: 220: u16 i = 510;
	movlw	low(01FEh)
	movwf	(delay_ms@i)
	movlw	high(01FEh)
	movwf	((delay_ms@i))+1
	line	221
;main.c: 221: while (i--) {
	goto	l7228
	
l923:	
	line	222
# 222 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	text675
	line	221
	
l7228:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(delay_ms@i),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@i+1),f
	subwf	(delay_ms@i+1),f
	incf	((delay_ms@i)),w
	skipnz
	incf	((delay_ms@i+1)),w

	skipz
	goto	u841
	goto	u840
u841:
	goto	l923
u840:
	line	224
	
l7230:	
;main.c: 223: }
;main.c: 224: xms--;
	movlw	01h
	movwf	((??_delay_ms+0)+0)
	movlw	0
	movwf	((??_delay_ms+0)+0+1)
	movlw	0
	movwf	((??_delay_ms+0)+0+2)
	movlw	0
	movwf	((??_delay_ms+0)+0+3)
	movf	0+(??_delay_ms+0)+0,w
	subwf	(delay_ms@xms),f
	movf	1+(??_delay_ms+0)+0,w
	skipc
	incfsz	1+(??_delay_ms+0)+0,w
	goto	u855
	goto	u856
u855:
	subwf	(delay_ms@xms+1),f
u856:
	movf	2+(??_delay_ms+0)+0,w
	skipc
	incfsz	2+(??_delay_ms+0)+0,w
	goto	u857
	goto	u858
u857:
	subwf	(delay_ms@xms+2),f
u858:
	movf	3+(??_delay_ms+0)+0,w
	skipc
	incfsz	3+(??_delay_ms+0)+0,w
	goto	u859
	goto	u850
u859:
	subwf	(delay_ms@xms+3),f
u850:

	line	225
	
l920:	
	line	216
	movf	(delay_ms@xms+3),w
	iorwf	(delay_ms@xms+2),w
	iorwf	(delay_ms@xms+1),w
	iorwf	(delay_ms@xms),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l7226
u860:
	line	226
	
l926:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_CLR_RAM_EveryBank
psect	text676,local,class=CODE,delta=2
global __ptext676
__ptext676:

;; *************** function _CLR_RAM_EveryBank *****************
;; Defined at:
;;		line 112 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_System_Init
;; This function uses a non-reentrant model
;;
psect	text676
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	112
	global	__size_of_CLR_RAM_EveryBank
	__size_of_CLR_RAM_EveryBank	equ	__end_of_CLR_RAM_EveryBank-_CLR_RAM_EveryBank
	
_CLR_RAM_EveryBank:	
	opt	stack 3
; Regs used in _CLR_RAM_EveryBank: [wreg+status,2+status,0]
	line	113
	
l7188:	
;main.c: 113: STATUS &= 0x1F;
	movlw	(01Fh)
	andwf	(3),f	;volatile
	line	115
	
l7190:	
# 115 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVLW 0x5F; ;#
psect	text676
	line	116
	
l7192:	
# 116 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVWF 0x20; ;#
psect	text676
	line	117
	
l7194:	
# 117 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVLW 0x7F; ;#
psect	text676
	line	118
	
l7196:	
# 118 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVWF _FSR, F; ;#
psect	text676
	line	119
	
l7198:	
# 119 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
CLR_RAM_LOOP: ;#
psect	text676
	line	120
	
l7200:	
# 120 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CALL CLR_RAM_Demo; ;#
psect	text676
	line	122
	
l7202:	
# 122 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    DECF _FSR, F; ;#
psect	text676
	line	123
	
l7204:	
# 123 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    DECFSZ 0X20, F; ;#
psect	text676
	line	124
	
l7206:	
# 124 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    GOTO CLR_RAM_LOOP; ;#
psect	text676
	line	126
	
l7208:	
# 126 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CALL CLR_RAM_Demo; ;#
psect	text676
	line	127
	
l7210:	
# 127 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    RETURN; ;#
psect	text676
	line	129
	
l7212:	
# 129 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
CLR_RAM_Demo: ;#
psect	text676
	line	132
	
l7214:	
# 132 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
            BSF _FSR, 7; ;#
psect	text676
	line	133
	
l7216:	
# 133 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CLRF _INDF; ;#
psect	text676
	line	137
	
l7218:	
# 137 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
            BCF _FSR, 7; ;#
psect	text676
	line	138
	
l7220:	
# 138 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CLRF _INDF; ;#
psect	text676
	line	140
	
l7222:	
# 140 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    RETURN; ;#
psect	text676
	line	142
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_CLR_RAM_EveryBank
	__end_of_CLR_RAM_EveryBank:
;; =============== function _CLR_RAM_EveryBank ends ============

	signat	_CLR_RAM_EveryBank,88
	global	_GPIO_Init
psect	text677,local,class=CODE,delta=2
global __ptext677
__ptext677:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 150 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_System_Init
;; This function uses a non-reentrant model
;;
psect	text677
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	150
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 3
; Regs used in _GPIO_Init: [wreg+status,2]
	line	152
	
l7178:	
;main.c: 152: PORTA = 0b00000000;
	clrf	(5)	;volatile
	line	153
;main.c: 153: TRISA = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	154
;main.c: 154: PAODCON = 0b00000000;
	clrf	(149)^080h	;volatile
	line	155
	
l7180:	
;main.c: 155: PAHCON = 0b11111111;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	156
	
l7182:	
;main.c: 156: PADCON = 0b11111111;
	movlw	(0FFh)
	movwf	(147)^080h	;volatile
	line	157
;main.c: 157: WUACON = 0b00000000;
	clrf	(143)^080h	;volatile
	line	160
;main.c: 160: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	161
;main.c: 161: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	162
	
l7184:	
;main.c: 162: PCDCON = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	163
	
l7186:	
;main.c: 163: PCHCON = 0b11111111;
	movlw	(0FFh)
	movwf	(18)	;volatile
	line	164
	
l917:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_myIsr
psect	text678,local,class=CODE,delta=2
global __ptext678
__ptext678:

;; *************** function _myIsr *****************
;; Defined at:
;;		line 339 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       7       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_led_refresh
;;		_pen_pwr_off
;;		_key_scan
;;		_led_all_off
;;		_led_status_handle
;;		___lmul
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text678
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	339
	global	__size_of_myIsr
	__size_of_myIsr	equ	__end_of_myIsr-_myIsr
	
_myIsr:	
	opt	stack 3
; Regs used in _myIsr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_myIsr+4)
	movf	fsr0,w
	movwf	(??_myIsr+5)
	movf	pclath,w
	movwf	(??_myIsr+6)
	ljmp	_myIsr
psect	text678
	line	340
	
i1l7760:	
;main.c: 340: if (T1IF) {
	btfss	(96/8),(96)&7
	goto	u167_21
	goto	u167_20
u167_21:
	goto	i1l945
u167_20:
	line	342
	
i1l7762:	
;main.c: 342: T1IF = 0;
	bcf	(96/8),(96)&7
	line	343
	
i1l7764:	
;main.c: 343: T1TL = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) % 256;
	movlw	(037h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	344
;main.c: 344: T1TH = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) / 256;
	movlw	(0FFh)
	movwf	(156)^080h	;volatile
	line	345
	
i1l7766:	
;main.c: 345: led_refresh();
	fcall	_led_refresh
	line	347
	
i1l7768:	
;main.c: 347: if (adc_enable) {
	btfss	(_adc_enable/8),(_adc_enable)&7
	goto	u168_21
	goto	u168_20
u168_21:
	goto	i1l945
u168_20:
	line	348
	
i1l7770:	
;main.c: 348: if (0 == adc_sta) {
	btfsc	(_adc_sta/8),(_adc_sta)&7
	goto	u169_21
	goto	u169_20
u169_21:
	goto	i1l945
u169_20:
	line	349
	
i1l7772:	
;main.c: 349: adc_sta = 1;
	bsf	(_adc_sta/8),(_adc_sta)&7
	line	350
;main.c: 350: EOC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(221/8),(221)&7
	line	351
;main.c: 351: ADS = 1;
	bsf	(222/8),(222)&7
	line	369
	
i1l945:	
	line	371
;main.c: 352: }
;main.c: 353: }
;main.c: 369: }
;main.c: 371: if (T3IF) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7
	goto	u170_21
	goto	u170_20
u170_21:
	goto	i1l7852
u170_20:
	line	376
	
i1l7774:	
;main.c: 373: static volatile u8 cnt_dest_10ms = 0;
;main.c: 374: static volatile u8 cnt_dest_100ms = 0;
;main.c: 376: T3IF = 0;
	bcf	(105/8),(105)&7
	line	377
	
i1l7776:	
;main.c: 377: T3TL = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) % 256;
	movlw	(017h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(274)^0100h	;volatile
	line	378
;main.c: 378: T3TH = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) / 256;
	movlw	(0FCh)
	movwf	(275)^0100h	;volatile
	line	380
	
i1l7778:	
;main.c: 380: cnt_dest_10ms++;
	bcf	status, 6	;RP1=0, select bank0
	incf	(myIsr@cnt_dest_10ms),f	;volatile
	line	381
	
i1l7780:	
;main.c: 381: if (cnt_dest_10ms >= 10) {
	movlw	(0Ah)
	subwf	(myIsr@cnt_dest_10ms),w	;volatile
	skipc
	goto	u171_21
	goto	u171_20
u171_21:
	goto	i1l7838
u171_20:
	line	385
	
i1l7782:	
;main.c: 383: static volatile u8 is_not_charge_cnt = 0;
;main.c: 385: cnt_dest_10ms = 0;
	clrf	(myIsr@cnt_dest_10ms)	;volatile
	line	398
	
i1l7784:	
;main.c: 398: if (PA5) {
	btfss	(45/8),(45)&7
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l7810
u172_20:
	line	399
	
i1l7786:	
;main.c: 399: is_not_charge_cnt = 0;
	clrf	(myIsr@is_not_charge_cnt)	;volatile
	line	400
	
i1l7788:	
;main.c: 400: if (0 == flag_is_in_charging) {
	btfsc	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l7818
u173_20:
	line	401
	
i1l7790:	
;main.c: 401: pen_pwr_off();
	fcall	_pen_pwr_off
	line	407
	
i1l7792:	
;main.c: 407: flag_led_1_on = 0;
	bcf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	408
	
i1l7794:	
;main.c: 408: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	409
	
i1l7796:	
;main.c: 409: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	410
	
i1l7798:	
;main.c: 410: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	416
	
i1l7800:	
;main.c: 416: flag_is_dev_working = 0;
	bcf	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	line	418
	
i1l7802:	
;main.c: 418: flag_is_charge_begin = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	line	419
	
i1l7804:	
;main.c: 419: charge_anim_phase = 0;
	clrf	(_charge_anim_phase)	;volatile
	line	421
	
i1l7806:	
;main.c: 421: charge_fully_cnt = 0;
	clrf	(_charge_fully_cnt)	;volatile
	clrf	(_charge_fully_cnt+1)	;volatile
	line	422
	
i1l7808:	
;main.c: 422: flag_is_in_charging = 1;
	bsf	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	i1l7818
	line	425
	
i1l7810:	
;main.c: 425: is_not_charge_cnt++;
	incf	(myIsr@is_not_charge_cnt),f	;volatile
	line	426
	
i1l7812:	
;main.c: 426: if (is_not_charge_cnt >= (200 / 10)) {
	movlw	(014h)
	subwf	(myIsr@is_not_charge_cnt),w	;volatile
	skipc
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l7818
u174_20:
	line	427
	
i1l7814:	
;main.c: 427: is_not_charge_cnt = 0;
	clrf	(myIsr@is_not_charge_cnt)	;volatile
	line	428
	
i1l7816:	
;main.c: 428: flag_is_in_charging = 0;
	bcf	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	line	432
	
i1l7818:	
;main.c: 429: }
;main.c: 430: }
;main.c: 432: key_scan();
	fcall	_key_scan
	line	435
	
i1l7820:	
;main.c: 435: if (flag_is_dev_working && bat_vol < (2900)) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l7830
u175_20:
	
i1l7822:	
	movlw	high(0B54h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0B54h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l7830
u176_20:
	line	436
	
i1l7824:	
;main.c: 436: pen_pwr_off();
	fcall	_pen_pwr_off
	line	437
	
i1l7826:	
;main.c: 437: led_all_off();
	fcall	_led_all_off
	line	438
	
i1l7828:	
;main.c: 438: flag_is_dev_working = 0;
	bcf	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	line	442
	
i1l7830:	
;main.c: 439: }
;main.c: 442: if ((PA5 == 0) && (flag_is_dev_working == 0)) {
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l7836
u177_20:
	
i1l7832:	
	btfsc	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l7836
u178_20:
	line	444
	
i1l7834:	
;main.c: 444: into_low_power_cnt++;
	incf	(_into_low_power_cnt),f	;volatile
	line	446
;main.c: 446: } else {
	goto	i1l7838
	line	447
	
i1l7836:	
;main.c: 447: into_low_power_cnt = 0;
	clrf	(_into_low_power_cnt)	;volatile
	line	451
	
i1l7838:	
;main.c: 448: }
;main.c: 449: }
;main.c: 451: cnt_dest_100ms++;
	incf	(myIsr@cnt_dest_100ms),f	;volatile
	line	452
	
i1l7840:	
;main.c: 452: if (cnt_dest_100ms >= 100) {
	movlw	(064h)
	subwf	(myIsr@cnt_dest_100ms),w	;volatile
	skipc
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l7852
u179_20:
	line	453
	
i1l7842:	
;main.c: 453: cnt_dest_100ms = 0;
	clrf	(myIsr@cnt_dest_100ms)	;volatile
	line	456
	
i1l7844:	
;main.c: 456: led_status_handle();
	fcall	_led_status_handle
	line	458
	
i1l7846:	
;main.c: 458: if (flag_is_dev_working) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l7850
u180_20:
	line	466
	
i1l7848:	
;main.c: 466: pwr_off_cnt++;
	incf	(_pwr_off_cnt),f	;volatile
	skipnz
	incf	(_pwr_off_cnt+1),f	;volatile
	line	468
;main.c: 468: } else {
	goto	i1l7852
	line	470
	
i1l7850:	
;main.c: 470: pwr_off_cnt = 0;
	clrf	(_pwr_off_cnt)	;volatile
	clrf	(_pwr_off_cnt+1)	;volatile
	line	475
	
i1l7852:	
;main.c: 471: }
;main.c: 472: }
;main.c: 473: }
;main.c: 475: if (ADCIF) {
	btfss	(102/8),(102)&7
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l974
u181_20:
	line	476
	
i1l7854:	
;main.c: 476: ADCIF = 0;
	bcf	(102/8),(102)&7
	line	477
;main.c: 477: adc_sta = 0;
	bcf	(_adc_sta/8),(_adc_sta)&7
	line	479
	
i1l7856:	
;main.c: 479: adc_val = ADB;
	movf	(28),w	;volatile
	movwf	(_adc_val)	;volatile
	clrf	(_adc_val+1)	;volatile
	line	480
;main.c: 480: adc_val <<= 4;
	swapf	(_adc_val),f	;volatile
	swapf	(_adc_val+1),f	;volatile
	movlw	0f0h
	andwf	(_adc_val+1),f	;volatile
	movf	(_adc_val),w	;volatile
	andlw	0fh
	iorwf	(_adc_val+1),f	;volatile
	movlw	0f0h
	andwf	(_adc_val),f	;volatile
	line	481
	
i1l7858:	
;main.c: 481: adc_val += (ADR & 0x0f);
	movf	(29),w
	andlw	0Fh
	addwf	(_adc_val),f	;volatile
	skipnc
	incf	(_adc_val+1),f	;volatile
	line	483
	
i1l7860:	
;main.c: 483: if (0 == adc_val_cnt) {
	movf	(_adc_val_cnt),f
	skipz	;volatile
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l7864
u182_20:
	line	484
	
i1l7862:	
;main.c: 484: adc_val_sum = 0;
	clrf	(_adc_val_sum)	;volatile
	clrf	(_adc_val_sum+1)	;volatile
	clrf	(_adc_val_sum+2)	;volatile
	clrf	(_adc_val_sum+3)	;volatile
	line	487
	
i1l7864:	
;main.c: 485: }
;main.c: 487: adc_val_sum += adc_val;
	movf	(_adc_val),w	;volatile
	movwf	((??_myIsr+0)+0)
	movf	(_adc_val+1),w	;volatile
	movwf	((??_myIsr+0)+0+1)
	clrf	((??_myIsr+0)+0+2)
	clrf	((??_myIsr+0)+0+3)
	movf	0+(??_myIsr+0)+0,w
	addwf	(_adc_val_sum),f	;volatile
	movf	1+(??_myIsr+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u183_21
	addwf	(_adc_val_sum+1),f	;volatile
u183_21:
	movf	2+(??_myIsr+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u183_22
	addwf	(_adc_val_sum+2),f	;volatile
u183_22:
	movf	3+(??_myIsr+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u183_23
	addwf	(_adc_val_sum+3),f	;volatile
u183_23:

	line	488
	
i1l7866:	
;main.c: 488: adc_val_cnt++;
	incf	(_adc_val_cnt),f	;volatile
	line	489
	
i1l7868:	
;main.c: 489: if (adc_val_cnt >= (32)) {
	movlw	(020h)
	subwf	(_adc_val_cnt),w	;volatile
	skipc
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l974
u184_20:
	line	490
	
i1l7870:	
;main.c: 490: bat_vol_tmp = ((u16)((u32)(adc_val_sum / (32)) * (2000) * (4) / 4096));
	movf	(_adc_val_sum+3),w	;volatile
	movwf	(?___lmul+3)
	movf	(_adc_val_sum+2),w	;volatile
	movwf	(?___lmul+2)
	movf	(_adc_val_sum+1),w	;volatile
	movwf	(?___lmul+1)
	movf	(_adc_val_sum),w	;volatile
	movwf	(?___lmul)

	movlw	05h
u185_25:
	clrc
	rrf	(?___lmul+3),f
	rrf	(?___lmul+2),f
	rrf	(?___lmul+1),f
	rrf	(?___lmul),f
	addlw	-1
	skipz
	goto	u185_25

	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	01Fh
	movwf	1+(?___lmul)+04h
	movlw	040h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(0+?___lmul),w
	movwf	(??_myIsr+0)+0
	movf	(1+?___lmul),w
	movwf	((??_myIsr+0)+0+1)
	movf	(2+?___lmul),w
	movwf	((??_myIsr+0)+0+2)
	movf	(3+?___lmul),w
	movwf	((??_myIsr+0)+0+3)
	movlw	0Ch
u186_25:
	clrc
	rrf	(??_myIsr+0)+3,f
	rrf	(??_myIsr+0)+2,f
	rrf	(??_myIsr+0)+1,f
	rrf	(??_myIsr+0)+0,f
u186_20:
	addlw	-1
	skipz
	goto	u186_25
	movf	1+(??_myIsr+0)+0,w
	movwf	(_bat_vol_tmp+1)	;volatile
	movf	0+(??_myIsr+0)+0,w
	movwf	(_bat_vol_tmp)	;volatile
	line	491
	
i1l7872:	
;main.c: 491: adc_val_cnt = 0;
	clrf	(_adc_val_cnt)	;volatile
	line	493
	
i1l7874:	
;main.c: 493: if (0 == bat_vol) {
	movf	((_bat_vol+1)),w	;volatile
	iorwf	((_bat_vol)),w	;volatile
	skipz
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l7878
u187_20:
	line	495
	
i1l7876:	
;main.c: 495: bat_vol = bat_vol_tmp;
	movf	(_bat_vol_tmp+1),w	;volatile
	movwf	(_bat_vol+1)	;volatile
	movf	(_bat_vol_tmp),w	;volatile
	movwf	(_bat_vol)	;volatile
	line	498
	
i1l7878:	
;main.c: 496: }
;main.c: 498: if (flag_is_dev_working) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l7884
u188_20:
	line	500
	
i1l7880:	
;main.c: 500: if (bat_vol_tmp < bat_vol) {
	movf	(_bat_vol+1),w	;volatile
	subwf	(_bat_vol_tmp+1),w	;volatile
	skipz
	goto	u189_25
	movf	(_bat_vol),w	;volatile
	subwf	(_bat_vol_tmp),w	;volatile
u189_25:
	skipnc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l968
u189_20:
	line	501
	
i1l7882:	
;main.c: 501: bat_vol = bat_vol_tmp;
	movf	(_bat_vol_tmp+1),w	;volatile
	movwf	(_bat_vol+1)	;volatile
	movf	(_bat_vol_tmp),w	;volatile
	movwf	(_bat_vol)	;volatile
	goto	i1l974
	line	505
	
i1l7884:	
;main.c: 505: if (bat_vol_tmp > bat_vol) {
	movf	(_bat_vol_tmp+1),w	;volatile
	subwf	(_bat_vol+1),w	;volatile
	skipz
	goto	u190_25
	movf	(_bat_vol_tmp),w	;volatile
	subwf	(_bat_vol),w	;volatile
u190_25:
	skipnc
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l968
u190_20:
	goto	i1l7882
	line	509
	
i1l968:	
	line	515
	
i1l974:	
	movf	(??_myIsr+6),w
	movwf	pclath
	movf	(??_myIsr+5),w
	movwf	fsr0
	swapf	(??_myIsr+4)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_myIsr
	__end_of_myIsr:
;; =============== function _myIsr ends ============

	signat	_myIsr,88
	global	_key_scan
psect	text679,local,class=CODE,delta=2
global __ptext679
__ptext679:

;; *************** function _key_scan *****************
;; Defined at:
;;		line 26 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_led_all_off
;;		_pen_pwr_on
;;		_pen_pwr_off
;; This function is called by:
;;		_myIsr
;; This function uses a non-reentrant model
;;
psect	text679
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\key.c"
	line	26
	global	__size_of_key_scan
	__size_of_key_scan	equ	__end_of_key_scan-_key_scan
	
_key_scan:	
	opt	stack 3
; Regs used in _key_scan: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
i1l7920:	
;key.c: 27: if (flag_is_in_charging) {
	btfss	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l7926
u197_20:
	line	29
	
i1l7922:	
;key.c: 29: last_key_id = 0;
	clrf	(_last_key_id)	;volatile
	line	30
;key.c: 30: press_cnt = 0;
	clrf	(_press_cnt)	;volatile
	line	31
;key.c: 31: filter_cnt = 0;
	clrf	(_filter_cnt)	;volatile
	line	32
;key.c: 32: filter_key_id = 0;
	clrf	(_filter_key_id)	;volatile
	line	33
;key.c: 33: click_delay_cnt = 0;
	clrf	(_click_delay_cnt)	;volatile
	line	34
;key.c: 34: click_cnt = 0;
	clrf	(_click_cnt)	;volatile
	line	35
;key.c: 35: cur_key_id = 0;
	clrf	(_cur_key_id)	;volatile
	goto	i1l4506
	line	39
	
i1l7926:	
;key.c: 37: }
;key.c: 39: led_all_off();
	fcall	_led_all_off
	line	41
	
i1l7928:	
;key.c: 41: PAHCON &= ~(0x01 << 0);
	bcf	(146)^080h+(0/8),(0)&7	;volatile
	line	42
	
i1l7930:	
;key.c: 42: TRISA |= (0x01 << 0);
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	44
	
i1l7932:	
;key.c: 44: if (1 == PA0) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(40/8),(40)&7
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l4507
u198_20:
	line	45
	
i1l7934:	
;key.c: 45: cur_key_id = KEY_ID_NONE;
	clrf	(_cur_key_id)	;volatile
	line	46
;key.c: 46: } else {
	goto	i1l7938
	
i1l4507:	
	line	48
;key.c: 48: cur_key_id = KEY_ID_VALID;
	clrf	(_cur_key_id)	;volatile
	incf	(_cur_key_id),f	;volatile
	line	51
	
i1l7936:	
;key.c: 51: pwr_off_cnt = 0;
	clrf	(_pwr_off_cnt)	;volatile
	clrf	(_pwr_off_cnt+1)	;volatile
	line	52
;key.c: 52: into_low_power_cnt = 0;
	clrf	(_into_low_power_cnt)	;volatile
	line	55
	
i1l7938:	
;key.c: 53: }
;key.c: 55: if (cur_key_id != filter_key_id) {
	movf	(_cur_key_id),w	;volatile
	xorwf	(_filter_key_id),w	;volatile
	skipnz
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l7946
u199_20:
	line	57
	
i1l7940:	
;key.c: 57: filter_cnt = 0;
	clrf	(_filter_cnt)	;volatile
	line	58
	
i1l7942:	
;key.c: 58: filter_key_id = cur_key_id;
	movf	(_cur_key_id),w	;volatile
	movwf	(_filter_key_id)	;volatile
	goto	i1l4506
	line	62
	
i1l7946:	
;key.c: 60: }
;key.c: 62: if (filter_cnt < (3)) {
	movlw	(03h)
	subwf	(_filter_cnt),w	;volatile
	skipnc
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l7952
u200_20:
	line	65
	
i1l7948:	
;key.c: 65: filter_cnt++;
	incf	(_filter_cnt),f	;volatile
	goto	i1l4506
	line	70
	
i1l7952:	
;key.c: 67: }
;key.c: 70: if (last_key_id != cur_key_id) {
	movf	(_last_key_id),w	;volatile
	xorwf	(_cur_key_id),w	;volatile
	skipnz
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l7984
u201_20:
	line	73
	
i1l7954:	
;key.c: 73: if (cur_key_id == KEY_ID_NONE) {
	movf	(_cur_key_id),f
	skipz	;volatile
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l7958
u202_20:
	line	75
	
i1l7956:	
;key.c: 75: click_delay_cnt = 0;
	clrf	(_click_delay_cnt)	;volatile
	line	76
;key.c: 76: } else
	goto	i1l7962
	line	79
	
i1l7958:	
;key.c: 78: {
;key.c: 79: press_cnt = 0;
	clrf	(_press_cnt)	;volatile
	line	80
	
i1l7960:	
;key.c: 80: click_cnt++;
	incf	(_click_cnt),f	;volatile
	line	83
	
i1l7962:	
;key.c: 81: }
;key.c: 83: if (click_cnt == 2) {
	movf	(_click_cnt),w	;volatile
	xorlw	02h
	skipz
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l8000
u203_20:
	line	86
	
i1l7964:	
;key.c: 86: flag_is_dev_working = ~flag_is_dev_working;
	movlw	1<<((_flag_is_dev_working)&7)
	xorwf	((_flag_is_dev_working)/8),f
	line	88
	
i1l7966:	
;key.c: 88: if (flag_is_dev_working) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l7972
u204_20:
	line	89
	
i1l7968:	
;key.c: 89: pen_pwr_on();
	fcall	_pen_pwr_on
	line	91
	
i1l7970:	
;key.c: 91: led_sta_refresh_cnt = ((u8)(500 / 100));
	movlw	(05h)
	movwf	(_led_sta_refresh_cnt)	;volatile
	line	92
;key.c: 92: } else {
	goto	i1l7982
	line	94
	
i1l7972:	
;key.c: 94: pen_pwr_off();
	fcall	_pen_pwr_off
	line	98
	
i1l7974:	
;key.c: 98: flag_led_1_on = 0;
	bcf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	99
	
i1l7976:	
;key.c: 99: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	100
	
i1l7978:	
;key.c: 100: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	101
	
i1l7980:	
;key.c: 101: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	110
	
i1l7982:	
;key.c: 107: }
;key.c: 110: click_cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_click_cnt)	;volatile
	goto	i1l8000
	line	111
	
i1l4514:	
	line	112
;key.c: 111: }
;key.c: 112: } else {
	goto	i1l8000
	line	117
	
i1l7984:	
;key.c: 117: if (cur_key_id == KEY_ID_NONE) {
	movf	(_cur_key_id),f
	skipz	;volatile
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l7996
u205_20:
	line	118
	
i1l7986:	
;key.c: 118: if (click_cnt > 0) {
	movf	(_click_cnt),w	;volatile
	skipz
	goto	u206_20
	goto	i1l8000
u206_20:
	line	119
	
i1l7988:	
;key.c: 119: if (click_delay_cnt >= ((u8)((u16)300 / 10))) {
	movlw	(01Eh)
	subwf	(_click_delay_cnt),w	;volatile
	skipc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l7992
u207_20:
	goto	i1l7982
	line	123
	
i1l7992:	
;key.c: 123: if (click_delay_cnt < 255) {
	movf	(_click_delay_cnt),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l4514
u208_20:
	line	125
	
i1l7994:	
;key.c: 125: click_delay_cnt++;
	incf	(_click_delay_cnt),f	;volatile
	goto	i1l8000
	line	134
	
i1l7996:	
;key.c: 132: else {
;key.c: 134: if (press_cnt < 255) {
	movf	(_press_cnt),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l8000
u209_20:
	line	135
	
i1l7998:	
;key.c: 135: press_cnt++;
	incf	(_press_cnt),f	;volatile
	line	140
	
i1l8000:	
;key.c: 136: }
;key.c: 137: }
;key.c: 138: }
;key.c: 140: last_key_id = cur_key_id;
	movf	(_cur_key_id),w	;volatile
	movwf	(_last_key_id)	;volatile
	line	141
	
i1l4506:	
	return
	opt stack 0
GLOBAL	__end_of_key_scan
	__end_of_key_scan:
;; =============== function _key_scan ends ============

	signat	_key_scan,88
	global	_led_refresh
psect	text680,local,class=CODE,delta=2
global __ptext680
__ptext680:

;; *************** function _led_refresh *****************
;; Defined at:
;;		line 79 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 40/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_led_all_off
;;		_led1_on
;;		_led2_on
;;		_led3_on
;;		_led4_on
;; This function is called by:
;;		_myIsr
;; This function uses a non-reentrant model
;;
psect	text680
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	79
	global	__size_of_led_refresh
	__size_of_led_refresh	equ	__end_of_led_refresh-_led_refresh
	
_led_refresh:	
	opt	stack 3
; Regs used in _led_refresh: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	82
	
i1l7888:	
;led.c: 80: static volatile u8 sta = 0;
;led.c: 82: if (0 == flag_is_led_show_enable) {
	btfsc	(_flag_is_led_show_enable/8),(_flag_is_led_show_enable)&7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l7892
u191_20:
	goto	i1l1865
	line	86
	
i1l7892:	
;led.c: 84: }
;led.c: 86: led_all_off();
	fcall	_led_all_off
	line	88
;led.c: 88: switch (sta) {
	goto	i1l7904
	line	89
;led.c: 89: case 0:
	
i1l1867:	
	line	90
;led.c: 90: if (flag_led_1_on) {
	btfss	(_flag_led_1_on/8),(_flag_led_1_on)&7
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l7906
u192_20:
	line	91
	
i1l7894:	
;led.c: 91: led1_on();
	fcall	_led1_on
	goto	i1l7906
	line	95
;led.c: 95: case 1:
	
i1l1870:	
	line	96
;led.c: 96: if (flag_led_2_on) {
	btfss	(_flag_led_2_on/8),(_flag_led_2_on)&7
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l7906
u193_20:
	line	97
	
i1l7896:	
;led.c: 97: led2_on();
	fcall	_led2_on
	goto	i1l7906
	line	101
;led.c: 101: case 2:
	
i1l1872:	
	line	102
;led.c: 102: if (flag_led_3_on) {
	btfss	(_flag_led_3_on/8),(_flag_led_3_on)&7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l7906
u194_20:
	line	103
	
i1l7898:	
;led.c: 103: led3_on();
	fcall	_led3_on
	goto	i1l7906
	line	107
;led.c: 107: case 3:
	
i1l1874:	
	line	108
;led.c: 108: if (flag_led_4_on) {
	btfss	(_flag_led_4_on/8),(_flag_led_4_on)&7
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l7906
u195_20:
	line	109
	
i1l7900:	
;led.c: 109: led4_on();
	fcall	_led4_on
	goto	i1l7906
	line	88
	
i1l7904:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(led_refresh@sta),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           10     6 (fixed)
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable             8     6 (fixed)
; spacedrange           14     9 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	4
	subwf	fsr,w
skipnc
goto i1l7906
movlw high(i1S8160)
movwf pclath
	movlw low(i1S8160)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S8160:
	ljmp	i1l1867
	ljmp	i1l1870
	ljmp	i1l1872
	ljmp	i1l1874
psect	text680

	line	118
	
i1l7906:	
;led.c: 118: sta++;
	incf	(led_refresh@sta),f	;volatile
	line	119
	
i1l7908:	
;led.c: 119: if (sta >= 4) {
	movlw	(04h)
	subwf	(led_refresh@sta),w	;volatile
	skipc
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l1865
u196_20:
	line	120
	
i1l7910:	
;led.c: 120: sta = 0;
	clrf	(led_refresh@sta)	;volatile
	line	122
	
i1l1865:	
	return
	opt stack 0
GLOBAL	__end_of_led_refresh
	__end_of_led_refresh:
;; =============== function _led_refresh ends ============

	signat	_led_refresh,88
	global	___lmul
psect	text681,local,class=CODE,delta=2
global __ptext681
__ptext681:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "D:\project\²Î¿¼ÎÄµµºÍ×ÊÁÏ\ËÕÖÝ»ªÐ¾Î¢µç×Ó\HSIDE_v2.1.16_2026.07.07\PICC\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         8       0       0
;;      Locals:         4       0       0
;;      Temps:          0       0       0
;;      Totals:        12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myIsr
;; This function uses a non-reentrant model
;;
psect	text681
	file	"D:\project\²Î¿¼ÎÄµµºÍ×ÊÁÏ\ËÕÖÝ»ªÐ¾Î¢µç×Ó\HSIDE_v2.1.16_2026.07.07\PICC\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 4
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
i1l8118:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
i1l6309:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l8122
u239_20:
	line	8
	
i1l8120:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u240_21
	addwf	(___lmul@product+1),f
u240_21:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u240_22
	addwf	(___lmul@product+2),f
u240_22:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u240_23
	addwf	(___lmul@product+3),f
u240_23:

	line	9
	
i1l8122:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
i1l8124:	
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l6309
u241_20:
	line	12
	
i1l8126:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
i1l6312:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	_pen_pwr_on
psect	text682,local,class=CODE,delta=2
global __ptext682
__ptext682:

;; *************** function _pen_pwr_on *****************
;; Defined at:
;;		line 5 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\pen_pwr_ctl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;; This function uses a non-reentrant model
;;
psect	text682
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\pen_pwr_ctl.c"
	line	5
	global	__size_of_pen_pwr_on
	__size_of_pen_pwr_on	equ	__end_of_pen_pwr_on-_pen_pwr_on
	
_pen_pwr_on:	
	opt	stack 3
; Regs used in _pen_pwr_on: []
	line	6
	
i1l8116:	
;pen_pwr_ctl.c: 6: TRISA &= ~(0x01 << 6);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(6/8),(6)&7	;volatile
	line	7
;pen_pwr_ctl.c: 7: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(46/8),(46)&7
	line	8
	
i1l5373:	
	return
	opt stack 0
GLOBAL	__end_of_pen_pwr_on
	__end_of_pen_pwr_on:
;; =============== function _pen_pwr_on ends ============

	signat	_pen_pwr_on,88
	global	_led4_on
psect	text683,local,class=CODE,delta=2
global __ptext683
__ptext683:

;; *************** function _led4_on *****************
;; Defined at:
;;		line 62 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_refresh
;; This function uses a non-reentrant model
;;
psect	text683
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	62
	global	__size_of_led4_on
	__size_of_led4_on	equ	__end_of_led4_on-_led4_on
	
_led4_on:	
	opt	stack 3
; Regs used in _led4_on: []
	line	64
	
i1l8114:	
;led.c: 64: TRISA &= ~(0x01 << 0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	65
;led.c: 65: PA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	67
;led.c: 67: TRISA &= ~(0x01 << 2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	68
;led.c: 68: PA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	line	69
	
i1l1859:	
	return
	opt stack 0
GLOBAL	__end_of_led4_on
	__end_of_led4_on:
;; =============== function _led4_on ends ============

	signat	_led4_on,88
	global	_led3_on
psect	text684,local,class=CODE,delta=2
global __ptext684
__ptext684:

;; *************** function _led3_on *****************
;; Defined at:
;;		line 52 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_refresh
;; This function uses a non-reentrant model
;;
psect	text684
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	52
	global	__size_of_led3_on
	__size_of_led3_on	equ	__end_of_led3_on-_led3_on
	
_led3_on:	
	opt	stack 3
; Regs used in _led3_on: []
	line	54
	
i1l8112:	
;led.c: 54: TRISA &= ~(0x01 << 2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	55
;led.c: 55: PA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	line	57
;led.c: 57: TRISA &= ~(0x01 << 0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	58
;led.c: 58: PA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7
	line	59
	
i1l1856:	
	return
	opt stack 0
GLOBAL	__end_of_led3_on
	__end_of_led3_on:
;; =============== function _led3_on ends ============

	signat	_led3_on,88
	global	_led2_on
psect	text685,local,class=CODE,delta=2
global __ptext685
__ptext685:

;; *************** function _led2_on *****************
;; Defined at:
;;		line 42 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_refresh
;; This function uses a non-reentrant model
;;
psect	text685
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	42
	global	__size_of_led2_on
	__size_of_led2_on	equ	__end_of_led2_on-_led2_on
	
_led2_on:	
	opt	stack 3
; Regs used in _led2_on: []
	line	44
	
i1l8110:	
;led.c: 44: TRISA &= ~(0x01 << 0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	45
;led.c: 45: PA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7
	line	47
;led.c: 47: TRISA &= ~(0x01 << 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	48
;led.c: 48: PA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7
	line	49
	
i1l1853:	
	return
	opt stack 0
GLOBAL	__end_of_led2_on
	__end_of_led2_on:
;; =============== function _led2_on ends ============

	signat	_led2_on,88
	global	_led1_on
psect	text686,local,class=CODE,delta=2
global __ptext686
__ptext686:

;; *************** function _led1_on *****************
;; Defined at:
;;		line 30 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_refresh
;; This function uses a non-reentrant model
;;
psect	text686
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	30
	global	__size_of_led1_on
	__size_of_led1_on	equ	__end_of_led1_on-_led1_on
	
_led1_on:	
	opt	stack 3
; Regs used in _led1_on: []
	line	32
	
i1l8108:	
;led.c: 32: TRISA &= ~(0x01 << 0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	33
;led.c: 33: PA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	36
;led.c: 36: TRISA &= ~(0x01 << 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	37
;led.c: 37: PA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7
	line	38
	
i1l1850:	
	return
	opt stack 0
GLOBAL	__end_of_led1_on
	__end_of_led1_on:
;; =============== function _led1_on ends ============

	signat	_led1_on,88
	global	_led_status_handle
psect	text687,local,class=CODE,delta=2
global __ptext687
__ptext687:

;; *************** function _led_status_handle *****************
;; Defined at:
;;		line 179 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myIsr
;; This function uses a non-reentrant model
;;
psect	text687
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	179
	global	__size_of_led_status_handle
	__size_of_led_status_handle	equ	__end_of_led_status_handle-_led_status_handle
	
_led_status_handle:	
	opt	stack 4
; Regs used in _led_status_handle: [wreg+status,2+status,0]
	line	181
	
i1l8004:	
;led.c: 181: led_sta_refresh_cnt++;
	incf	(_led_sta_refresh_cnt),f	;volatile
	line	182
	
i1l8006:	
;led.c: 182: if (led_sta_refresh_cnt >= ((u8)(500 / 100))) {
	movlw	(05h)
	subwf	(_led_sta_refresh_cnt),w	;volatile
	skipc
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l1880
u210_20:
	line	183
	
i1l8008:	
;led.c: 183: led_sta_refresh_cnt = 0;
	clrf	(_led_sta_refresh_cnt)	;volatile
	line	184
	
i1l8010:	
;led.c: 184: if (flag_is_in_charging) {
	btfss	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l1881
u211_20:
	line	188
	
i1l8012:	
;led.c: 188: if (flag_is_charge_begin) {
	btfss	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l8052
u212_20:
	line	189
	
i1l8014:	
;led.c: 189: if (bat_vol < (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l8020
u213_20:
	line	190
	
i1l8016:	
;led.c: 190: flag_is_charge_begin = 0;
	bcf	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	line	195
	
i1l8018:	
;led.c: 195: led_sta_refresh_cnt = ((u8)(500 / 100));
	movlw	(05h)
	movwf	(_led_sta_refresh_cnt)	;volatile
	line	196
;led.c: 196: } else if (bat_vol < (3770) && charge_anim_phase == 0) {
	goto	i1l1880
	
i1l8020:	
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l8026
u214_20:
	
i1l8022:	
	movf	(_charge_anim_phase),f
	skipz	;volatile
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l8026
u215_20:
	line	197
	
i1l8024:	
;led.c: 197: flag_led_1_on = 1;
	bsf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	198
;led.c: 198: charge_anim_phase = 1;
	clrf	(_charge_anim_phase)	;volatile
	incf	(_charge_anim_phase),f	;volatile
	line	199
;led.c: 199: } else if (bat_vol < (3870) && charge_anim_phase == 1) {
	goto	i1l1880
	
i1l8026:	
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l8034
u216_20:
	
i1l8028:	
	decf	(_charge_anim_phase),w	;volatile
	skipz
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l8034
u217_20:
	line	200
	
i1l8030:	
;led.c: 200: flag_led_2_on = 1;
	bsf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	201
	
i1l8032:	
;led.c: 201: charge_anim_phase = 2;
	movlw	(02h)
	movwf	(_charge_anim_phase)	;volatile
	line	202
;led.c: 202: } else if (bat_vol < (4200 - 20) && charge_anim_phase == 2) {
	goto	i1l1880
	
i1l8034:	
	movlw	high(01054h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01054h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l8042
u218_20:
	
i1l8036:	
	movf	(_charge_anim_phase),w	;volatile
	xorlw	02h
	skipz
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l8042
u219_20:
	line	203
	
i1l8038:	
;led.c: 203: flag_led_3_on = 1;
	bsf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	204
	
i1l8040:	
;led.c: 204: charge_anim_phase = 3;
	movlw	(03h)
	movwf	(_charge_anim_phase)	;volatile
	line	205
;led.c: 205: } else if (bat_vol < (4200 - 20) && charge_anim_phase == 3) {
	goto	i1l1880
	
i1l8042:	
	movlw	high(01054h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01054h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l8016
u220_20:
	
i1l8044:	
	movf	(_charge_anim_phase),w	;volatile
	xorlw	03h
	skipz
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l8016
u221_20:
	line	206
	
i1l8046:	
;led.c: 206: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	207
	
i1l8048:	
;led.c: 207: charge_anim_phase = 4;
	movlw	(04h)
	movwf	(_charge_anim_phase)	;volatile
	line	208
;led.c: 208: } else {
	goto	i1l1880
	line	219
	
i1l8052:	
;led.c: 219: if (bat_vol < (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l8056
u222_20:
	line	220
	
i1l8054:	
;led.c: 220: flag_led_1_on = ~flag_led_1_on;
	movlw	1<<((_flag_led_1_on)&7)
	xorwf	((_flag_led_1_on)/8),f
	line	221
;led.c: 221: } else if (bat_vol < (3770)) {
	goto	i1l1895
	
i1l8056:	
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l8060
u223_20:
	line	222
	
i1l8058:	
;led.c: 222: flag_led_2_on = ~flag_led_2_on;
	movlw	1<<((_flag_led_2_on)&7)
	xorwf	((_flag_led_2_on)/8),f
	line	223
;led.c: 223: } else if (bat_vol < (3870)) {
	goto	i1l1895
	
i1l8060:	
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l8064
u224_20:
	line	224
	
i1l8062:	
;led.c: 224: flag_led_3_on = ~flag_led_3_on;
	movlw	1<<((_flag_led_3_on)&7)
	xorwf	((_flag_led_3_on)/8),f
	line	225
;led.c: 225: } else {
	goto	i1l1895
	line	226
	
i1l8064:	
;led.c: 226: flag_led_4_on = ~flag_led_4_on;
	movlw	1<<((_flag_led_4_on)&7)
	xorwf	((_flag_led_4_on)/8),f
	line	227
	
i1l1895:	
	line	229
;led.c: 227: }
;led.c: 229: if (bat_vol >= (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l8068
u225_20:
	line	230
	
i1l8066:	
;led.c: 230: flag_led_1_on = 1;
	bsf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	233
	
i1l8068:	
;led.c: 231: }
;led.c: 233: if (bat_vol >= (3770)) {
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l8072
u226_20:
	line	234
	
i1l8070:	
;led.c: 234: flag_led_2_on = 1;
	bsf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	237
	
i1l8072:	
;led.c: 235: }
;led.c: 237: if (bat_vol >= (3870)) {
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l8076
u227_20:
	line	238
	
i1l8074:	
;led.c: 238: flag_led_3_on = 1;
	bsf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	241
	
i1l8076:	
;led.c: 239: }
;led.c: 241: if (bat_vol >= (4200 - 20)) {
	movlw	high(01054h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01054h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l1880
u228_20:
	line	242
	
i1l8078:	
;led.c: 242: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	goto	i1l1880
	line	245
	
i1l1881:	
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l1905
u229_20:
	line	248
	
i1l8080:	
;led.c: 248: if (bat_vol < (3200)) {
	movlw	high(0C80h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0C80h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l1906
u230_20:
	line	250
	
i1l8082:	
;led.c: 250: flag_led_1_on = ~flag_led_1_on;
	movlw	1<<((_flag_led_1_on)&7)
	xorwf	((_flag_led_1_on)/8),f
	line	251
;led.c: 251: } else {
	goto	i1l8084
	
i1l1906:	
	line	252
;led.c: 252: flag_led_1_on = 1;
	bsf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	255
	
i1l8084:	
;led.c: 253: }
;led.c: 255: if (bat_vol >= (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l1908
u231_20:
	line	256
	
i1l8086:	
;led.c: 256: flag_led_2_on = 1;
	bsf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	257
;led.c: 257: } else {
	goto	i1l8088
	
i1l1908:	
	line	258
;led.c: 258: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	261
	
i1l8088:	
;led.c: 259: }
;led.c: 261: if (bat_vol >= (3770)) {
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l1910
u232_20:
	line	262
	
i1l8090:	
;led.c: 262: flag_led_3_on = 1;
	bsf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	263
;led.c: 263: } else {
	goto	i1l8092
	
i1l1910:	
	line	264
;led.c: 264: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	267
	
i1l8092:	
;led.c: 265: }
;led.c: 267: if (bat_vol >= (3870)) {
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l1912
u233_20:
	goto	i1l8078
	line	269
	
i1l1912:	
	line	270
;led.c: 270: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	goto	i1l1880
	line	272
	
i1l1905:	
	line	274
;led.c: 274: flag_led_1_on = 0;
	bcf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	275
;led.c: 275: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	276
;led.c: 276: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	277
;led.c: 277: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	279
	
i1l1880:	
	line	281
;led.c: 278: }
;led.c: 279: }
;led.c: 281: if (flag_is_in_charging && 0 == flag_is_charge_begin) {
	btfss	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l1920
u234_20:
	
i1l8096:	
	btfsc	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l1920
u235_20:
	line	283
	
i1l8098:	
;led.c: 283: if (bat_vol >= (4200 - 20)) {
	movlw	high(01054h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01054h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l8102
u236_20:
	line	284
	
i1l8100:	
;led.c: 284: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	287
	
i1l8102:	
;led.c: 285: }
;led.c: 287: if (bat_vol >= (4100)) {
	movlw	high(01004h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01004h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l1920
u237_20:
	line	288
	
i1l8104:	
;led.c: 288: if (charge_fully_cnt < ((u16)((u32)13 * 60 * 1000 / 100))) {
	movlw	high(01E78h)
	subwf	(_charge_fully_cnt+1),w	;volatile
	movlw	low(01E78h)
	skipnz
	subwf	(_charge_fully_cnt),w	;volatile
	skipnc
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l1918
u238_20:
	line	289
	
i1l8106:	
;led.c: 289: charge_fully_cnt++;
	incf	(_charge_fully_cnt),f	;volatile
	skipnz
	incf	(_charge_fully_cnt+1),f	;volatile
	line	290
;led.c: 290: } else {
	goto	i1l1920
	
i1l1918:	
	line	291
;led.c: 291: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	295
	
i1l1920:	
	return
	opt stack 0
GLOBAL	__end_of_led_status_handle
	__end_of_led_status_handle:
;; =============== function _led_status_handle ends ============

	signat	_led_status_handle,88
	global	_led_all_off
psect	text688,local,class=CODE,delta=2
global __ptext688
__ptext688:

;; *************** function _led_all_off *****************
;; Defined at:
;;		line 13 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myIsr
;;		_led_refresh
;;		_key_scan
;; This function uses a non-reentrant model
;;
psect	text688
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	13
	global	__size_of_led_all_off
	__size_of_led_all_off	equ	__end_of_led_all_off-_led_all_off
	
_led_all_off:	
	opt	stack 4
; Regs used in _led_all_off: [wreg+status,2+status,0]
	line	17
	
i1l8002:	
;led.c: 17: PAHCON |= (0x01 << 0 | 0x01 << 1 | 0x01 << 2);
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(146)^080h,f	;volatile
	line	22
;led.c: 20: TRISA |= (0x01 << 0) |
;led.c: 21: (0x01 << 1) |
;led.c: 22: (0x01 << 2);
	movlw	(07h)
	iorwf	(133)^080h,f	;volatile
	line	23
	
i1l1847:	
	return
	opt stack 0
GLOBAL	__end_of_led_all_off
	__end_of_led_all_off:
;; =============== function _led_all_off ends ============

	signat	_led_all_off,88
	global	_pen_pwr_off
psect	text689,local,class=CODE,delta=2
global __ptext689
__ptext689:

;; *************** function _pen_pwr_off *****************
;; Defined at:
;;		line 11 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\pen_pwr_ctl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myIsr
;;		_key_scan
;; This function uses a non-reentrant model
;;
psect	text689
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\pen_pwr_ctl.c"
	line	11
	global	__size_of_pen_pwr_off
	__size_of_pen_pwr_off	equ	__end_of_pen_pwr_off-_pen_pwr_off
	
_pen_pwr_off:	
	opt	stack 3
; Regs used in _pen_pwr_off: []
	line	12
	
i1l7918:	
;pen_pwr_ctl.c: 12: PAHCON &= ~(0x01 << 6);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(146)^080h+(6/8),(6)&7	;volatile
	line	13
;pen_pwr_ctl.c: 13: PADCON &= ~(0x01 << 6);
	bcf	(147)^080h+(6/8),(6)&7	;volatile
	line	14
;pen_pwr_ctl.c: 14: TRISA |= (0x01 << 6);
	bsf	(133)^080h+(6/8),(6)&7	;volatile
	line	15
	
i1l5376:	
	return
	opt stack 0
GLOBAL	__end_of_pen_pwr_off
	__end_of_pen_pwr_off:
;; =============== function _pen_pwr_off ends ============

	signat	_pen_pwr_off,88
psect	text690,local,class=CODE,delta=2
global __ptext690
__ptext690:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
