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
#define SYS_CLK (16000000UL)  // 系统时钟
#define CPU_CLK (SYS_CLK / 2) // CPU时钟

#include "user_config.h"

extern volatile bit flag_is_charge_begin;

extern volatile bit flag_is_in_charging;
extern volatile bit flag_is_dev_working;

extern volatile u16 pwr_off_cnt; // xx min 自动关机的倒计时
/*
    设备没有开机、并且没有在充电，累计计数，
    满足一定时间后进入低功耗
*/
extern volatile u8 into_low_power_cnt;

// 控制充电动画 (REVIEW: 刚进入充电时，要注意清零)
extern volatile u8 charge_anim_phase;

// 充满电的计数值(REVIEW: 刚进入充电时，要注意清零)
extern volatile u16 charge_fully_cnt;

extern volatile u8 led_sta_refresh_cnt;

extern volatile u16 adc_val ;
extern volatile u16 bat_vol;

#endif
