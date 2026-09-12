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
psect	text679,local,class=CODE,delta=2
global __ptext679
__ptext679:
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
	global	key_scan@settle_cnt
key_scan@settle_cnt:	; 1 bytes @ 0x0
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
;; (0) _main                                                 0     0      0      46
;;                        _System_Init
;;                          _user_init
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
;; (2) _delay_ms                                            10     6      4      46
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
;; (3) _myIsr                                                7     7      0     170
;;                                              0 BANK0      7     7      0
;;                        _led_refresh
;;                        _pen_pwr_off
;;                           _key_scan
;;                        _led_all_off
;;                  _led_status_handle
;;                             ___lmul
;; ---------------------------------------------------------------------------------
;; (4) _key_scan                                             1     1      0      34
;;                                              0 COMMON     1     1      0
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
;;		line 254 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	254
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	255
	
l7661:	
;main.c: 255: System_Init();
	fcall	_System_Init
	line	256
;main.c: 256: user_init();
	fcall	_user_init
	line	258
	
l7663:	
;main.c: 258: flag_is_led_show_enable = 1;
	bsf	(_flag_is_led_show_enable/8),(_flag_is_led_show_enable)&7
	line	260
	
l7665:	
;main.c: 260: into_low_power_cnt = (u8)((u16)2000 / 10);
	movlw	(0C8h)
	movwf	(_into_low_power_cnt)	;volatile
	line	272
	
l7667:	
;main.c: 271: if ((flag_is_dev_working && pwr_off_cnt >= (((u16)((u32)50 * 60 * 1000 / 100)))) ||
;main.c: 272: into_low_power_cnt >= (u8)((u16)2000 / 10)) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l7671
u1640:
	
l7669:	
	movlw	high(07530h)
	subwf	(_pwr_off_cnt+1),w	;volatile
	movlw	low(07530h)
	skipnz
	subwf	(_pwr_off_cnt),w	;volatile
	skipnc
	goto	u1651
	goto	u1650
u1651:
	goto	l938
u1650:
	
l7671:	
	movlw	(0C8h)
	subwf	(_into_low_power_cnt),w	;volatile
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l7667
u1660:
	line	273
;main.c: 273: label_low_power_in:
	
l938:	
	line	275
;main.c: 275: GIE = 0;
	bcf	(95/8),(95)&7
	line	278
;main.c: 278: T1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	279
;main.c: 279: T3IE = 0;
	bcf	(1129/8)^080h,(1129)&7
	line	280
;main.c: 280: T1REN = 0;
	bcf	(1240/8)^080h,(1240)&7
	line	281
;main.c: 281: T3REN = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2183/8)^0100h,(2183)&7
	line	283
;main.c: 283: ADCIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1126/8)^080h,(1126)&7
	line	284
	
l7673:	
;main.c: 284: ADM &= ~(0x0F << 0);
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(27),f	;volatile
	line	285
	
l7675:	
;main.c: 285: GCHS = 0;
	bcf	(220/8),(220)&7
	line	286
	
l7677:	
;main.c: 286: ADENB = 0;
	bcf	(223/8),(223)&7
	line	289
	
l7679:	
;main.c: 289: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	290
	
l7681:	
;main.c: 290: PAHCON = 0xFF;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	291
	
l7683:	
;main.c: 291: PADCON = 0xFF;
	movlw	(0FFh)
	movwf	(147)^080h	;volatile
	line	295
	
l7685:	
;main.c: 295: PAHCON &= ~(0x01 << 0 | 0x01 << 1 | 0x01 << 2);
	movlw	(0F8h)
	andwf	(146)^080h,f	;volatile
	line	296
	
l7687:	
;main.c: 296: PAIF = 0;
	bcf	(88/8),(88)&7
	line	297
	
l7689:	
;main.c: 297: PAIE = 1;
	bsf	(91/8),(91)&7
	line	300
	
l7691:	
;main.c: 299: WUACON |= (0x01 << 0 |
;main.c: 300: 0x01 << 5);
	movlw	(021h)
	iorwf	(143)^080h,f	;volatile
	line	301
	
l7693:	
;main.c: 301: PEIE = 1;
	bsf	(94/8),(94)&7
	line	303
	
l7695:	
;main.c: 303: CLKMD = 1;
	bsf	(1184/8)^080h,(1184)&7
	line	304
	
l7697:	
;main.c: 304: STPHX = 1;
	bsf	(1185/8)^080h,(1185)&7
	line	305
	
l7699:	
;main.c: 305: SLCON = 1;
	bsf	(1187/8)^080h,(1187)&7
	line	307
	
l7701:	
# 307 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	308
	
l7703:	
# 308 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	309
	
l7705:	
# 309 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
sleep ;#
psect	maintext
	line	310
	
l7707:	
# 310 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	311
	
l7709:	
# 311 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	maintext
	line	313
	
l7711:	
;main.c: 313: PAIF = 0;
	bcf	(88/8),(88)&7
	line	314
	
l7713:	
;main.c: 314: PAIE = 0;
	bcf	(91/8),(91)&7
	line	315
	
l7715:	
;main.c: 315: WUACON = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(143)^080h	;volatile
	line	323
	
l7717:	
;main.c: 323: OSCM = (0x01 << 6);
	movlw	(040h)
	movwf	(148)^080h	;volatile
	line	325
	
l7719:	
;main.c: 325: System_Init();
	fcall	_System_Init
	line	326
	
l7721:	
;main.c: 326: user_init();
	fcall	_user_init
	line	329
	
l7723:	
;main.c: 329: flag_is_led_show_enable = 1;
	bsf	(_flag_is_led_show_enable/8),(_flag_is_led_show_enable)&7
	line	331
	
l7725:	
;main.c: 331: if (PA5 == 0 && bat_vol <= (2900)) {
	btfsc	(45/8),(45)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l7667
u1670:
	
l7727:	
	movlw	high(0B55h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0B55h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u1681
	goto	u1680
u1681:
	goto	l7667
u1680:
	goto	l938
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	338
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_user_init
psect	text680,local,class=CODE,delta=2
global __ptext680
__ptext680:

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
psect	text680
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	229
	global	__size_of_user_init
	__size_of_user_init	equ	__end_of_user_init-_user_init
	
_user_init:	
	opt	stack 3
; Regs used in _user_init: [wreg+status,2+status,0+pclath+cstack]
	line	231
	
l7653:	
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
	
l7655:	
;main.c: 240: adc_init();
	fcall	_adc_init
	line	241
;main.c: 241: timer1_init();
	fcall	_timer1_init
	line	242
;main.c: 242: timer3_init();
	fcall	_timer3_init
	line	243
	
l7657:	
;main.c: 243: GIE = 1;
	bsf	(95/8),(95)&7
	line	245
;main.c: 245: delay_ms(1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_delay_ms)
	incf	(?_delay_ms),f
	clrf	(?_delay_ms+1)
	clrf	(?_delay_ms+2)
	clrf	(?_delay_ms+3)
	fcall	_delay_ms
	line	246
	
l7659:	
;main.c: 246: adc_enable = 1;
	bsf	(_adc_enable/8),(_adc_enable)&7
	line	247
;main.c: 247: delay_ms(10);
	movlw	0Ah
	movwf	(?_delay_ms)
	clrf	(?_delay_ms+1)
	clrf	(?_delay_ms+2)
	clrf	(?_delay_ms+3)

	fcall	_delay_ms
	line	251
	
l929:	
	return
	opt stack 0
GLOBAL	__end_of_user_init
	__end_of_user_init:
;; =============== function _user_init ends ============

	signat	_user_init,88
	global	_System_Init
psect	text681,local,class=CODE,delta=2
global __ptext681
__ptext681:

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
psect	text681
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	61
	global	__size_of_System_Init
	__size_of_System_Init	equ	__end_of_System_Init-_System_Init
	
_System_Init:	
	opt	stack 3
; Regs used in _System_Init: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l7645:	
;main.c: 62: OPTIONR = 0b000000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	65
;main.c: 65: INTCON = 0b00000000;
	clrf	(11)	;volatile
	line	73
	
l7647:	
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
	
l7649:	
;main.c: 93: GPIO_Init();
	fcall	_GPIO_Init
	line	94
	
l7651:	
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
psect	text682,local,class=CODE,delta=2
global __ptext682
__ptext682:

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
psect	text682
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer3.c"
	line	4
	global	__size_of_timer3_init
	__size_of_timer3_init	equ	__end_of_timer3_init-_timer3_init
	
_timer3_init:	
	opt	stack 3
; Regs used in _timer3_init: [wreg+status,2]
	line	5
	
l7259:	
;timer3.c: 5: T3C0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	6
;timer3.c: 6: T3C2 = 0;
	clrf	(281)^0100h	;volatile
	line	7
	
l7261:	
;timer3.c: 7: T3TL = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) % 256;
	movlw	(017h)
	movwf	(274)^0100h	;volatile
	line	8
	
l7263:	
;timer3.c: 8: T3TH = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) / 256;
	movlw	(0FCh)
	movwf	(275)^0100h	;volatile
	line	9
	
l7265:	
;timer3.c: 9: T3C1 = TIMER3_DIV_4_REG_VAL;
	movlw	(05h)
	movwf	(273)^0100h	;volatile
	line	11
	
l7267:	
;timer3.c: 11: T3REN = 1;
	bsf	(2183/8)^0100h,(2183)&7
	line	12
	
l7269:	
;timer3.c: 12: T3IF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(105/8),(105)&7
	line	13
	
l7271:	
;timer3.c: 13: T3IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1129/8)^080h,(1129)&7
	line	14
	
l7273:	
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
psect	text683,local,class=CODE,delta=2
global __ptext683
__ptext683:

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
psect	text683
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer1.c"
	line	4
	global	__size_of_timer1_init
	__size_of_timer1_init	equ	__end_of_timer1_init-_timer1_init
	
_timer1_init:	
	opt	stack 3
; Regs used in _timer1_init: [wreg]
	line	6
	
l7249:	
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
	
l7251:	
;timer1.c: 10: T1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	11
	
l7253:	
;timer1.c: 11: T1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	12
	
l7255:	
;timer1.c: 12: PEIE = 1;
	bsf	(94/8),(94)&7
	line	13
	
l7257:	
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
psect	text684,local,class=CODE,delta=2
global __ptext684
__ptext684:

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
psect	text684
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\adc.c"
	line	5
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 3
; Regs used in _adc_init: [wreg+status,2+status,0]
	line	6
	
l7235:	
;adc.c: 6: ADM = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(27)	;volatile
	line	7
;adc.c: 7: ADR = 0;
	clrf	(29)	;volatile
	line	8
	
l7237:	
;adc.c: 8: ADM |= 0x0C << 0;
	movlw	(0Ch)
	iorwf	(27),f	;volatile
	line	9
	
l7239:	
;adc.c: 9: GCHS = 1;
	bsf	(220/8),(220)&7
	line	10
	
l7241:	
;adc.c: 10: VREFH = 0;
	clrf	(31)	;volatile
	line	11
	
l7243:	
;adc.c: 11: ADENB = 1;
	bsf	(223/8),(223)&7
	line	12
	
l7245:	
;adc.c: 12: ADCIF = 0;
	bcf	(102/8),(102)&7
	line	13
	
l7247:	
;adc.c: 13: ADCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1126/8)^080h,(1126)&7
	line	28
	
l6228:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
	global	_delay_ms
psect	text685,local,class=CODE,delta=2
global __ptext685
__ptext685:

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
;; This function uses a non-reentrant model
;;
psect	text685
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	215
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 3
; Regs used in _delay_ms: [wreg]
	line	216
	
l7227:	
;main.c: 216: while (xms) {
	goto	l920
	line	220
	
l7229:	
;main.c: 220: u16 i = 510;
	movlw	low(01FEh)
	movwf	(delay_ms@i)
	movlw	high(01FEh)
	movwf	((delay_ms@i))+1
	line	221
;main.c: 221: while (i--) {
	goto	l7231
	
l923:	
	line	222
# 222 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	text685
	line	221
	
l7231:	
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
	goto	u851
	goto	u850
u851:
	goto	l923
u850:
	line	224
	
l7233:	
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
	goto	u865
	goto	u866
u865:
	subwf	(delay_ms@xms+1),f
u866:
	movf	2+(??_delay_ms+0)+0,w
	skipc
	incfsz	2+(??_delay_ms+0)+0,w
	goto	u867
	goto	u868
u867:
	subwf	(delay_ms@xms+2),f
u868:
	movf	3+(??_delay_ms+0)+0,w
	skipc
	incfsz	3+(??_delay_ms+0)+0,w
	goto	u869
	goto	u860
u869:
	subwf	(delay_ms@xms+3),f
u860:

	line	225
	
l920:	
	line	216
	movf	(delay_ms@xms+3),w
	iorwf	(delay_ms@xms+2),w
	iorwf	(delay_ms@xms+1),w
	iorwf	(delay_ms@xms),w
	skipz
	goto	u871
	goto	u870
u871:
	goto	l7229
u870:
	line	226
	
l926:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_CLR_RAM_EveryBank
psect	text686,local,class=CODE,delta=2
global __ptext686
__ptext686:

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
psect	text686
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	112
	global	__size_of_CLR_RAM_EveryBank
	__size_of_CLR_RAM_EveryBank	equ	__end_of_CLR_RAM_EveryBank-_CLR_RAM_EveryBank
	
_CLR_RAM_EveryBank:	
	opt	stack 3
; Regs used in _CLR_RAM_EveryBank: [wreg+status,2+status,0]
	line	113
	
l7191:	
;main.c: 113: STATUS &= 0x1F;
	movlw	(01Fh)
	andwf	(3),f	;volatile
	line	115
	
l7193:	
# 115 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVLW 0x5F; ;#
psect	text686
	line	116
	
l7195:	
# 116 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVWF 0x20; ;#
psect	text686
	line	117
	
l7197:	
# 117 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVLW 0x7F; ;#
psect	text686
	line	118
	
l7199:	
# 118 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVWF _FSR, F; ;#
psect	text686
	line	119
	
l7201:	
# 119 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
CLR_RAM_LOOP: ;#
psect	text686
	line	120
	
l7203:	
# 120 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CALL CLR_RAM_Demo; ;#
psect	text686
	line	122
	
l7205:	
# 122 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    DECF _FSR, F; ;#
psect	text686
	line	123
	
l7207:	
# 123 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    DECFSZ 0X20, F; ;#
psect	text686
	line	124
	
l7209:	
# 124 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    GOTO CLR_RAM_LOOP; ;#
psect	text686
	line	126
	
l7211:	
# 126 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CALL CLR_RAM_Demo; ;#
psect	text686
	line	127
	
l7213:	
# 127 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    RETURN; ;#
psect	text686
	line	129
	
l7215:	
# 129 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
CLR_RAM_Demo: ;#
psect	text686
	line	132
	
l7217:	
# 132 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
            BSF _FSR, 7; ;#
psect	text686
	line	133
	
l7219:	
# 133 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CLRF _INDF; ;#
psect	text686
	line	137
	
l7221:	
# 137 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
            BCF _FSR, 7; ;#
psect	text686
	line	138
	
l7223:	
# 138 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CLRF _INDF; ;#
psect	text686
	line	140
	
l7225:	
# 140 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    RETURN; ;#
psect	text686
	line	142
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_CLR_RAM_EveryBank
	__end_of_CLR_RAM_EveryBank:
;; =============== function _CLR_RAM_EveryBank ends ============

	signat	_CLR_RAM_EveryBank,88
	global	_GPIO_Init
psect	text687,local,class=CODE,delta=2
global __ptext687
__ptext687:

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
psect	text687
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	150
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 3
; Regs used in _GPIO_Init: [wreg+status,2]
	line	152
	
l7181:	
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
	
l7183:	
;main.c: 155: PAHCON = 0b11111111;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	156
	
l7185:	
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
	
l7187:	
;main.c: 162: PCDCON = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	163
	
l7189:	
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
psect	text688,local,class=CODE,delta=2
global __ptext688
__ptext688:

;; *************** function _myIsr *****************
;; Defined at:
;;		line 346 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
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
;;		Unchanged: FFE00/0
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
psect	text688
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	346
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
psect	text688
	line	347
	
i1l7763:	
;main.c: 347: if (T1IF) {
	btfss	(96/8),(96)&7
	goto	u169_21
	goto	u169_20
u169_21:
	goto	i1l945
u169_20:
	line	349
	
i1l7765:	
;main.c: 349: T1IF = 0;
	bcf	(96/8),(96)&7
	line	350
	
i1l7767:	
;main.c: 350: T1TL = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) % 256;
	movlw	(037h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	351
;main.c: 351: T1TH = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) / 256;
	movlw	(0FFh)
	movwf	(156)^080h	;volatile
	line	352
	
i1l7769:	
;main.c: 352: led_refresh();
	fcall	_led_refresh
	line	356
	
i1l7771:	
;main.c: 356: if (adc_enable) {
	btfss	(_adc_enable/8),(_adc_enable)&7
	goto	u170_21
	goto	u170_20
u170_21:
	goto	i1l945
u170_20:
	line	357
	
i1l7773:	
;main.c: 357: if (0 == adc_sta) {
	btfsc	(_adc_sta/8),(_adc_sta)&7
	goto	u171_21
	goto	u171_20
u171_21:
	goto	i1l945
u171_20:
	line	358
	
i1l7775:	
;main.c: 358: adc_sta = 1;
	bsf	(_adc_sta/8),(_adc_sta)&7
	line	359
;main.c: 359: EOC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(221/8),(221)&7
	line	360
;main.c: 360: ADS = 1;
	bsf	(222/8),(222)&7
	line	379
	
i1l945:	
	line	381
;main.c: 361: }
;main.c: 362: }
;main.c: 379: }
;main.c: 381: if (T3IF) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l7855
u172_20:
	line	386
	
i1l7777:	
;main.c: 383: static volatile u8 cnt_dest_10ms = 0;
;main.c: 384: static volatile u8 cnt_dest_100ms = 0;
;main.c: 386: T3IF = 0;
	bcf	(105/8),(105)&7
	line	387
	
i1l7779:	
;main.c: 387: T3TL = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) % 256;
	movlw	(017h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(274)^0100h	;volatile
	line	388
;main.c: 388: T3TH = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) / 256;
	movlw	(0FCh)
	movwf	(275)^0100h	;volatile
	line	390
	
i1l7781:	
;main.c: 390: cnt_dest_10ms++;
	bcf	status, 6	;RP1=0, select bank0
	incf	(myIsr@cnt_dest_10ms),f	;volatile
	line	391
	
i1l7783:	
;main.c: 391: if (cnt_dest_10ms >= 10) {
	movlw	(0Ah)
	subwf	(myIsr@cnt_dest_10ms),w	;volatile
	skipc
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l7841
u173_20:
	line	395
	
i1l7785:	
;main.c: 393: static volatile u8 is_not_charge_cnt = 0;
;main.c: 395: cnt_dest_10ms = 0;
	clrf	(myIsr@cnt_dest_10ms)	;volatile
	line	410
	
i1l7787:	
;main.c: 410: if (PA5) {
	btfss	(45/8),(45)&7
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l7813
u174_20:
	line	411
	
i1l7789:	
;main.c: 411: is_not_charge_cnt = 0;
	clrf	(myIsr@is_not_charge_cnt)	;volatile
	line	412
	
i1l7791:	
;main.c: 412: if (0 == flag_is_in_charging) {
	btfsc	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l7821
u175_20:
	line	413
	
i1l7793:	
;main.c: 413: pen_pwr_off();
	fcall	_pen_pwr_off
	line	419
	
i1l7795:	
;main.c: 419: flag_led_1_on = 0;
	bcf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	420
	
i1l7797:	
;main.c: 420: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	421
	
i1l7799:	
;main.c: 421: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	422
	
i1l7801:	
;main.c: 422: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	428
	
i1l7803:	
;main.c: 428: flag_is_dev_working = 0;
	bcf	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	line	430
	
i1l7805:	
;main.c: 430: flag_is_charge_begin = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	line	431
	
i1l7807:	
;main.c: 431: charge_anim_phase = 0;
	clrf	(_charge_anim_phase)	;volatile
	line	433
	
i1l7809:	
;main.c: 433: charge_fully_cnt = 0;
	clrf	(_charge_fully_cnt)	;volatile
	clrf	(_charge_fully_cnt+1)	;volatile
	line	434
	
i1l7811:	
;main.c: 434: flag_is_in_charging = 1;
	bsf	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	i1l7821
	line	437
	
i1l7813:	
;main.c: 437: is_not_charge_cnt++;
	incf	(myIsr@is_not_charge_cnt),f	;volatile
	line	438
	
i1l7815:	
;main.c: 438: if (is_not_charge_cnt >= (200 / 10)) {
	movlw	(014h)
	subwf	(myIsr@is_not_charge_cnt),w	;volatile
	skipc
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l7821
u176_20:
	line	439
	
i1l7817:	
;main.c: 439: is_not_charge_cnt = 0;
	clrf	(myIsr@is_not_charge_cnt)	;volatile
	line	440
	
i1l7819:	
;main.c: 440: flag_is_in_charging = 0;
	bcf	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	line	446
	
i1l7821:	
;main.c: 441: }
;main.c: 442: }
;main.c: 446: key_scan();
	fcall	_key_scan
	line	451
	
i1l7823:	
;main.c: 451: if (flag_is_dev_working && bat_vol < (2900)) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l7833
u177_20:
	
i1l7825:	
	movlw	high(0B54h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0B54h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l7833
u178_20:
	line	452
	
i1l7827:	
;main.c: 452: pen_pwr_off();
	fcall	_pen_pwr_off
	line	453
	
i1l7829:	
;main.c: 453: led_all_off();
	fcall	_led_all_off
	line	454
	
i1l7831:	
;main.c: 454: flag_is_dev_working = 0;
	bcf	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	line	458
	
i1l7833:	
;main.c: 455: }
;main.c: 458: if ((PA5 == 0) && (flag_is_dev_working == 0)) {
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l7839
u179_20:
	
i1l7835:	
	btfsc	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l7839
u180_20:
	line	460
	
i1l7837:	
;main.c: 460: into_low_power_cnt++;
	incf	(_into_low_power_cnt),f	;volatile
	line	462
;main.c: 462: } else {
	goto	i1l7841
	line	463
	
i1l7839:	
;main.c: 463: into_low_power_cnt = 0;
	clrf	(_into_low_power_cnt)	;volatile
	line	469
	
i1l7841:	
;main.c: 464: }
;main.c: 466: }
;main.c: 469: cnt_dest_100ms++;
	incf	(myIsr@cnt_dest_100ms),f	;volatile
	line	470
	
i1l7843:	
;main.c: 470: if (cnt_dest_100ms >= 100) {
	movlw	(064h)
	subwf	(myIsr@cnt_dest_100ms),w	;volatile
	skipc
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l7855
u181_20:
	line	471
	
i1l7845:	
;main.c: 471: cnt_dest_100ms = 0;
	clrf	(myIsr@cnt_dest_100ms)	;volatile
	line	474
	
i1l7847:	
;main.c: 474: led_status_handle();
	fcall	_led_status_handle
	line	476
	
i1l7849:	
;main.c: 476: if (flag_is_dev_working) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l7853
u182_20:
	line	484
	
i1l7851:	
;main.c: 484: pwr_off_cnt++;
	incf	(_pwr_off_cnt),f	;volatile
	skipnz
	incf	(_pwr_off_cnt+1),f	;volatile
	line	486
;main.c: 486: } else {
	goto	i1l7855
	line	488
	
i1l7853:	
;main.c: 488: pwr_off_cnt = 0;
	clrf	(_pwr_off_cnt)	;volatile
	clrf	(_pwr_off_cnt+1)	;volatile
	line	495
	
i1l7855:	
;main.c: 489: }
;main.c: 490: }
;main.c: 492: }
;main.c: 495: if (ADCIF) {
	btfss	(102/8),(102)&7
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l974
u183_20:
	line	496
	
i1l7857:	
;main.c: 496: ADCIF = 0;
	bcf	(102/8),(102)&7
	line	497
;main.c: 497: adc_sta = 0;
	bcf	(_adc_sta/8),(_adc_sta)&7
	line	499
	
i1l7859:	
;main.c: 499: adc_val = ADB;
	movf	(28),w	;volatile
	movwf	(_adc_val)	;volatile
	clrf	(_adc_val+1)	;volatile
	line	500
;main.c: 500: adc_val <<= 4;
	swapf	(_adc_val),f	;volatile
	swapf	(_adc_val+1),f	;volatile
	movlw	0f0h
	andwf	(_adc_val+1),f	;volatile
	movf	(_adc_val),w	;volatile
	andlw	0fh
	iorwf	(_adc_val+1),f	;volatile
	movlw	0f0h
	andwf	(_adc_val),f	;volatile
	line	501
	
i1l7861:	
;main.c: 501: adc_val += (ADR & 0x0f);
	movf	(29),w
	andlw	0Fh
	addwf	(_adc_val),f	;volatile
	skipnc
	incf	(_adc_val+1),f	;volatile
	line	503
	
i1l7863:	
;main.c: 503: if (0 == adc_val_cnt) {
	movf	(_adc_val_cnt),f
	skipz	;volatile
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l7867
u184_20:
	line	504
	
i1l7865:	
;main.c: 504: adc_val_sum = 0;
	clrf	(_adc_val_sum)	;volatile
	clrf	(_adc_val_sum+1)	;volatile
	clrf	(_adc_val_sum+2)	;volatile
	clrf	(_adc_val_sum+3)	;volatile
	line	507
	
i1l7867:	
;main.c: 505: }
;main.c: 507: adc_val_sum += adc_val;
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
	goto	u185_21
	addwf	(_adc_val_sum+1),f	;volatile
u185_21:
	movf	2+(??_myIsr+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u185_22
	addwf	(_adc_val_sum+2),f	;volatile
u185_22:
	movf	3+(??_myIsr+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u185_23
	addwf	(_adc_val_sum+3),f	;volatile
u185_23:

	line	508
	
i1l7869:	
;main.c: 508: adc_val_cnt++;
	incf	(_adc_val_cnt),f	;volatile
	line	509
	
i1l7871:	
;main.c: 509: if (adc_val_cnt >= (32)) {
	movlw	(020h)
	subwf	(_adc_val_cnt),w	;volatile
	skipc
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l974
u186_20:
	line	510
	
i1l7873:	
;main.c: 510: bat_vol_tmp = ((u16)((u32)(adc_val_sum / (32)) * (2000) * (4) / 4096));
	movf	(_adc_val_sum+3),w	;volatile
	movwf	(?___lmul+3)
	movf	(_adc_val_sum+2),w	;volatile
	movwf	(?___lmul+2)
	movf	(_adc_val_sum+1),w	;volatile
	movwf	(?___lmul+1)
	movf	(_adc_val_sum),w	;volatile
	movwf	(?___lmul)

	movlw	05h
u187_25:
	clrc
	rrf	(?___lmul+3),f
	rrf	(?___lmul+2),f
	rrf	(?___lmul+1),f
	rrf	(?___lmul),f
	addlw	-1
	skipz
	goto	u187_25

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
u188_25:
	clrc
	rrf	(??_myIsr+0)+3,f
	rrf	(??_myIsr+0)+2,f
	rrf	(??_myIsr+0)+1,f
	rrf	(??_myIsr+0)+0,f
u188_20:
	addlw	-1
	skipz
	goto	u188_25
	movf	1+(??_myIsr+0)+0,w
	movwf	(_bat_vol_tmp+1)	;volatile
	movf	0+(??_myIsr+0)+0,w
	movwf	(_bat_vol_tmp)	;volatile
	line	511
	
i1l7875:	
;main.c: 511: adc_val_cnt = 0;
	clrf	(_adc_val_cnt)	;volatile
	line	513
	
i1l7877:	
;main.c: 513: if (0 == bat_vol) {
	movf	((_bat_vol+1)),w	;volatile
	iorwf	((_bat_vol)),w	;volatile
	skipz
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l7881
u189_20:
	line	515
	
i1l7879:	
;main.c: 515: bat_vol = bat_vol_tmp;
	movf	(_bat_vol_tmp+1),w	;volatile
	movwf	(_bat_vol+1)	;volatile
	movf	(_bat_vol_tmp),w	;volatile
	movwf	(_bat_vol)	;volatile
	line	518
	
i1l7881:	
;main.c: 516: }
;main.c: 518: if (flag_is_dev_working) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l7887
u190_20:
	line	520
	
i1l7883:	
;main.c: 520: if (bat_vol_tmp < bat_vol) {
	movf	(_bat_vol+1),w	;volatile
	subwf	(_bat_vol_tmp+1),w	;volatile
	skipz
	goto	u191_25
	movf	(_bat_vol),w	;volatile
	subwf	(_bat_vol_tmp),w	;volatile
u191_25:
	skipnc
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l968
u191_20:
	line	521
	
i1l7885:	
;main.c: 521: bat_vol = bat_vol_tmp;
	movf	(_bat_vol_tmp+1),w	;volatile
	movwf	(_bat_vol+1)	;volatile
	movf	(_bat_vol_tmp),w	;volatile
	movwf	(_bat_vol)	;volatile
	goto	i1l974
	line	525
	
i1l7887:	
;main.c: 525: if (bat_vol_tmp > bat_vol) {
	movf	(_bat_vol_tmp+1),w	;volatile
	subwf	(_bat_vol+1),w	;volatile
	skipz
	goto	u192_25
	movf	(_bat_vol_tmp),w	;volatile
	subwf	(_bat_vol),w	;volatile
u192_25:
	skipnc
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l968
u192_20:
	goto	i1l7885
	line	529
	
i1l968:	
	line	536
	
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
psect	text689,local,class=CODE,delta=2
global __ptext689
__ptext689:

;; *************** function _key_scan *****************
;; Defined at:
;;		line 25 in file "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  settle_cnt      1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
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
psect	text689
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\key.c"
	line	25
	global	__size_of_key_scan
	__size_of_key_scan	equ	__end_of_key_scan-_key_scan
	
_key_scan:	
	opt	stack 3
; Regs used in _key_scan: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
i1l7923:	
;key.c: 26: if (flag_is_in_charging) {
	btfss	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l7929
u199_20:
	line	28
	
i1l7925:	
;key.c: 28: last_key_id = 0;
	clrf	(_last_key_id)	;volatile
	line	29
;key.c: 29: press_cnt = 0;
	clrf	(_press_cnt)	;volatile
	line	30
;key.c: 30: filter_cnt = 0;
	clrf	(_filter_cnt)	;volatile
	line	31
;key.c: 31: filter_key_id = 0;
	clrf	(_filter_key_id)	;volatile
	line	32
;key.c: 32: click_delay_cnt = 0;
	clrf	(_click_delay_cnt)	;volatile
	line	33
;key.c: 33: click_cnt = 0;
	clrf	(_click_cnt)	;volatile
	line	34
;key.c: 34: cur_key_id = 0;
	clrf	(_cur_key_id)	;volatile
	goto	i1l4506
	line	38
	
i1l7929:	
;key.c: 36: }
;key.c: 38: led_all_off();
	fcall	_led_all_off
	line	40
	
i1l7931:	
;key.c: 40: PAHCON &= ~(0x01 << 0);
	bcf	(146)^080h+(0/8),(0)&7	;volatile
	line	41
	
i1l7933:	
;key.c: 41: TRISA |= (0x01 << 0);
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	54
	
i1l7935:	
;key.c: 53: {
;key.c: 54: u8 settle_cnt = ((u8)100);
	movlw	(064h)
	movwf	(key_scan@settle_cnt)
	line	55
;key.c: 55: while (settle_cnt--) {
	goto	i1l7937
	
i1l4508:	
	line	56
# 56 "D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\key.c"
NOP ;#
psect	text689
	line	55
	
i1l7937:	
	decf	(key_scan@settle_cnt),f
	movf	((key_scan@settle_cnt)),w
	xorlw	0FFh
	skipz
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l4508
u200_20:
	
i1l4509:	
	line	60
;key.c: 57: }
;key.c: 58: }
;key.c: 60: if (1 == PA0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l4510
u201_20:
	line	61
	
i1l7939:	
;key.c: 61: cur_key_id = KEY_ID_NONE;
	clrf	(_cur_key_id)	;volatile
	line	62
;key.c: 62: } else {
	goto	i1l7943
	
i1l4510:	
	line	64
;key.c: 64: cur_key_id = KEY_ID_VALID;
	clrf	(_cur_key_id)	;volatile
	incf	(_cur_key_id),f	;volatile
	line	66
	
i1l7941:	
;key.c: 66: pwr_off_cnt = 0;
	clrf	(_pwr_off_cnt)	;volatile
	clrf	(_pwr_off_cnt+1)	;volatile
	line	67
;key.c: 67: into_low_power_cnt = 0;
	clrf	(_into_low_power_cnt)	;volatile
	line	70
	
i1l7943:	
;key.c: 68: }
;key.c: 70: if (cur_key_id != filter_key_id) {
	movf	(_cur_key_id),w	;volatile
	xorwf	(_filter_key_id),w	;volatile
	skipnz
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l7951
u202_20:
	line	72
	
i1l7945:	
;key.c: 72: filter_cnt = 0;
	clrf	(_filter_cnt)	;volatile
	line	73
	
i1l7947:	
;key.c: 73: filter_key_id = cur_key_id;
	movf	(_cur_key_id),w	;volatile
	movwf	(_filter_key_id)	;volatile
	goto	i1l4506
	line	77
	
i1l7951:	
;key.c: 75: }
;key.c: 77: if (filter_cnt < (3)) {
	movlw	(03h)
	subwf	(_filter_cnt),w	;volatile
	skipnc
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l7957
u203_20:
	line	80
	
i1l7953:	
;key.c: 80: filter_cnt++;
	incf	(_filter_cnt),f	;volatile
	goto	i1l4506
	line	85
	
i1l7957:	
;key.c: 82: }
;key.c: 85: if (last_key_id != cur_key_id) {
	movf	(_last_key_id),w	;volatile
	xorwf	(_cur_key_id),w	;volatile
	skipnz
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l7989
u204_20:
	line	88
	
i1l7959:	
;key.c: 88: if (cur_key_id == KEY_ID_NONE) {
	movf	(_cur_key_id),f
	skipz	;volatile
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l7963
u205_20:
	line	90
	
i1l7961:	
;key.c: 90: click_delay_cnt = 0;
	clrf	(_click_delay_cnt)	;volatile
	line	91
;key.c: 91: } else {
	goto	i1l7967
	line	94
	
i1l7963:	
;key.c: 94: press_cnt = 0;
	clrf	(_press_cnt)	;volatile
	line	95
	
i1l7965:	
;key.c: 95: click_cnt++;
	incf	(_click_cnt),f	;volatile
	line	98
	
i1l7967:	
;key.c: 96: }
;key.c: 98: if (click_cnt == 2) {
	movf	(_click_cnt),w	;volatile
	xorlw	02h
	skipz
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l8005
u206_20:
	line	102
	
i1l7969:	
;key.c: 102: flag_is_dev_working = !flag_is_dev_working;
	movlw	1<<((_flag_is_dev_working)&7)
	xorwf	((_flag_is_dev_working)/8),f
	line	104
	
i1l7971:	
;key.c: 104: if (flag_is_dev_working) {
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l7977
u207_20:
	line	105
	
i1l7973:	
;key.c: 105: pen_pwr_on();
	fcall	_pen_pwr_on
	line	107
	
i1l7975:	
;key.c: 107: led_sta_refresh_cnt = ((u8)(500 / 100));
	movlw	(05h)
	movwf	(_led_sta_refresh_cnt)	;volatile
	line	108
;key.c: 108: } else {
	goto	i1l7987
	line	110
	
i1l7977:	
;key.c: 110: pen_pwr_off();
	fcall	_pen_pwr_off
	line	114
	
i1l7979:	
;key.c: 114: flag_led_1_on = 0;
	bcf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	115
	
i1l7981:	
;key.c: 115: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	116
	
i1l7983:	
;key.c: 116: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	117
	
i1l7985:	
;key.c: 117: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	126
	
i1l7987:	
;key.c: 123: }
;key.c: 126: click_cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_click_cnt)	;volatile
	goto	i1l8005
	line	127
	
i1l4517:	
	line	128
;key.c: 127: }
;key.c: 128: } else {
	goto	i1l8005
	line	133
	
i1l7989:	
;key.c: 133: if (cur_key_id == KEY_ID_NONE) {
	movf	(_cur_key_id),f
	skipz	;volatile
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l8001
u208_20:
	line	134
	
i1l7991:	
;key.c: 134: if (click_cnt > 0) {
	movf	(_click_cnt),w	;volatile
	skipz
	goto	u209_20
	goto	i1l8005
u209_20:
	line	135
	
i1l7993:	
;key.c: 135: if (click_delay_cnt >= ((u8)((u16)300 / 10))) {
	movlw	(01Eh)
	subwf	(_click_delay_cnt),w	;volatile
	skipc
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l7997
u210_20:
	goto	i1l7987
	line	139
	
i1l7997:	
;key.c: 139: if (click_delay_cnt < 255) {
	movf	(_click_delay_cnt),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l4517
u211_20:
	line	141
	
i1l7999:	
;key.c: 141: click_delay_cnt++;
	incf	(_click_delay_cnt),f	;volatile
	goto	i1l8005
	line	149
	
i1l8001:	
;key.c: 149: if (press_cnt < 255) {
	movf	(_press_cnt),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l8005
u212_20:
	line	150
	
i1l8003:	
;key.c: 150: press_cnt++;
	incf	(_press_cnt),f	;volatile
	line	155
	
i1l8005:	
;key.c: 151: }
;key.c: 152: }
;key.c: 153: }
;key.c: 155: last_key_id = cur_key_id;
	movf	(_cur_key_id),w	;volatile
	movwf	(_last_key_id)	;volatile
	line	156
	
i1l4506:	
	return
	opt stack 0
GLOBAL	__end_of_key_scan
	__end_of_key_scan:
;; =============== function _key_scan ends ============

	signat	_key_scan,88
	global	_led_refresh
psect	text690,local,class=CODE,delta=2
global __ptext690
__ptext690:

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
psect	text690
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	79
	global	__size_of_led_refresh
	__size_of_led_refresh	equ	__end_of_led_refresh-_led_refresh
	
_led_refresh:	
	opt	stack 3
; Regs used in _led_refresh: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	82
	
i1l7891:	
;led.c: 80: static volatile u8 sta = 0;
;led.c: 82: if (0 == flag_is_led_show_enable) {
	btfsc	(_flag_is_led_show_enable/8),(_flag_is_led_show_enable)&7
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l7895
u193_20:
	goto	i1l1865
	line	86
	
i1l7895:	
;led.c: 84: }
;led.c: 86: led_all_off();
	fcall	_led_all_off
	line	88
;led.c: 88: switch (sta) {
	goto	i1l7907
	line	89
;led.c: 89: case 0:
	
i1l1867:	
	line	90
;led.c: 90: if (flag_led_1_on) {
	btfss	(_flag_led_1_on/8),(_flag_led_1_on)&7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l7909
u194_20:
	line	91
	
i1l7897:	
;led.c: 91: led1_on();
	fcall	_led1_on
	goto	i1l7909
	line	95
;led.c: 95: case 1:
	
i1l1870:	
	line	96
;led.c: 96: if (flag_led_2_on) {
	btfss	(_flag_led_2_on/8),(_flag_led_2_on)&7
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l7909
u195_20:
	line	97
	
i1l7899:	
;led.c: 97: led2_on();
	fcall	_led2_on
	goto	i1l7909
	line	101
;led.c: 101: case 2:
	
i1l1872:	
	line	102
;led.c: 102: if (flag_led_3_on) {
	btfss	(_flag_led_3_on/8),(_flag_led_3_on)&7
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l7909
u196_20:
	line	103
	
i1l7901:	
;led.c: 103: led3_on();
	fcall	_led3_on
	goto	i1l7909
	line	107
;led.c: 107: case 3:
	
i1l1874:	
	line	108
;led.c: 108: if (flag_led_4_on) {
	btfss	(_flag_led_4_on/8),(_flag_led_4_on)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l7909
u197_20:
	line	109
	
i1l7903:	
;led.c: 109: led4_on();
	fcall	_led4_on
	goto	i1l7909
	line	88
	
i1l7907:	
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
goto i1l7909
movlw high(i1S8163)
movwf pclath
	movlw low(i1S8163)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S8163:
	ljmp	i1l1867
	ljmp	i1l1870
	ljmp	i1l1872
	ljmp	i1l1874
psect	text690

	line	118
	
i1l7909:	
;led.c: 118: sta++;
	incf	(led_refresh@sta),f	;volatile
	line	119
	
i1l7911:	
;led.c: 119: if (sta >= 4) {
	movlw	(04h)
	subwf	(led_refresh@sta),w	;volatile
	skipc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l1865
u198_20:
	line	120
	
i1l7913:	
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
psect	text691,local,class=CODE,delta=2
global __ptext691
__ptext691:

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
psect	text691
	file	"D:\project\²Î¿¼ÎÄµµºÍ×ÊÁÏ\ËÕÖÝ»ªÐ¾Î¢µç×Ó\HSIDE_v2.1.16_2026.07.07\PICC\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 4
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
i1l8121:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
i1l6312:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l8125
u242_20:
	line	8
	
i1l8123:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u243_21
	addwf	(___lmul@product+1),f
u243_21:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u243_22
	addwf	(___lmul@product+2),f
u243_22:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u243_23
	addwf	(___lmul@product+3),f
u243_23:

	line	9
	
i1l8125:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
i1l8127:	
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
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l6312
u244_20:
	line	12
	
i1l8129:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
i1l6315:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	_pen_pwr_on
psect	text692,local,class=CODE,delta=2
global __ptext692
__ptext692:

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
psect	text692
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\pen_pwr_ctl.c"
	line	5
	global	__size_of_pen_pwr_on
	__size_of_pen_pwr_on	equ	__end_of_pen_pwr_on-_pen_pwr_on
	
_pen_pwr_on:	
	opt	stack 3
; Regs used in _pen_pwr_on: []
	line	6
	
i1l8119:	
;pen_pwr_ctl.c: 6: TRISA &= ~(0x01 << 6);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(6/8),(6)&7	;volatile
	line	7
;pen_pwr_ctl.c: 7: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(46/8),(46)&7
	line	8
	
i1l5376:	
	return
	opt stack 0
GLOBAL	__end_of_pen_pwr_on
	__end_of_pen_pwr_on:
;; =============== function _pen_pwr_on ends ============

	signat	_pen_pwr_on,88
	global	_led4_on
psect	text693,local,class=CODE,delta=2
global __ptext693
__ptext693:

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
psect	text693
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	62
	global	__size_of_led4_on
	__size_of_led4_on	equ	__end_of_led4_on-_led4_on
	
_led4_on:	
	opt	stack 3
; Regs used in _led4_on: []
	line	64
	
i1l8117:	
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
psect	text694,local,class=CODE,delta=2
global __ptext694
__ptext694:

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
psect	text694
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	52
	global	__size_of_led3_on
	__size_of_led3_on	equ	__end_of_led3_on-_led3_on
	
_led3_on:	
	opt	stack 3
; Regs used in _led3_on: []
	line	54
	
i1l8115:	
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
psect	text695,local,class=CODE,delta=2
global __ptext695
__ptext695:

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
psect	text695
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	42
	global	__size_of_led2_on
	__size_of_led2_on	equ	__end_of_led2_on-_led2_on
	
_led2_on:	
	opt	stack 3
; Regs used in _led2_on: []
	line	44
	
i1l8113:	
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
psect	text696,local,class=CODE,delta=2
global __ptext696
__ptext696:

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
psect	text696
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	30
	global	__size_of_led1_on
	__size_of_led1_on	equ	__end_of_led1_on-_led1_on
	
_led1_on:	
	opt	stack 3
; Regs used in _led1_on: []
	line	32
	
i1l8111:	
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
psect	text697,local,class=CODE,delta=2
global __ptext697
__ptext697:

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
psect	text697
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	179
	global	__size_of_led_status_handle
	__size_of_led_status_handle	equ	__end_of_led_status_handle-_led_status_handle
	
_led_status_handle:	
	opt	stack 4
; Regs used in _led_status_handle: [wreg+status,2+status,0]
	line	180
	
i1l8009:	
;led.c: 180: led_sta_refresh_cnt++;
	incf	(_led_sta_refresh_cnt),f	;volatile
	line	181
	
i1l8011:	
;led.c: 181: if (led_sta_refresh_cnt >= ((u8)(500 / 100))) {
	movlw	(05h)
	subwf	(_led_sta_refresh_cnt),w	;volatile
	skipc
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l1880
u213_20:
	line	182
	
i1l8013:	
;led.c: 182: led_sta_refresh_cnt = 0;
	clrf	(_led_sta_refresh_cnt)	;volatile
	line	183
	
i1l8015:	
;led.c: 183: if (flag_is_in_charging) {
	btfss	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l1881
u214_20:
	line	187
	
i1l8017:	
;led.c: 187: if (flag_is_charge_begin) {
	btfss	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l8055
u215_20:
	line	189
	
i1l8019:	
;led.c: 189: if (bat_vol < (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l8023
u216_20:
	line	191
	
i1l8021:	
;led.c: 191: flag_is_charge_begin = 0;
	bcf	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	line	192
;led.c: 192: } else if (bat_vol >= (3670) && charge_anim_phase == 0) {
	goto	i1l1880
	
i1l8023:	
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l8029
u217_20:
	
i1l8025:	
	movf	(_charge_anim_phase),f
	skipz	;volatile
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l8029
u218_20:
	line	193
	
i1l8027:	
;led.c: 193: flag_led_1_on = 1;
	bsf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	194
;led.c: 194: charge_anim_phase = 1;
	clrf	(_charge_anim_phase)	;volatile
	incf	(_charge_anim_phase),f	;volatile
	line	195
;led.c: 195: } else if (bat_vol >= (3670) && charge_anim_phase == 1) {
	goto	i1l1880
	
i1l8029:	
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l8037
u219_20:
	
i1l8031:	
	decf	(_charge_anim_phase),w	;volatile
	skipz
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l8037
u220_20:
	line	196
	
i1l8033:	
;led.c: 196: flag_led_2_on = 1;
	bsf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	197
	
i1l8035:	
;led.c: 197: charge_anim_phase = 2;
	movlw	(02h)
	movwf	(_charge_anim_phase)	;volatile
	line	198
;led.c: 198: } else if (bat_vol >= (3770) && charge_anim_phase == 2) {
	goto	i1l1880
	
i1l8037:	
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l8045
u221_20:
	
i1l8039:	
	movf	(_charge_anim_phase),w	;volatile
	xorlw	02h
	skipz
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l8045
u222_20:
	line	199
	
i1l8041:	
;led.c: 199: flag_led_3_on = 1;
	bsf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	200
	
i1l8043:	
;led.c: 200: charge_anim_phase = 3;
	movlw	(03h)
	movwf	(_charge_anim_phase)	;volatile
	line	201
;led.c: 201: } else if (bat_vol >= (3870) && charge_anim_phase == 3) {
	goto	i1l1880
	
i1l8045:	
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l1891
u223_20:
	
i1l8047:	
	movf	(_charge_anim_phase),w	;volatile
	xorlw	03h
	skipz
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l1891
u224_20:
	line	202
	
i1l8049:	
;led.c: 202: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	203
	
i1l8051:	
;led.c: 203: charge_anim_phase = 4;
	movlw	(04h)
	movwf	(_charge_anim_phase)	;volatile
	line	204
;led.c: 204: } else {
	goto	i1l1880
	
i1l1891:	
	line	205
;led.c: 205: flag_is_charge_begin = 0;
	bcf	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	line	210
	
i1l8053:	
;led.c: 210: led_sta_refresh_cnt = ((u8)(500 / 100));
	movlw	(05h)
	movwf	(_led_sta_refresh_cnt)	;volatile
	goto	i1l1880
	line	215
	
i1l8055:	
;led.c: 215: if (bat_vol < (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l8059
u225_20:
	line	216
	
i1l8057:	
;led.c: 216: flag_led_1_on = !flag_led_1_on;
	movlw	1<<((_flag_led_1_on)&7)
	xorwf	((_flag_led_1_on)/8),f
	line	217
;led.c: 217: } else if (bat_vol < (3770)) {
	goto	i1l1895
	
i1l8059:	
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l8063
u226_20:
	line	218
	
i1l8061:	
;led.c: 218: flag_led_2_on = !flag_led_2_on;
	movlw	1<<((_flag_led_2_on)&7)
	xorwf	((_flag_led_2_on)/8),f
	line	219
;led.c: 219: } else if (bat_vol < (3870)) {
	goto	i1l1895
	
i1l8063:	
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l8067
u227_20:
	line	220
	
i1l8065:	
;led.c: 220: flag_led_3_on = !flag_led_3_on;
	movlw	1<<((_flag_led_3_on)&7)
	xorwf	((_flag_led_3_on)/8),f
	line	221
;led.c: 221: } else {
	goto	i1l1895
	line	222
	
i1l8067:	
;led.c: 222: flag_led_4_on = !flag_led_4_on;
	movlw	1<<((_flag_led_4_on)&7)
	xorwf	((_flag_led_4_on)/8),f
	line	223
	
i1l1895:	
	line	225
;led.c: 223: }
;led.c: 225: if (bat_vol >= (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l8071
u228_20:
	line	226
	
i1l8069:	
;led.c: 226: flag_led_1_on = 1;
	bsf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	229
	
i1l8071:	
;led.c: 227: }
;led.c: 229: if (bat_vol >= (3770)) {
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l8075
u229_20:
	line	230
	
i1l8073:	
;led.c: 230: flag_led_2_on = 1;
	bsf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	233
	
i1l8075:	
;led.c: 231: }
;led.c: 233: if (bat_vol >= (3870)) {
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l8079
u230_20:
	line	234
	
i1l8077:	
;led.c: 234: flag_led_3_on = 1;
	bsf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	237
	
i1l8079:	
;led.c: 235: }
;led.c: 237: if (bat_vol >= (4200)) {
	movlw	high(01068h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01068h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l1880
u231_20:
	line	238
	
i1l8081:	
;led.c: 238: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	goto	i1l1880
	line	241
	
i1l1881:	
	btfss	(_flag_is_dev_working/8),(_flag_is_dev_working)&7
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l1905
u232_20:
	line	244
	
i1l8083:	
;led.c: 244: if (bat_vol < (3200)) {
	movlw	high(0C80h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0C80h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipnc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l1906
u233_20:
	line	246
	
i1l8085:	
;led.c: 246: flag_led_1_on = !flag_led_1_on;
	movlw	1<<((_flag_led_1_on)&7)
	xorwf	((_flag_led_1_on)/8),f
	line	247
;led.c: 247: } else {
	goto	i1l8087
	
i1l1906:	
	line	248
;led.c: 248: flag_led_1_on = 1;
	bsf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	251
	
i1l8087:	
;led.c: 249: }
;led.c: 251: if (bat_vol >= (3670)) {
	movlw	high(0E56h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0E56h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l1908
u234_20:
	line	252
	
i1l8089:	
;led.c: 252: flag_led_2_on = 1;
	bsf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	253
;led.c: 253: } else {
	goto	i1l8091
	
i1l1908:	
	line	254
;led.c: 254: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	257
	
i1l8091:	
;led.c: 255: }
;led.c: 257: if (bat_vol >= (3770)) {
	movlw	high(0EBAh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0EBAh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l1910
u235_20:
	line	258
	
i1l8093:	
;led.c: 258: flag_led_3_on = 1;
	bsf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	259
;led.c: 259: } else {
	goto	i1l8095
	
i1l1910:	
	line	260
;led.c: 260: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	263
	
i1l8095:	
;led.c: 261: }
;led.c: 263: if (bat_vol >= (3870)) {
	movlw	high(0F1Eh)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(0F1Eh)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l1912
u236_20:
	goto	i1l8081
	line	265
	
i1l1912:	
	line	266
;led.c: 266: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	goto	i1l1880
	line	268
	
i1l1905:	
	line	270
;led.c: 270: flag_led_1_on = 0;
	bcf	(_flag_led_1_on/8),(_flag_led_1_on)&7
	line	271
;led.c: 271: flag_led_2_on = 0;
	bcf	(_flag_led_2_on/8),(_flag_led_2_on)&7
	line	272
;led.c: 272: flag_led_3_on = 0;
	bcf	(_flag_led_3_on/8),(_flag_led_3_on)&7
	line	273
;led.c: 273: flag_led_4_on = 0;
	bcf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	275
	
i1l1880:	
	line	277
;led.c: 274: }
;led.c: 275: }
;led.c: 277: if (flag_is_in_charging && 0 == flag_is_charge_begin) {
	btfss	(_flag_is_in_charging/8),(_flag_is_in_charging)&7
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l1920
u237_20:
	
i1l8099:	
	btfsc	(_flag_is_charge_begin/8),(_flag_is_charge_begin)&7
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l1920
u238_20:
	line	279
	
i1l8101:	
;led.c: 279: if (bat_vol >= (4200)) {
	movlw	high(01068h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01068h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l8105
u239_20:
	line	280
	
i1l8103:	
;led.c: 280: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	283
	
i1l8105:	
;led.c: 281: }
;led.c: 283: if (bat_vol >= (4100)) {
	movlw	high(01004h)
	subwf	(_bat_vol+1),w	;volatile
	movlw	low(01004h)
	skipnz
	subwf	(_bat_vol),w	;volatile
	skipc
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l1920
u240_20:
	line	284
	
i1l8107:	
;led.c: 284: if (charge_fully_cnt < ((u16)((u32)13 * 60 * 1000 / 100))) {
	movlw	high(01E78h)
	subwf	(_charge_fully_cnt+1),w	;volatile
	movlw	low(01E78h)
	skipnz
	subwf	(_charge_fully_cnt),w	;volatile
	skipnc
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l1918
u241_20:
	line	285
	
i1l8109:	
;led.c: 285: charge_fully_cnt++;
	incf	(_charge_fully_cnt),f	;volatile
	skipnz
	incf	(_charge_fully_cnt+1),f	;volatile
	line	286
;led.c: 286: } else {
	goto	i1l1920
	
i1l1918:	
	line	287
;led.c: 287: flag_led_4_on = 1;
	bsf	(_flag_led_4_on/8),(_flag_led_4_on)&7
	line	291
	
i1l1920:	
	return
	opt stack 0
GLOBAL	__end_of_led_status_handle
	__end_of_led_status_handle:
;; =============== function _led_status_handle ends ============

	signat	_led_status_handle,88
	global	_led_all_off
psect	text698,local,class=CODE,delta=2
global __ptext698
__ptext698:

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
psect	text698
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\led.c"
	line	13
	global	__size_of_led_all_off
	__size_of_led_all_off	equ	__end_of_led_all_off-_led_all_off
	
_led_all_off:	
	opt	stack 4
; Regs used in _led_all_off: [wreg+status,2+status,0]
	line	17
	
i1l8007:	
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
psect	text699,local,class=CODE,delta=2
global __ptext699
__ptext699:

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
psect	text699
	file	"D:\project\2026-09-04-ÆÕÁè-µçÈÝ±ÊÖ÷¿Ø-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\pen_pwr_ctl.c"
	line	11
	global	__size_of_pen_pwr_off
	__size_of_pen_pwr_off	equ	__end_of_pen_pwr_off-_pen_pwr_off
	
_pen_pwr_off:	
	opt	stack 3
; Regs used in _pen_pwr_off: []
	line	12
	
i1l7921:	
;pen_pwr_ctl.c: 12: PAHCON |= (0x01 << 6);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(146)^080h+(6/8),(6)&7	;volatile
	line	13
;pen_pwr_ctl.c: 13: PADCON |= (0x01 << 6);
	bsf	(147)^080h+(6/8),(6)&7	;volatile
	line	14
;pen_pwr_ctl.c: 14: TRISA |= (0x01 << 6);
	bsf	(133)^080h+(6/8),(6)&7	;volatile
	line	15
	
i1l5379:	
	return
	opt stack 0
GLOBAL	__end_of_pen_pwr_off
	__end_of_pen_pwr_off:
;; =============== function _pen_pwr_off ends ============

	signat	_pen_pwr_off,88
psect	text700,local,class=CODE,delta=2
global __ptext700
__ptext700:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
