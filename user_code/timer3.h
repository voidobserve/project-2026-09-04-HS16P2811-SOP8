#ifndef __TIMER3_H__
#define __TIMER3_H__

#include "user_include.h"

enum
{
    TIMER3_DIV_128_REG_VAL = 0x00, // 时钟  分频
    TIMER3_DIV_64_REG_VAL,         // 时钟  分频
    TIMER3_DIV_32_REG_VAL,         // 时钟  分频
    TIMER3_DIV_16_REG_VAL,         // 时钟  分频
    TIMER3_DIV_8_REG_VAL,          // 时钟 8 分频
    TIMER3_DIV_4_REG_VAL,          // 时钟 4 分频
    TIMER3_DIV_2_REG_VAL,          // 时钟 2 分频
    TIMER3_DIV_1_REG_VAL,          // 时钟 1 分频
};

#define TIMER3_FEQ     ((u16)1000) // timer  中断频率
#define TIMER3_DIV_VAL (4)         // timer  分频系数值
/*
	timer  计数值，计数值 == Fcpu / 分频系数 / 中断频率
	REVIEW 该计数值不能超过 65535，也不能太小

	仿真出来发现有偏差，后面加了常数补偿
*/
#define TIMER3_CNT ((u16)(CPU_CLK / 2 / TIMER3_DIV_VAL / TIMER3_FEQ))
// 用于观察 TIMER3_CNT 的值
enum
{
    TIMER3_CNT_TEST_VAL = TIMER3_CNT,
};

void timer3_init(void);

#endif
