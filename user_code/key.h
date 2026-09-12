#ifndef __KEY_H__
#define __KEY_H__

enum
{
    KEY_ID_NONE = 0x00,
    KEY_ID_VALID,
};

#define KEY_SCAN_PIN PA0
// 如果只消抖2次，会过滤不掉抖动
// 按键消抖次数 (消抖时间 == 消抖次数 * 按键扫描时间)
#define KEY_FILTER_TIMES (3)
/*
    PA0 与 LED 公共端复用：
    led_refresh() 为了点亮 led1，会周期性地把 PA0 驱动为输出低电平，
    所以按键采样前必须先关掉 LED 驱动，并等待上拉电阻把 PA0 拉高。
    这里定义等待电平稳定的空循环次数。
*/
#define KEY_PIN_SETTLE_CNT ((u8)100)
// 按键松开后，等待连击的延时，单位：10 ms
#define KEY_CLICK_DELAY_TIME ((u8)((u16)300 / 10))

void key_scan(void);

#endif
