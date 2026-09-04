#ifndef __LED_H__
#define __LED_H__

#include "user_include.h"

// 指示灯状态的刷新间隔，单位：100ms
#define LED_STA_REFRESH_TIME ((u8)(500 / 100))

// 控制标志位，是否点亮led：
extern volatile bit flag_led_1_on;
extern volatile bit flag_led_2_on;
extern volatile bit flag_led_3_on;
extern volatile bit flag_led_4_on;
// 是否使能led指示灯显示
extern volatile bit flag_is_led_show_enable;

void led_all_off(void);
void led1_on(void);
void led2_on(void);
void led3_on(void);
void led4_on(void);
void led_status_handle(void);
void led_refresh(void);

#endif
