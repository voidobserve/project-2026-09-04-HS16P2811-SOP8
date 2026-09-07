#ifndef __ADC_H__
#define __ADC_H__

#include "user_include.h"

// adc 参考电压
#define ADC_REF_VOLTAGE_MV (2000)
// 当前采样通道为 1/4 VDD，需要乘以这个系数，还原为电池电压：
#define ADC_INPUT_DIVIDER (4)
// 将采集到的ad值转换成电压值
#define ADC_VAL_TO_VOLTAGE(adc_val)                                            \
    ((u16)((u32)adc_val * ADC_REF_VOLTAGE_MV * ADC_INPUT_DIVIDER / 4096))
// 采样滤波次数
#define ADC_FILTER_CNT (32)

void adc_init(void);

#endif
