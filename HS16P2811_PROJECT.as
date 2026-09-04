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
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_CLR_RAM_EveryBank
	FNCALL	_main,_timer1_init
	FNCALL	_main,_timer3_init
	FNCALL	_main,_delay_ms
	FNROOT	_main
	FNCALL	intlevel1,_myIsr
	global	intlevel1
	FNROOT	intlevel1
	global	led_refresh@sta
	global	_flag_is_led_show_enable
	global	_flag_led_1_on
	global	_flag_led_2_on
	global	_flag_led_3_on
	global	_flag_led_4_on
	global	_FSR
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
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
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_T1IF
_T1IF	set	96
	global	_T3IF
_T3IF	set	105
	global	_OPTIONR
_OPTIONR	set	129
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

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
led_refresh@sta:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_timer1_init
?_timer1_init:	; 0 bytes @ 0x0
	global	?_timer3_init
?_timer3_init:	; 0 bytes @ 0x0
	global	?_System_Init
?_System_Init:	; 0 bytes @ 0x0
	global	?_CLR_RAM_EveryBank
?_CLR_RAM_EveryBank:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_myIsr
?_myIsr:	; 0 bytes @ 0x0
	global	??_myIsr
??_myIsr:	; 0 bytes @ 0x0
	ds	2
	global	??_timer1_init
??_timer1_init:	; 0 bytes @ 0x2
	global	??_timer3_init
??_timer3_init:	; 0 bytes @ 0x2
	global	??_System_Init
??_System_Init:	; 0 bytes @ 0x2
	global	??_CLR_RAM_EveryBank
??_CLR_RAM_EveryBank:	; 0 bytes @ 0x2
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x2
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x2
	global	delay_ms@xms
delay_ms@xms:	; 4 bytes @ 0x2
	ds	4
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x6
	ds	4
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80      0       0
;; BANK1           32      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay_ms
;;
;; Critical Paths under _myIsr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0      30
;;                        _System_Init
;;                          _GPIO_Init
;;                  _CLR_RAM_EveryBank
;;                        _timer1_init
;;                        _timer3_init
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _timer3_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _timer1_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay_ms                                            10     6      4      30
;;                                              2 COMMON    10     6      4
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _CLR_RAM_EveryBank                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_Init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _myIsr                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_Init
;;   _GPIO_Init
;;   _CLR_RAM_EveryBank
;;   _timer1_init
;;   _timer3_init
;;   _delay_ms
;;
;; _myIsr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            20      0       0       6        0.0%
;;BANK1               20      0       0       7        0.0%
;;DATA                 0      0       F       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 192 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_System_Init
;;		_GPIO_Init
;;		_CLR_RAM_EveryBank
;;		_timer1_init
;;		_timer3_init
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	192
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	193
	
l5639:	
;main.c: 193: System_Init();
	fcall	_System_Init
	line	194
	
l5641:	
;main.c: 194: GPIO_Init();
	fcall	_GPIO_Init
	line	195
	
l5643:	
;main.c: 195: CLR_RAM_EveryBank();
	fcall	_CLR_RAM_EveryBank
	line	198
	
l5645:	
;main.c: 198: PAHCON &= ~(0x01 << 0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(146)^080h+(0/8),(0)&7	;volatile
	line	199
	
l5647:	
;main.c: 199: TRISA |= (0x01 << 0);
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	201
	
l5649:	
;main.c: 201: TRISA |= (0x01 << 6);
	bsf	(133)^080h+(6/8),(6)&7	;volatile
	line	203
	
l5651:	
;main.c: 203: TRISA |= (0x01 << 7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	205
	
l5653:	
;main.c: 205: TRISA |= (0x01 << 5);
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	207
	
l5655:	
;main.c: 207: timer1_init();
	fcall	_timer1_init
	line	208
	
l5657:	
;main.c: 208: timer3_init();
	fcall	_timer3_init
	line	209
	
l5659:	
;main.c: 209: delay_ms(10);
	movlw	0Ah
	movwf	(?_delay_ms)
	clrf	(?_delay_ms+1)
	clrf	(?_delay_ms+2)
	clrf	(?_delay_ms+3)

	fcall	_delay_ms
	line	212
	
l5661:	
# 212 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
clrwdt ;#
psect	maintext
	goto	l5661
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	214
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer3_init
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _timer3_init *****************
;; Defined at:
;;		line 4 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text101
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer3.c"
	line	4
	global	__size_of_timer3_init
	__size_of_timer3_init	equ	__end_of_timer3_init-_timer3_init
	
_timer3_init:	
	opt	stack 6
; Regs used in _timer3_init: [wreg+status,2]
	line	5
	
l5609:	
;timer3.c: 5: T3C0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(272)^0100h	;volatile
	line	6
;timer3.c: 6: T3C2 = 0;
	clrf	(281)^0100h	;volatile
	line	7
	
l5611:	
;timer3.c: 7: T3TL = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) % 256;
	movlw	(017h)
	movwf	(274)^0100h	;volatile
	line	8
	
l5613:	
;timer3.c: 8: T3TH = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) / 256;
	movlw	(0FCh)
	movwf	(275)^0100h	;volatile
	line	9
	
l5615:	
;timer3.c: 9: T3C1 = TIMER3_DIV_4_REG_VAL;
	movlw	(05h)
	movwf	(273)^0100h	;volatile
	line	11
	
l5617:	
;timer3.c: 11: T3REN = 1;
	bsf	(2183/8)^0100h,(2183)&7
	line	12
	
l5619:	
;timer3.c: 12: T3IF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(105/8),(105)&7
	line	13
	
l5621:	
;timer3.c: 13: T3IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1129/8)^080h,(1129)&7
	line	14
	
l5623:	
;timer3.c: 14: PEIE = 1;
	bsf	(94/8),(94)&7
	line	15
	
l5625:	
;timer3.c: 15: GIE = 1;
	bsf	(95/8),(95)&7
	line	16
	
l3469:	
	return
	opt stack 0
GLOBAL	__end_of_timer3_init
	__end_of_timer3_init:
;; =============== function _timer3_init ends ============

	signat	_timer3_init,88
	global	_timer1_init
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _timer1_init *****************
;; Defined at:
;;		line 4 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer1.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\user_code\timer1.c"
	line	4
	global	__size_of_timer1_init
	__size_of_timer1_init	equ	__end_of_timer1_init-_timer1_init
	
_timer1_init:	
	opt	stack 6
; Regs used in _timer1_init: [wreg]
	line	6
	
l5597:	
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
	
l5599:	
;timer1.c: 10: T1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	11
	
l5601:	
;timer1.c: 11: T1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	12
	
l5603:	
;timer1.c: 12: PEIE = 1;
	bsf	(94/8),(94)&7
	line	13
	
l5605:	
;timer1.c: 13: T1REN = 1;
	bsf	(1240/8)^080h,(1240)&7
	line	14
	
l5607:	
;timer1.c: 14: GIE = 1;
	bsf	(95/8),(95)&7
	line	15
	
l2620:	
	return
	opt stack 0
GLOBAL	__end_of_timer1_init
	__end_of_timer1_init:
;; =============== function _timer1_init ends ============

	signat	_timer1_init,88
	global	_delay_ms
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 176 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;  xms             4    2[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  i               2   10[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         2       0       0
;;      Temps:          4       0       0
;;      Totals:        10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text103
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	176
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 6
; Regs used in _delay_ms: [wreg]
	line	177
	
l5589:	
;main.c: 177: while (xms) {
	goto	l862
	line	181
	
l5591:	
;main.c: 181: u16 i = 510;
	movlw	low(01FEh)
	movwf	(delay_ms@i)
	movlw	high(01FEh)
	movwf	((delay_ms@i))+1
	line	182
;main.c: 182: while (i--) {
	goto	l5593
	
l865:	
	line	183
# 183 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
NOP ;#
psect	text103
	line	182
	
l5593:	
	movlw	low(01h)
	subwf	(delay_ms@i),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@i+1),f
	subwf	(delay_ms@i+1),f
	incf	((delay_ms@i)),w
	skipnz
	incf	((delay_ms@i+1)),w

	skipz
	goto	u11
	goto	u10
u11:
	goto	l865
u10:
	line	185
	
l5595:	
;main.c: 184: }
;main.c: 185: xms--;
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
	goto	u25
	goto	u26
u25:
	subwf	(delay_ms@xms+1),f
u26:
	movf	2+(??_delay_ms+0)+0,w
	skipc
	incfsz	2+(??_delay_ms+0)+0,w
	goto	u27
	goto	u28
u27:
	subwf	(delay_ms@xms+2),f
u28:
	movf	3+(??_delay_ms+0)+0,w
	skipc
	incfsz	3+(??_delay_ms+0)+0,w
	goto	u29
	goto	u20
u29:
	subwf	(delay_ms@xms+3),f
u20:

	line	186
	
l862:	
	line	177
	movf	(delay_ms@xms+3),w
	iorwf	(delay_ms@xms+2),w
	iorwf	(delay_ms@xms+1),w
	iorwf	(delay_ms@xms),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l5591
u30:
	line	187
	
l868:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_GPIO_Init
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 111 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text104
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	111
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: [wreg+status,2]
	line	113
	
l5579:	
;main.c: 113: PORTA = 0b00000000;
	clrf	(5)	;volatile
	line	114
;main.c: 114: TRISA = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	115
;main.c: 115: PAODCON = 0b00000000;
	clrf	(149)^080h	;volatile
	line	116
	
l5581:	
;main.c: 116: PAHCON = 0b11111111;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	117
	
l5583:	
;main.c: 117: PADCON = 0b11111111;
	movlw	(0FFh)
	movwf	(147)^080h	;volatile
	line	118
;main.c: 118: WUACON = 0b00000000;
	clrf	(143)^080h	;volatile
	line	121
;main.c: 121: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	122
;main.c: 122: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	123
	
l5585:	
;main.c: 123: PCDCON = 0b11111111;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	124
	
l5587:	
;main.c: 124: PCHCON = 0b11111111;
	movlw	(0FFh)
	movwf	(18)	;volatile
	line	125
	
l859:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_CLR_RAM_EveryBank
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:

;; *************** function _CLR_RAM_EveryBank *****************
;; Defined at:
;;		line 73 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text105
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	73
	global	__size_of_CLR_RAM_EveryBank
	__size_of_CLR_RAM_EveryBank	equ	__end_of_CLR_RAM_EveryBank-_CLR_RAM_EveryBank
	
_CLR_RAM_EveryBank:	
	opt	stack 6
; Regs used in _CLR_RAM_EveryBank: [wreg+status,2+status,0]
	line	74
	
l5543:	
;main.c: 74: STATUS &= 0x1F;
	movlw	(01Fh)
	andwf	(3),f	;volatile
	line	76
	
l5545:	
# 76 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVLW 0x5F; ;#
psect	text105
	line	77
	
l5547:	
# 77 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVWF 0x20; ;#
psect	text105
	line	78
	
l5549:	
# 78 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVLW 0x7F; ;#
psect	text105
	line	79
	
l5551:	
# 79 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    MOVWF _FSR, F; ;#
psect	text105
	line	80
	
l5553:	
# 80 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
CLR_RAM_LOOP: ;#
psect	text105
	line	81
	
l5555:	
# 81 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CALL CLR_RAM_Demo; ;#
psect	text105
	line	83
	
l5557:	
# 83 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    DECF _FSR, F; ;#
psect	text105
	line	84
	
l5559:	
# 84 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    DECFSZ 0X20, F; ;#
psect	text105
	line	85
	
l5561:	
# 85 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    GOTO CLR_RAM_LOOP; ;#
psect	text105
	line	87
	
l5563:	
# 87 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CALL CLR_RAM_Demo; ;#
psect	text105
	line	88
	
l5565:	
# 88 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    RETURN; ;#
psect	text105
	line	90
	
l5567:	
# 90 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
CLR_RAM_Demo: ;#
psect	text105
	line	93
	
l5569:	
# 93 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
            BSF _FSR, 7; ;#
psect	text105
	line	94
	
l5571:	
# 94 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CLRF _INDF; ;#
psect	text105
	line	98
	
l5573:	
# 98 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
            BCF _FSR, 7; ;#
psect	text105
	line	99
	
l5575:	
# 99 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    CLRF _INDF; ;#
psect	text105
	line	101
	
l5577:	
# 101 "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
    RETURN; ;#
psect	text105
	line	103
	
l856:	
	return
	opt stack 0
GLOBAL	__end_of_CLR_RAM_EveryBank
	__end_of_CLR_RAM_EveryBank:
;; =============== function _CLR_RAM_EveryBank ends ============

	signat	_CLR_RAM_EveryBank,88
	global	_System_Init
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:

;; *************** function _System_Init *****************
;; Defined at:
;;		line 25 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text106
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	25
	global	__size_of_System_Init
	__size_of_System_Init	equ	__end_of_System_Init-_System_Init
	
_System_Init:	
	opt	stack 6
; Regs used in _System_Init: [status,2]
	line	26
	
l5539:	
;main.c: 26: OPTIONR = 0b000000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	29
;main.c: 29: INTCON = 0b00000000;
	clrf	(11)	;volatile
	line	37
	
l5541:	
;main.c: 37: WDTE = 1;
	bsf	(1143/8)^080h,(1143)&7
	line	39
;main.c: 39: PIE1 = 0B00000000;
	clrf	(140)^080h	;volatile
	line	43
;main.c: 43: PIR1 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	47
;main.c: 47: PIE2 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(141)^080h	;volatile
	line	52
;main.c: 52: PIR2 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(13)	;volatile
	line	56
	
l853:	
	return
	opt stack 0
GLOBAL	__end_of_System_Init
	__end_of_System_Init:
;; =============== function _System_Init ends ============

	signat	_System_Init,88
	global	_myIsr
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function _myIsr *****************
;; Defined at:
;;		line 221 in file "D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text107
	file	"D:\project\∆’¡Ë-µÁ»›± ÷˜øÿ-P00X-XX-HS16P2811-SOP8\code\project-2026-09-04-HS16P2811-SOP8\main.c"
	line	221
	global	__size_of_myIsr
	__size_of_myIsr	equ	__end_of_myIsr-_myIsr
	
_myIsr:	
	opt	stack 6
; Regs used in _myIsr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_myIsr+0)
	movf	pclath,w
	movwf	(??_myIsr+1)
	ljmp	_myIsr
psect	text107
	line	223
	
i1l5627:	
;main.c: 223: if (T1IF) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l5633
u4_20:
	line	225
	
i1l5629:	
;main.c: 225: T1IF = 0;
	bcf	(96/8),(96)&7
	line	226
	
i1l5631:	
;main.c: 226: T1TL = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) % 256;
	movlw	(037h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	227
;main.c: 227: T1TH = (0xFFFF - ((u16)(((16000000UL) / 2) / (4) / ((u16)10000)))) / 256;
	movlw	(0FFh)
	movwf	(156)^080h	;volatile
	line	230
	
i1l5633:	
;main.c: 228: }
;main.c: 230: if (T3IF) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l879
u5_20:
	line	232
	
i1l5635:	
;main.c: 232: T3IF = 0;
	bcf	(105/8),(105)&7
	line	233
	
i1l5637:	
;main.c: 233: T3TL = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) % 256;
	movlw	(017h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(274)^0100h	;volatile
	line	234
;main.c: 234: T3TH = (0xFFFF - ((u16)(((16000000UL) / 2) / 2 / (4) / ((u16)1000)))) / 256;
	movlw	(0FCh)
	movwf	(275)^0100h	;volatile
	line	236
	
i1l879:	
	movf	(??_myIsr+1),w
	movwf	pclath
	swapf	(??_myIsr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_myIsr
	__end_of_myIsr:
;; =============== function _myIsr ends ============

	signat	_myIsr,88
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
