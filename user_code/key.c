#include "key.h"
#include "user_include.h"
#include "led.h"
#include "pen_pwr_ctl.h"

void key_scan(void)
{
    static volatile u8 last_key_id = KEY_ID_NONE;
    static volatile u8 press_cnt = 0;               // 按键按下的时间计数
    static volatile u8 filter_cnt = 0;              // 按键消抖，使用的变量
    static volatile u8 filter_key_id = KEY_ID_NONE; // 按键消抖时使用的变量
    // 按键短按松开之后，记录时间，用于判断这段时间内是否有再次按下
    static volatile u8 click_delay_cnt = 0;
    static volatile u8 click_cnt = 0; // 记录按键连击的次数
    volatile u8 cur_key_id = KEY_ID_NONE;

    if (flag_is_in_charging) {
        // 充电期间，不检测按键
        last_key_id = 0;
        press_cnt = 0;
        filter_cnt = 0;
        filter_key_id = 0;
        click_delay_cnt = 0;
        click_cnt = 0;
        cur_key_id = 0;
        return;
    }

    led_all_off();
    // 按键检测引脚配置
    PAHCON &= ~(0x01 << 0); // 上拉电阻
    TRISA |= (0x01 << 0);   // 输入模式

    if (1 == KEY_SCAN_PIN) {
        cur_key_id = KEY_ID_NONE;
    } else {
        // 按键按下
        cur_key_id = KEY_ID_VALID;

        // 有按键按下，清空自动关机、自动进入低功耗的计时
        pwr_off_cnt = 0;
        into_low_power_cnt = 0;
    }

    if (cur_key_id != filter_key_id) {
        // 如果有按键按下/松开
        filter_cnt = 0;
        filter_key_id = cur_key_id;
        return;
    }

    if (filter_cnt < KEY_FILTER_TIMES) {
        // 如果检测到相同的按键按下/松开
        // 防止计数溢出
        filter_cnt++;
        return;
    }

    // 滤波/消抖完成后，执行到这里
    if (last_key_id != cur_key_id) {
        // last_key_id 为有效键值，而 cur_key_id
        // 为无效键值，说明按键刚开始松开
        if (cur_key_id == KEY_ID_NONE) {
            // 开始计时，等待下次按键按下，最后判断有没有按键连击
            click_delay_cnt = 0;
        } else // cur_key_id 为有效键值，而 last_key_id
               // 为无效键值，说明按键刚按下
        {
            press_cnt = 0; // 重置按键按下时间计数
            click_cnt++;
        }

        if (click_cnt == 1) {
            // click_cnt == 1  单击
            /*
                客户说开关机的速度太慢，
                改成按键刚按下，就处理该事件
            */
            flag_is_dev_working = ~flag_is_dev_working;

            if (flag_is_dev_working) {
                pen_pwr_on();
                // 让led指示灯立即更新状态
                led_sta_refresh_cnt = LED_STA_REFRESH_TIME;
            } else {
                // 通过按键关机之后，立即关闭指示灯，不等led刷新
                pen_pwr_off();
#if ((PRODUCT_TYPE == PRODUCT_TYPE_P004_DW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS))
                // 如果有四个指示灯

                flag_led_1_on = 0;
                flag_led_2_on = 0;
                flag_led_3_on = 0;
                flag_led_4_on = 0;
#elif 1
#error "PRODUCT_TYPE error"
                // #elif (PRODUCT_TYPE == 只有三个指示灯的设备对应的宏)

                // 如果只有三个指示灯

                flag_led_2_on = 0;
                flag_led_3_on = 0;
                flag_led_4_on = 0;
#endif
            }

            // 处理完成后，清空连击的次数
            click_cnt = 0;
        }
    } else {
        /*
            cur_key_id == last_key_id &&
            cur_key_id == KEY_ID_NONE，说明按键已经松开
        */
        if (cur_key_id == KEY_ID_NONE) { // 没有按键按下，说明松手
            if (click_cnt > 0) {
                if (click_delay_cnt >= KEY_CLICK_DELAY_TIME) {
                    // 如果超过了连击的等待时间，直接处理
                    click_cnt = 0; // 清空连击的次数
                } else {
                    if (click_delay_cnt < 255) {
                        // 防止计数溢出
                        click_delay_cnt++;
                    }
                }
            }
        } else {
            /*
                cur_key_id == last_key_id &&
                cur_key_id != KEY_ID_NONE，说明按键按下未松开
                按键按住不放
            */
            if (press_cnt < 255) {
                press_cnt++;
            }
        }
    }

    last_key_id = cur_key_id;
}