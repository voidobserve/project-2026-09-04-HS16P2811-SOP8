#ifndef __USER_INCLUDE_H__
#define __USER_INCLUDE_H__

#include <hs16p2811.h>

#define _NOP()   asm("NOP")
#define CLRWDT() asm("clrwdt")
#define SLEEP()  asm("sleep")
#define DAA()    asm("DAA")
#define DAS()    asm("DAS")
#define INT()    asm("INT")
#define CLRA()   asm("CLRA")
//#define	ACC_0()		asm("MOVLW 0X00");	//ACC=0
//#define	RETURN()	asm("RETURN");

// ******************************************************************
// ****function declaration****//
// ******************************************************************
void GPIO_Init(void);

void System_Init(void);

void CLR_RAM_EveryBank(void);

// REVIEW 需要注意是否一致：
#define SYS_CLK (16000000UL) // 系统时钟
#define CPU_CLK (SYS_CLK / 2) // CPU时钟

#include "user_config.h"

extern volatile bit flag_is_in_charging;
extern volatile bit flag_is_dev_working;

#endif
