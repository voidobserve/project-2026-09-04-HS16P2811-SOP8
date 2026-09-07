#include "adc.h"
#include "user_include.h"

void adc_init(void)
{
    ADM = 0;
    ADR = 0;          // adc 时钟源 == Fcpu / 16
    ADM |= 0x0C << 0; // AIN 通道选择 1/4 VDD
    GCHS = 1;         // 使能 AIN 通道
    VREFH = 0;        // 使能内部参考电压，参考电压选择 内部0.2V
    ADENB = 1;        // 使能 adc
    ADCIF = 0;        // 清除 adc 中断标志
    ADCIE = 1;        // 使能 adc 中断

    // REVIEW 等系统稳定之后，再启动 adc
    // EOC = 0; // 表示adc转换结束
    // ADS = 1; // 开始 adc 转换

    // REVIEW 进入低功耗之后，adc 通道不能是 1/4VDD，可能会产生漏电流
    // ADM &= ~(0x0F << 0); // AIN 通道选择 PA0

#if 0
	// 待移植到adc中断
    adc_val = ADB;
    adc_val <<= 4;
    adc_val += (ADR & 0x0f); //12位AD数据
#endif
}