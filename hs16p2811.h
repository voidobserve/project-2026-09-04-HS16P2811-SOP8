
/**************************************************************
//V1.3：按照《HSmcu_HeadFile_定义参考说明-V1.00-20241119》编辑
//Special function register definitions
IC Type Support:
	HS16P2811,
//Updata:20241119
//Designer:LBW
**************************************************************/

/**************************************************************
//V1.2：20241030-更新
//V1.1：
//Special function register definitions
IC Type Support:
	HS16P2811,
//Updata:20241021
//Designer:ZFF
//------------------------------------------------------------
//Updata:20230808
//Designer:(LvBuWei-CHECK-)
**************************************************************/

#ifndef __HS16P2811_H
#define __HS16P2811_H

/*
 通用寄存器：
 bank0:20H~6FH【80-bytes】;
 bank1:A0H~BFH【32-bytes】;
 bank0~3:70H~7FH【16-bytes】public;
 
 EEPROM：256*8
*/

//------------------------------------------------------//
typedef signed char s8; //有符号数
typedef signed int s16;
typedef signed long s32;

typedef unsigned char u8; //无符号整数
typedef unsigned int u16;
typedef unsigned long u32;

typedef volatile unsigned char vu8; //无符号整数
typedef volatile unsigned int vu16;
typedef volatile unsigned long vu32;

//------------------------------------------------------//
//#define	NOP()		asm("NOP")
//#define	CLRWDT()	asm("clrwdt")
//#define	SLEEP()		asm("sleep")

#define NOP    asm("NOP")
#define CLRWDT asm("clrwdt")
#define SLEEP  asm("sleep")

//------------------------------------------------------------
// system public Special function register definitions
//------------------------------------------------------------

volatile unsigned char INDF @0x000;

volatile unsigned char PCL @0x002;

volatile unsigned char STATUS @0x003;
volatile bit IRP @((unsigned)&STATUS * 8) + 7;
volatile bit RP1 @((unsigned)&STATUS * 8) + 6;
volatile bit RP0 @((unsigned)&STATUS * 8) + 5;
volatile bit TO @((unsigned)&STATUS * 8) + 4;
volatile bit PD @((unsigned)&STATUS * 8) + 3;
volatile bit Z @((unsigned)&STATUS * 8) + 2;
volatile bit DC @((unsigned)&STATUS * 8) + 1;
volatile bit C @((unsigned)&STATUS * 8) + 0;

volatile bit FIRP @((unsigned)&STATUS * 8) + 7;
volatile bit FRP1 @((unsigned)&STATUS * 8) + 6;
volatile bit FRP0 @((unsigned)&STATUS * 8) + 5;
volatile bit FTO @((unsigned)&STATUS * 8) + 4;
volatile bit FPD @((unsigned)&STATUS * 8) + 3;
volatile bit FZ @((unsigned)&STATUS * 8) + 2;
volatile bit FDC @((unsigned)&STATUS * 8) + 1;
volatile bit FC @((unsigned)&STATUS * 8) + 0;

volatile unsigned char FSR @0x004;
volatile bit FSR7 @((unsigned)&FSR * 8) + 7;

volatile bit FFSR7 @((unsigned)&FSR * 8) + 7;

volatile unsigned char PCLATH @0x00A;
volatile bit PCH2 @((unsigned)&PCLATH * 8) + 2;
volatile bit PCH1 @((unsigned)&PCLATH * 8) + 1;
volatile bit PCH0 @((unsigned)&PCLATH * 8) + 0;

volatile bit FPCH2 @((unsigned)&PCLATH * 8) + 2;
volatile bit FPCH1 @((unsigned)&PCLATH * 8) + 1;
volatile bit FPCH0 @((unsigned)&PCLATH * 8) + 0;

volatile unsigned char INTCON @0x00B;
volatile bit GIE @((unsigned)&INTCON * 8) + 7;
volatile bit PEIE @((unsigned)&INTCON * 8) + 6;
volatile bit INTIE @((unsigned)&INTCON * 8) + 4;
volatile bit PAIE @((unsigned)&INTCON * 8) + 3;
volatile bit INTIF @((unsigned)&INTCON * 8) + 1;
volatile bit PAIF @((unsigned)&INTCON * 8) + 0;

volatile bit FGIE @((unsigned)&INTCON * 8) + 7;
volatile bit FPEIE @((unsigned)&INTCON * 8) + 6;
volatile bit FINTIE @((unsigned)&INTCON * 8) + 4;
volatile bit FPAIE @((unsigned)&INTCON * 8) + 3;
volatile bit FINTIF @((unsigned)&INTCON * 8) + 1;
volatile bit FPAIF @((unsigned)&INTCON * 8) + 0;

//------------------------------------------------------------
// BANK0 Special function register definitions
//------------------------------------------------------------

volatile unsigned char PORTA @0x005;
volatile bit PA7 @((unsigned)&PORTA * 8) + 7;
volatile bit PA6 @((unsigned)&PORTA * 8) + 6;
volatile bit PA5 @((unsigned)&PORTA * 8) + 5;
volatile bit PA4 @((unsigned)&PORTA * 8) + 4;
volatile bit PA3 @((unsigned)&PORTA * 8) + 3;
volatile bit PA2 @((unsigned)&PORTA * 8) + 2;
volatile bit PA1 @((unsigned)&PORTA * 8) + 1;
volatile bit PA0 @((unsigned)&PORTA * 8) + 0;

volatile bit FPA7 @((unsigned)&PORTA * 8) + 7;
volatile bit FPA6 @((unsigned)&PORTA * 8) + 6;
volatile bit FPA5 @((unsigned)&PORTA * 8) + 5;
volatile bit FPA4 @((unsigned)&PORTA * 8) + 4;
volatile bit FPA3 @((unsigned)&PORTA * 8) + 3;
volatile bit FPA2 @((unsigned)&PORTA * 8) + 2;
volatile bit FPA1 @((unsigned)&PORTA * 8) + 1;
volatile bit FPA0 @((unsigned)&PORTA * 8) + 0;

volatile unsigned char PORTC @0x007;
volatile bit PC5 @((unsigned)&PORTC * 8) + 5;
volatile bit PC4 @((unsigned)&PORTC * 8) + 4;
volatile bit PC3 @((unsigned)&PORTC * 8) + 3;
volatile bit PC2 @((unsigned)&PORTC * 8) + 2;
volatile bit PC1 @((unsigned)&PORTC * 8) + 1;
volatile bit PC0 @((unsigned)&PORTC * 8) + 0;

volatile bit FPC5 @((unsigned)&PORTC * 8) + 5;
volatile bit FPC4 @((unsigned)&PORTC * 8) + 4;
volatile bit FPC3 @((unsigned)&PORTC * 8) + 3;
volatile bit FPC2 @((unsigned)&PORTC * 8) + 2;
volatile bit FPC1 @((unsigned)&PORTC * 8) + 1;
volatile bit FPC0 @((unsigned)&PORTC * 8) + 0;

volatile unsigned char PIR1 @0x00C;
volatile bit ADCIF @((unsigned)&PIR1 * 8) + 6;
volatile bit T1IF @((unsigned)&PIR1 * 8) + 0;

volatile bit FADCIF @((unsigned)&PIR1 * 8) + 6;
volatile bit FT1IF @((unsigned)&PIR1 * 8) + 0;

volatile unsigned char PIR2 @0x00D;
volatile bit C1IF @((unsigned)&PIR2 * 8) + 5;
volatile bit T4IF @((unsigned)&PIR2 * 8) + 2;
volatile bit T3IF @((unsigned)&PIR2 * 8) + 1;

volatile bit FC1IF @((unsigned)&PIR2 * 8) + 5;
volatile bit FT4IF @((unsigned)&PIR2 * 8) + 2;
volatile bit FT3IF @((unsigned)&PIR2 * 8) + 1;

volatile unsigned char PCHCON @0x012;
volatile bit PHC5 @((unsigned)&PCHCON * 8) + 5;
volatile bit PHC4 @((unsigned)&PCHCON * 8) + 4;
volatile bit PHC3 @((unsigned)&PCHCON * 8) + 3;
volatile bit PHC2 @((unsigned)&PCHCON * 8) + 2;
volatile bit PHC1 @((unsigned)&PCHCON * 8) + 1;
volatile bit PHC0 @((unsigned)&PCHCON * 8) + 0;

volatile bit FPHC5 @((unsigned)&PCHCON * 8) + 5;
volatile bit FPHC4 @((unsigned)&PCHCON * 8) + 4;
volatile bit FPHC3 @((unsigned)&PCHCON * 8) + 3;
volatile bit FPHC2 @((unsigned)&PCHCON * 8) + 2;
volatile bit FPHC1 @((unsigned)&PCHCON * 8) + 1;
volatile bit FPHC0 @((unsigned)&PCHCON * 8) + 0;

volatile unsigned char PCDCON @0x013;
volatile bit PDC5 @((unsigned)&PCDCON * 8) + 5;
volatile bit PDC4 @((unsigned)&PCDCON * 8) + 4;
volatile bit PDC3 @((unsigned)&PCDCON * 8) + 3;
volatile bit PDC2 @((unsigned)&PCDCON * 8) + 2;
volatile bit PDC1 @((unsigned)&PCDCON * 8) + 1;
volatile bit PDC0 @((unsigned)&PCDCON * 8) + 0;

volatile bit FPDC5 @((unsigned)&PCDCON * 8) + 5;
volatile bit FPDC4 @((unsigned)&PCDCON * 8) + 4;
volatile bit FPDC3 @((unsigned)&PCDCON * 8) + 3;
volatile bit FPDC2 @((unsigned)&PCDCON * 8) + 2;
volatile bit FPDC1 @((unsigned)&PCDCON * 8) + 1;
volatile bit FPDC0 @((unsigned)&PCDCON * 8) + 0;

volatile unsigned char ADBBUF @0x016;

volatile unsigned char ADPCON1 @0x019;

volatile unsigned char ADPCON @0x01A;

volatile unsigned char ADM @0x01B;
volatile bit ADENB @((unsigned)&ADM * 8) + 7;
volatile bit ADS @((unsigned)&ADM * 8) + 6;
volatile bit EOC @((unsigned)&ADM * 8) + 5;
volatile bit GCHS @((unsigned)&ADM * 8) + 4;
volatile bit CHS3 @((unsigned)&ADM * 8) + 3;
volatile bit CHS2 @((unsigned)&ADM * 8) + 2;
volatile bit CHS1 @((unsigned)&ADM * 8) + 1;
volatile bit CHS0 @((unsigned)&ADM * 8) + 0;

volatile bit FADENB @((unsigned)&ADM * 8) + 7;
volatile bit FADS @((unsigned)&ADM * 8) + 6;
volatile bit FEOC @((unsigned)&ADM * 8) + 5;
volatile bit FGCHS @((unsigned)&ADM * 8) + 4;
volatile bit FCHS3 @((unsigned)&ADM * 8) + 3;
volatile bit FCHS2 @((unsigned)&ADM * 8) + 2;
volatile bit FCHS1 @((unsigned)&ADM * 8) + 1;
volatile bit FCHS0 @((unsigned)&ADM * 8) + 0;

volatile unsigned char ADB @0x01C;

volatile unsigned char ADR @0x01D;
volatile bit ADCKS1 @((unsigned)&ADR * 8) + 6;
volatile bit ADCKS0 @((unsigned)&ADR * 8) + 4;

volatile bit FADCKS1 @((unsigned)&ADR * 8) + 6;
volatile bit FADCKS0 @((unsigned)&ADR * 8) + 4;

volatile unsigned char ADT @0x01E;

volatile unsigned char VREFH @0x01F;
#define VREF VREFH
volatile bit EVHENB @((unsigned)&VREFH * 8) + 7;
volatile bit VHS1 @((unsigned)&VREFH * 8) + 1;
volatile bit VHS0 @((unsigned)&VREFH * 8) + 0;

volatile bit FEVHENB @((unsigned)&VREFH * 8) + 7;
volatile bit FVHS1 @((unsigned)&VREFH * 8) + 1;
volatile bit FVHS0 @((unsigned)&VREFH * 8) + 0;

//------------------------------------------------------------
// BANK1 Special function register definitions
//------------------------------------------------------------

volatile unsigned char OPTIONR @0x081;
#define OPTION     OPTIONR
#define OPTION_REG OPTIONR
volatile bit INTEDGE @((unsigned)&OPTIONR * 8) + 6;

volatile bit FINTEDGE @((unsigned)&OPTIONR * 8) + 6;

volatile unsigned char TRISA @0x085;
volatile bit TRISA7 @((unsigned)&TRISA * 8) + 7;
volatile bit TRISA6 @((unsigned)&TRISA * 8) + 6;
volatile bit TRISA5 @((unsigned)&TRISA * 8) + 5;
volatile bit TRISA4 @((unsigned)&TRISA * 8) + 4;
volatile bit TRISA3 @((unsigned)&TRISA * 8) + 3;
volatile bit TRISA2 @((unsigned)&TRISA * 8) + 2;
volatile bit TRISA1 @((unsigned)&TRISA * 8) + 1;
volatile bit TRISA0 @((unsigned)&TRISA * 8) + 0;

volatile bit FTRISA7 @((unsigned)&TRISA * 8) + 7;
volatile bit FTRISA6 @((unsigned)&TRISA * 8) + 6;
volatile bit FTRISA5 @((unsigned)&TRISA * 8) + 5;
volatile bit FTRISA4 @((unsigned)&TRISA * 8) + 4;
volatile bit FTRISA3 @((unsigned)&TRISA * 8) + 3;
volatile bit FTRISA2 @((unsigned)&TRISA * 8) + 2;
volatile bit FTRISA1 @((unsigned)&TRISA * 8) + 1;
volatile bit FTRISA0 @((unsigned)&TRISA * 8) + 0;

volatile unsigned char TRISC @0x087;
volatile bit TRISC5 @((unsigned)&TRISC * 8) + 5;
volatile bit TRISC4 @((unsigned)&TRISC * 8) + 4;
volatile bit TRISC3 @((unsigned)&TRISC * 8) + 3;
volatile bit TRISC2 @((unsigned)&TRISC * 8) + 2;
volatile bit TRISC1 @((unsigned)&TRISC * 8) + 1;
volatile bit TRISC0 @((unsigned)&TRISC * 8) + 0;

volatile bit FTRISC5 @((unsigned)&TRISC * 8) + 5;
volatile bit FTRISC4 @((unsigned)&TRISC * 8) + 4;
volatile bit FTRISC3 @((unsigned)&TRISC * 8) + 3;
volatile bit FTRISC2 @((unsigned)&TRISC * 8) + 2;
volatile bit FTRISC1 @((unsigned)&TRISC * 8) + 1;
volatile bit FTRISC0 @((unsigned)&TRISC * 8) + 0;

volatile unsigned char PIE1 @0x08C;
volatile bit ADCIE @((unsigned)&PIE1 * 8) + 6;
volatile bit T1IE @((unsigned)&PIE1 * 8) + 0;

volatile bit FADCIE @((unsigned)&PIE1 * 8) + 6;
volatile bit FT1IE @((unsigned)&PIE1 * 8) + 0;

volatile unsigned char PIE2 @0x08D;
volatile bit C1IE @((unsigned)&PIE2 * 8) + 5;
volatile bit T4IE @((unsigned)&PIE2 * 8) + 2;
volatile bit T3IE @((unsigned)&PIE2 * 8) + 1;

volatile bit FC1IE @((unsigned)&PIE2 * 8) + 5;
volatile bit FT4IE @((unsigned)&PIE2 * 8) + 2;
volatile bit FT3IE @((unsigned)&PIE2 * 8) + 1;

volatile unsigned char PCON @0x08E;
volatile bit WDTE @((unsigned)&PCON * 8) + 7;
volatile bit LVDTE @((unsigned)&PCON * 8) + 5;

volatile bit FWDTE @((unsigned)&PCON * 8) + 7;
volatile bit FLVDTE @((unsigned)&PCON * 8) + 5;

volatile unsigned char WUACON @0x08F;
volatile bit WUA7 @((unsigned)&WUACON * 8) + 7;
volatile bit WUA6 @((unsigned)&WUACON * 8) + 6;
volatile bit WUA5 @((unsigned)&WUACON * 8) + 5;
volatile bit WUA4 @((unsigned)&WUACON * 8) + 4;
volatile bit WUA3 @((unsigned)&WUACON * 8) + 3;
volatile bit WUA2 @((unsigned)&WUACON * 8) + 2;
volatile bit WUA1 @((unsigned)&WUACON * 8) + 1;
volatile bit WUA0 @((unsigned)&WUACON * 8) + 0;

volatile bit FWUA7 @((unsigned)&WUACON * 8) + 7;
volatile bit FWUA6 @((unsigned)&WUACON * 8) + 6;
volatile bit FWUA5 @((unsigned)&WUACON * 8) + 5;
volatile bit FWUA4 @((unsigned)&WUACON * 8) + 4;
volatile bit FWUA3 @((unsigned)&WUACON * 8) + 3;
volatile bit FWUA2 @((unsigned)&WUACON * 8) + 2;
volatile bit FWUA1 @((unsigned)&WUACON * 8) + 1;
volatile bit FWUA0 @((unsigned)&WUACON * 8) + 0;

volatile unsigned char PAHCON @0x092;
volatile bit PHA7 @((unsigned)&PAHCON * 8) + 7;
volatile bit PHA6 @((unsigned)&PAHCON * 8) + 6;
volatile bit PHA5 @((unsigned)&PAHCON * 8) + 5;
volatile bit PHA4 @((unsigned)&PAHCON * 8) + 4;
volatile bit PHA3 @((unsigned)&PAHCON * 8) + 3;
volatile bit PHA2 @((unsigned)&PAHCON * 8) + 2;
volatile bit PHA1 @((unsigned)&PAHCON * 8) + 1;
volatile bit PHA0 @((unsigned)&PAHCON * 8) + 0;

volatile bit FPHA7 @((unsigned)&PAHCON * 8) + 7;
volatile bit FPHA6 @((unsigned)&PAHCON * 8) + 6;
volatile bit FPHA5 @((unsigned)&PAHCON * 8) + 5;
volatile bit FPHA4 @((unsigned)&PAHCON * 8) + 4;
volatile bit FPHA3 @((unsigned)&PAHCON * 8) + 3;
volatile bit FPHA2 @((unsigned)&PAHCON * 8) + 2;
volatile bit FPHA1 @((unsigned)&PAHCON * 8) + 1;
volatile bit FPHA0 @((unsigned)&PAHCON * 8) + 0;

volatile unsigned char PADCON @0x093;
volatile bit PDA7 @((unsigned)&PADCON * 8) + 7;
volatile bit PDA6 @((unsigned)&PADCON * 8) + 6;
volatile bit PDA5 @((unsigned)&PADCON * 8) + 5;
volatile bit PDA4 @((unsigned)&PADCON * 8) + 4;
volatile bit PDA3 @((unsigned)&PADCON * 8) + 3;
volatile bit PDA2 @((unsigned)&PADCON * 8) + 2;
volatile bit PDA1 @((unsigned)&PADCON * 8) + 1;
volatile bit PDA0 @((unsigned)&PADCON * 8) + 0;

volatile bit FPDA7 @((unsigned)&PADCON * 8) + 7;
volatile bit FPDA6 @((unsigned)&PADCON * 8) + 6;
volatile bit FPDA5 @((unsigned)&PADCON * 8) + 5;
volatile bit FPDA4 @((unsigned)&PADCON * 8) + 4;
volatile bit FPDA3 @((unsigned)&PADCON * 8) + 3;
volatile bit FPDA2 @((unsigned)&PADCON * 8) + 2;
volatile bit FPDA1 @((unsigned)&PADCON * 8) + 1;
volatile bit FPDA0 @((unsigned)&PADCON * 8) + 0;

volatile unsigned char OSCM @0x094;
volatile bit WAKEMODE @((unsigned)&OSCM * 8) + 6;
volatile bit GREENEN @((unsigned)&OSCM * 8) + 5;
volatile bit SLCON @((unsigned)&OSCM * 8) + 3;
volatile bit STPHX @((unsigned)&OSCM * 8) + 1;
volatile bit CLKMD @((unsigned)&OSCM * 8) + 0;

volatile bit FWAKEMODE @((unsigned)&OSCM * 8) + 6;
volatile bit FGREENEN @((unsigned)&OSCM * 8) + 5;
volatile bit FSLCON @((unsigned)&OSCM * 8) + 3;
volatile bit FSTPHX @((unsigned)&OSCM * 8) + 1;
volatile bit FCLKMD @((unsigned)&OSCM * 8) + 0;

volatile unsigned char PAODCON @0x095;
volatile bit ODA7 @((unsigned)&PAODCON * 8) + 7;
volatile bit ODA6 @((unsigned)&PAODCON * 8) + 6;
volatile bit ODA5 @((unsigned)&PAODCON * 8) + 5;
volatile bit ODA4 @((unsigned)&PAODCON * 8) + 4;
volatile bit ODA3 @((unsigned)&PAODCON * 8) + 3;
volatile bit ODA2 @((unsigned)&PAODCON * 8) + 2;
volatile bit ODA1 @((unsigned)&PAODCON * 8) + 1;
volatile bit ODA0 @((unsigned)&PAODCON * 8) + 0;

volatile bit FODA7 @((unsigned)&PAODCON * 8) + 7;
volatile bit FODA6 @((unsigned)&PAODCON * 8) + 6;
volatile bit FODA5 @((unsigned)&PAODCON * 8) + 5;
volatile bit FODA4 @((unsigned)&PAODCON * 8) + 4;
volatile bit FODA3 @((unsigned)&PAODCON * 8) + 3;
volatile bit FODA2 @((unsigned)&PAODCON * 8) + 2;
volatile bit FODA1 @((unsigned)&PAODCON * 8) + 1;
volatile bit FODA0 @((unsigned)&PAODCON * 8) + 0;

volatile unsigned char T1CON @0x09B;
volatile bit T1CK1 @((unsigned)&T1CON * 8) + 5;
volatile bit T1CK0 @((unsigned)&T1CON * 8) + 4;
volatile bit T1CKS1 @((unsigned)&T1CON * 8) + 3;
volatile bit T1SYNC @((unsigned)&T1CON * 8) + 2;
volatile bit T1CKS0 @((unsigned)&T1CON * 8) + 1;
volatile bit T1REN @((unsigned)&T1CON * 8) + 0;

volatile bit FT1CK1 @((unsigned)&T1CON * 8) + 5;
volatile bit FT1CK0 @((unsigned)&T1CON * 8) + 4;
volatile bit FT1CKS1 @((unsigned)&T1CON * 8) + 3;
volatile bit FT1SYNC @((unsigned)&T1CON * 8) + 2;
volatile bit FT1CKS0 @((unsigned)&T1CON * 8) + 1;
volatile bit FT1REN @((unsigned)&T1CON * 8) + 0;

volatile unsigned char T1TH @0x09C;

volatile unsigned char T1TL @0x09D;

volatile unsigned char T3D4L @0x09E;

volatile unsigned char T3D4H @0x09F;

//------------------------------------------------------------
// BANK2 Special function register definitions
//------------------------------------------------------------

volatile unsigned char T3C0 @0x110;
volatile bit T3REN @((unsigned)&T3C0 * 8) + 7;
volatile bit T3PWM1INV @((unsigned)&T3C0 * 8) + 5;
volatile bit T3PWM0INV @((unsigned)&T3C0 * 8) + 4;
volatile bit T3PWM1EN @((unsigned)&T3C0 * 8) + 2;
volatile bit T3PWM0EN @((unsigned)&T3C0 * 8) + 1;

volatile bit FT3REN @((unsigned)&T3C0 * 8) + 7;
volatile bit FT3PWM1INV @((unsigned)&T3C0 * 8) + 5;
volatile bit FT3PWM0INV @((unsigned)&T3C0 * 8) + 4;
volatile bit FT3PWM1EN @((unsigned)&T3C0 * 8) + 2;
volatile bit FT3PWM0EN @((unsigned)&T3C0 * 8) + 1;

volatile unsigned char T3C1 @0x111;
volatile bit T3OUT0 @((unsigned)&T3C1 * 8) + 6;
volatile bit T3CKS0 @((unsigned)&T3C1 * 8) + 4;
volatile bit T3CK2 @((unsigned)&T3C1 * 8) + 2;
volatile bit T3CK1 @((unsigned)&T3C1 * 8) + 1;
volatile bit T3CK0 @((unsigned)&T3C1 * 8) + 0;

volatile bit FT3OUT0 @((unsigned)&T3C1 * 8) + 6;
volatile bit FT3CKS0 @((unsigned)&T3C1 * 8) + 4;
volatile bit FT3CK2 @((unsigned)&T3C1 * 8) + 2;
volatile bit FT3CK1 @((unsigned)&T3C1 * 8) + 1;
volatile bit FT3CK0 @((unsigned)&T3C1 * 8) + 0;

volatile unsigned char T3TL @0x112;

volatile unsigned char T3TH @0x113;

volatile unsigned char T3PL @0x114;

volatile unsigned char T3PH @0x115;

volatile unsigned char T3D0L @0x116;

volatile unsigned char T3D0H @0x117;

volatile unsigned char T3C2 @0x119;
volatile bit PDTM2 @((unsigned)&T3C2 * 8) + 7;
volatile bit PDTM0 @((unsigned)&T3C2 * 8) + 6;
volatile bit T3PWM4INV @((unsigned)&T3C2 * 8) + 5;
volatile bit T3PWM3INV @((unsigned)&T3C2 * 8) + 4;
volatile bit T3PWM2INV @((unsigned)&T3C2 * 8) + 3;
volatile bit T3PWM4EN @((unsigned)&T3C2 * 8) + 2;
volatile bit T3PWM3EN @((unsigned)&T3C2 * 8) + 1;
volatile bit T3PWM2EN @((unsigned)&T3C2 * 8) + 0;

volatile bit FPDTM2 @((unsigned)&T3C2 * 8) + 7;
volatile bit FPDTM0 @((unsigned)&T3C2 * 8) + 6;
volatile bit FT3PWM4INV @((unsigned)&T3C2 * 8) + 5;
volatile bit FT3PWM3INV @((unsigned)&T3C2 * 8) + 4;
volatile bit FT3PWM2INV @((unsigned)&T3C2 * 8) + 3;
volatile bit FT3PWM4EN @((unsigned)&T3C2 * 8) + 2;
volatile bit FT3PWM3EN @((unsigned)&T3C2 * 8) + 1;
volatile bit FT3PWM2EN @((unsigned)&T3C2 * 8) + 0;

volatile unsigned char T3D1L @0x11A;

volatile unsigned char T3D1H @0x11B;

volatile unsigned char T3D2L @0x11C;

volatile unsigned char T3D2H @0x11D;

volatile unsigned char T3D3L @0x11E;

volatile unsigned char T3D3H @0x11F;

//------------------------------------------------------------
// BANK3 Special function register definitions
//------------------------------------------------------------

volatile unsigned char PWMSEL1 @0x189;
volatile bit T4PWMS1 @((unsigned)&PWMSEL1 * 8) + 3;
volatile bit T4PWMS0 @((unsigned)&PWMSEL1 * 8) + 2;
volatile bit T3PWM4S1 @((unsigned)&PWMSEL1 * 8) + 1;
volatile bit T3PWM4S0 @((unsigned)&PWMSEL1 * 8) + 0;

volatile bit FT4PWMS1 @((unsigned)&PWMSEL1 * 8) + 3;
volatile bit FT4PWMS0 @((unsigned)&PWMSEL1 * 8) + 2;
volatile bit FT3PWM4S1 @((unsigned)&PWMSEL1 * 8) + 1;
volatile bit FT3PWM4S0 @((unsigned)&PWMSEL1 * 8) + 0;

volatile unsigned char PWMSEL @0x18C;
volatile bit T3PWM3S1 @((unsigned)&PWMSEL * 8) + 7;
volatile bit T3PWM3S0 @((unsigned)&PWMSEL * 8) + 6;
volatile bit T3PWM2S1 @((unsigned)&PWMSEL * 8) + 5;
volatile bit T3PWM2S0 @((unsigned)&PWMSEL * 8) + 4;
volatile bit T3PWM1S1 @((unsigned)&PWMSEL * 8) + 3;
volatile bit T3PWM1S0 @((unsigned)&PWMSEL * 8) + 2;
volatile bit T3PWM0S1 @((unsigned)&PWMSEL * 8) + 1;
volatile bit T3PWM0S0 @((unsigned)&PWMSEL * 8) + 0;

volatile bit FT3PWM3S1 @((unsigned)&PWMSEL * 8) + 7;
volatile bit FT3PWM3S0 @((unsigned)&PWMSEL * 8) + 6;
volatile bit FT3PWM2S1 @((unsigned)&PWMSEL * 8) + 5;
volatile bit FT3PWM2S0 @((unsigned)&PWMSEL * 8) + 4;
volatile bit FT3PWM1S1 @((unsigned)&PWMSEL * 8) + 3;
volatile bit FT3PWM1S0 @((unsigned)&PWMSEL * 8) + 2;
volatile bit FT3PWM0S1 @((unsigned)&PWMSEL * 8) + 1;
volatile bit FT3PWM0S0 @((unsigned)&PWMSEL * 8) + 0;

volatile unsigned char T4C0 @0x18D;
volatile bit T4REN @((unsigned)&T4C0 * 8) + 7;
volatile bit T4PWMINV @((unsigned)&T4C0 * 8) + 4;
volatile bit T4BUZEN @((unsigned)&T4C0 * 8) + 3;
volatile bit T4PWMEN @((unsigned)&T4C0 * 8) + 1;

volatile bit FT4REN @((unsigned)&T4C0 * 8) + 7;
volatile bit FT4PWMINV @((unsigned)&T4C0 * 8) + 4;
volatile bit FT4BUZEN @((unsigned)&T4C0 * 8) + 3;
volatile bit FT4PWMEN @((unsigned)&T4C0 * 8) + 1;

volatile unsigned char T4C1 @0x18E;
volatile bit T4OUT0 @((unsigned)&T4C1 * 8) + 6;
volatile bit T4CKS0 @((unsigned)&T4C1 * 8) + 4;
volatile bit T4CK2 @((unsigned)&T4C1 * 8) + 2;
volatile bit T4CK1 @((unsigned)&T4C1 * 8) + 1;
volatile bit T4CK0 @((unsigned)&T4C1 * 8) + 0;

volatile bit FT4OUT0 @((unsigned)&T4C1 * 8) + 6;
volatile bit FT4CKS0 @((unsigned)&T4C1 * 8) + 4;
volatile bit FT4CK2 @((unsigned)&T4C1 * 8) + 2;
volatile bit FT4CK1 @((unsigned)&T4C1 * 8) + 1;
volatile bit FT4CK0 @((unsigned)&T4C1 * 8) + 0;

volatile unsigned char T4TL @0x18F;

volatile unsigned char T4TH @0x190;

volatile unsigned char T4PL @0x191;

volatile unsigned char T4PH @0x192;

volatile unsigned char T4DL @0x193;

volatile unsigned char T4DH @0x194;

volatile unsigned char CMCON0 @0x19D;
//	volatile bit 	C2OUT			@ ((unsigned) & CMCON0 * 8) + 7;
volatile bit C1OUT @((unsigned)&CMCON0 * 8) + 6;
//	volatile bit 	C2INV			@ ((unsigned) & CMCON0 * 8) + 5;
volatile bit C1INV @((unsigned)&CMCON0 * 8) + 4;
volatile bit CIS @((unsigned)&CMCON0 * 8) + 3;
volatile bit CMCH2 @((unsigned)&CMCON0 * 8) + 2;
volatile bit CMCH1 @((unsigned)&CMCON0 * 8) + 1;
volatile bit CMCH0 @((unsigned)&CMCON0 * 8) + 0;

//	volatile bit 	FC2OUT			@ ((unsigned) & CMCON0 * 8) + 7;
volatile bit FC1OUT @((unsigned)&CMCON0 * 8) + 6;
//	volatile bit 	FC2INV			@ ((unsigned) & CMCON0 * 8) + 5;
volatile bit FC1INV @((unsigned)&CMCON0 * 8) + 4;
volatile bit FCIS @((unsigned)&CMCON0 * 8) + 3;
volatile bit FCMCH2 @((unsigned)&CMCON0 * 8) + 2;
volatile bit FCMCH1 @((unsigned)&CMCON0 * 8) + 1;
volatile bit FCMCH0 @((unsigned)&CMCON0 * 8) + 0;

volatile unsigned char VRCON @0x19F;
volatile bit VREN @((unsigned)&VRCON * 8) + 7;
volatile bit VRR1 @((unsigned)&VRCON * 8) + 6;
volatile bit VRR0 @((unsigned)&VRCON * 8) + 5;
volatile bit VRS @((unsigned)&VRCON * 8) + 4;
volatile bit VR3 @((unsigned)&VRCON * 8) + 3;
volatile bit VR2 @((unsigned)&VRCON * 8) + 2;
volatile bit VR1 @((unsigned)&VRCON * 8) + 1;
volatile bit VR0 @((unsigned)&VRCON * 8) + 0;

volatile bit FVREN @((unsigned)&VRCON * 8) + 7;
volatile bit FVRR1 @((unsigned)&VRCON * 8) + 6;
volatile bit FVRR0 @((unsigned)&VRCON * 8) + 5;
volatile bit FVRS @((unsigned)&VRCON * 8) + 4;
volatile bit FVR3 @((unsigned)&VRCON * 8) + 3;
volatile bit FVR2 @((unsigned)&VRCON * 8) + 2;
volatile bit FVR1 @((unsigned)&VRCON * 8) + 1;
volatile bit FVR0 @((unsigned)&VRCON * 8) + 0;

//------------------------------------------------------------
// BANK-end Special function register definitions
//------------------------------------------------------------

/*******************************************************
					位定义
********************************************************/
//#define	Set(x,y)	((x) |= (1 << (y)))				//位置1
//#define	Clr(x,y)	((x) &= ~ (1 << (y)))			//位清0

//#define	b0(x,y)		(((x) & (1 << (y))) == 0)		//位0判断 if(b0(x,y)) 判断是否为0
//#define	b1(x,y)		((x) & (1 << (y)))				//位1判断 if(b1(x,y)) 判断是否为1

/*
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	MULTS0              : 1;
        unsigned	MULTS1              : 1;
        unsigned	OPAMEN              : 1;
        unsigned	COMMS               : 1; 
        unsigned						: 4;
    };
} OPAMbits @ 0x0DB;
#endif
*/
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

/*
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
变量定义 ：
bit				1	==布尔型位变量，0或1两种取值
char			8	==有符号或无符号字符变量，
unsigned char	8	==无符号字符变量
short			16	==有符号整型数
unsigned short	16	==无符号整型数
int				16	==有符号整型数
unsigned int	16	==无符号整型数
long			32	==有符号长整型
unsigned long	32	==无符号长整型
float			24	==浮点数
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*


*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
BANK数据寄存器定义的管理
如果没有特别说明，所定义的变量降被定义在Bank0;除了Bank0内的变量声明不需要特殊处理外，
定义在其它Bank内的变量前面必须加上相应的bank序号，例如
	bank1 unsigned char buffer[2]	;变量定位在bank0
	bank2 bit flag1,flag2	;变量定位在bank2(如果硬件有bank2)
	bank3 int U16_tmp0,U16_tmp1	;变量定位在bank3(如果硬件有bank3)
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*


*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
其它变量修饰关键词:
extern - 外部变量声明；如果在一个C程序文件中要使用一些变量但其原型定义写在另外的文件中，
	那么在本文件中必须将这些变量声明成“extern ”外部类型。

volatile —易变型变量声明。
const  —  常数型变量声明。
persistent —  非初始化变量声明。
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

*/
#endif
