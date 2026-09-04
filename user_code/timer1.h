#ifndef __TIMER1_H__
#define __TIMER1_H__

#include "user_include.h"

enum
{
    TIMER1_DIV_1_REG_VAL = 0x00, // 时钟 1分频
    TIMER1_DIV_2_REG_VAL = 0x01, // 时钟 2分频
    TIMER1_DIV_4_REG_VAL,        // 时钟 4分频
    TIMER1_DIV_8_REG_VAL,        // 时钟 8分频
};

#define TIMER1_FEQ     ((u16)10000) // timer1 中断频率
#define TIMER1_DIV_VAL (4)          // timer1 分频系数值
/*
	timer1 计数值，计数值 == Fcpu / 分频系数 / 中断频率
	REVIEW 该计数值不能超过 65535，也不能太小

	仿真出来发现有偏差，后面加了常数补偿
*/
// #define TIMER1_CNT ((u16)(CPU_CLK / TIMER1_DIV_VAL / TIMER1_FEQ) - 5)
#define TIMER1_CNT ((u16)(CPU_CLK / TIMER1_DIV_VAL / TIMER1_FEQ))

// 用于观察 TIMER1_CNT 的值
enum
{
	TIMER1_CNT_TEST_VAL = TIMER1_CNT,
};
 

void timer1_init(void);

#endif
