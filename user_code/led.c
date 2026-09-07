#include "led.h"

// 控制标志位，是否点亮led：
volatile bit flag_led_1_on;
volatile bit flag_led_2_on;
volatile bit flag_led_3_on;
volatile bit flag_led_4_on;

// 是否使能led指示灯显示
volatile bit flag_is_led_show_enable;

void led_all_off(void)
{
    // 关闭所有LED驱动引脚的上下拉：
    // 关闭 按键扫描的上拉、LED控制的上拉
    // 可能是唤醒之后芯片没有关掉led的上拉，导致之后无法进入低功耗，这里重新关闭一次上拉：
    PAHCON |= (0x01 << 0 | 0x01 << 1 | 0x01 << 2);

    // 所有 led 驱动引脚配置为 输入模式
    TRISA |= (0x01 << 0) | // PA0
             (0x01 << 1) | // PA1
             (0x01 << 2);  // PA2
}

#if ((PRODUCT_TYPE == PRODUCT_TYPE_P004_JW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS))
// 只有四个指示灯的设备，才有 led1 的接口
void led1_on(void)
{
    // LED公共端配置为输出，输出低电平
    TRISA &= ~(0x01 << 0); // PA0
    PA0 = 0;

    // LED B端 配置为输出，输出高电平
    TRISA &= ~(0x01 << 1); // PA1
    PA1 = 1;
}
#endif

void led2_on(void)
{
    // B端 输出低电平， 公共端 输出高电平
    TRISA &= ~(0x01 << 0); // PA0
    PA0 = 1;

    TRISA &= ~(0x01 << 1); // PA1
    PA1 = 0;
}

void led3_on(void)
{
    // A端 输出低电平，公共端 输出高电平
    TRISA &= ~(0x01 << 2); // PA2
    PA2 = 0;

    TRISA &= ~(0x01 << 0); // PA0
    PA0 = 1;
}

void led4_on(void)
{
    // 公共端 输出低电平，A端 输出高电平
    TRISA &= ~(0x01 << 0); // PA0
    PA0 = 0;

    TRISA &= ~(0x01 << 2); // PA2
    PA2 = 1;
}

#if ((PRODUCT_TYPE == PRODUCT_TYPE_P004_JW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS))
// 有四个指示灯的设备

// 根据电池电量和设备状态，来控制电池电量指示灯
// 目前暂定在 100us 定时器中断里面调用
void led_refresh(void)
{
    static volatile u8 sta = 0;

    if (0 == flag_is_led_show_enable) {
        return;
    }

    led_all_off();

    switch (sta) {
    case 0:
        if (flag_led_1_on) {
            led1_on();
        }
        // sta = 1;
        break;
    case 1:
        if (flag_led_2_on) {
            led2_on();
        }
        // sta = 2;
        break;
    case 2:
        if (flag_led_3_on) {
            led3_on();
        }
        // sta = 3;
        break;
    case 3:
        if (flag_led_4_on) {
            led4_on();
        }
        // sta = 0;
        break;

    default:
        break;
    }

    sta++;
    if (sta >= 4) {
        sta = 0;
    }
}
#elif (PRODUCT_TYPE == PRODUCT_TYPE_P003_JW)
// 只有三个指示灯的设备

// 根据电池电量和设备状态，来控制电池电量指示灯
// 目前暂定在 100us 定时器中断里面调用
void led_refresh(void)
{
    static volatile u8 sta = 0;

    if (0 == flag_is_led_show_enable) {
        return;
    }

    led_all_off();

    switch (sta) {
    case 0:
        if (flag_led_2_on) {
            led2_on();
        }
        // sta = 1;
        break;
    case 1:
        if (flag_led_3_on) {
            led3_on();
        }
        // sta = 2;
        break;
    case 2:
        if (flag_led_4_on) {
            led4_on();
        }
        // sta = 0;
        break;
    default:
        break;
    }

    sta++;
    if (sta >= 3) {
        sta = 0;
    }
}
#endif

#if ((PRODUCT_TYPE == PRODUCT_TYPE_P004_JW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS))
// 有四个指示灯的设备

/**
 * @brief led显示逻辑处理
 *      每隔 100ms 调用一次
 * 
 */
void led_status_handle(void)
{
    // TODO 待适配
    led_sta_refresh_cnt++;
    if (led_sta_refresh_cnt >= LED_STA_REFRESH_TIME) {
        led_sta_refresh_cnt = 0;
        if (flag_is_in_charging) {
            // 充电时，控制指示灯跑马显示

            // 如果刚进入充电，执行跑马灯动画，到对应的电压后停止
            if (flag_is_charge_begin) {
                if (bat_vol < BAT_VOL_1) {
                    flag_is_charge_begin = 0;
                    /**
                     *  退出刚开始充电的动画之后，需要立即进入对应的处理
                     *  这里给计数值恢复成 500 ms 
                     */
                    led_sta_refresh_cnt = LED_STA_REFRESH_TIME;
                } else if (bat_vol < BAT_VOL_2 && charge_anim_phase == 0) {
                    flag_led_1_on = 1;
                    charge_anim_phase = 1;
                } else if (bat_vol < BAT_VOL_3 && charge_anim_phase == 1) {
                    flag_led_2_on = 1;
                    charge_anim_phase = 2;
                } else if (bat_vol < BAT_VOL_FULL && charge_anim_phase == 2) {
                    flag_led_3_on = 1;
                    charge_anim_phase = 3;
                } else if (bat_vol < BAT_VOL_FULL && charge_anim_phase == 3) {
                    flag_led_4_on = 1;
                    charge_anim_phase = 4;
                } else {
                    flag_is_charge_begin = 0; // 退出刚开始充电的动画
                    /**
                     *  退出刚开始充电的动画之后，需要立即进入对应的处理
                     *  这里给计数值恢复成 500 ms 
                     */
                    led_sta_refresh_cnt = LED_STA_REFRESH_TIME;
                }
            } else {
                // 如果不是刚进入充电，而是正在充电，根据电池电量档位来控制指示灯闪烁

                if (bat_vol < BAT_VOL_1) {
                    flag_led_1_on = ~flag_led_1_on;
                } else if (bat_vol < BAT_VOL_2) {
                    flag_led_2_on = ~flag_led_2_on;
                } else if (bat_vol < BAT_VOL_3) {
                    flag_led_3_on = ~flag_led_3_on;
                } else {
                    flag_led_4_on = ~flag_led_4_on;
                }

                if (bat_vol >= BAT_VOL_1) {
                    flag_led_1_on = 1;
                }

                if (bat_vol >= BAT_VOL_2) {
                    flag_led_2_on = 1;
                }

                if (bat_vol >= BAT_VOL_3) {
                    flag_led_3_on = 1;
                }

                if (bat_vol >= BAT_VOL_FULL) {
                    flag_led_4_on = 1;
                }
            }
        } else if (flag_is_dev_working) {
            // 放电时，控制指示灯常亮

            if (bat_vol < BAT_VOL_LOW) {
                // 低电量，指示灯闪烁
                flag_led_1_on = ~flag_led_1_on;
            } else {
                flag_led_1_on = 1;
            }
  
            if (bat_vol >= BAT_VOL_1) {
                flag_led_2_on = 1;
            } else {
                flag_led_2_on = 0;
            }

            if (bat_vol >= BAT_VOL_2) {
                flag_led_3_on = 1;
            } else {
                flag_led_3_on = 0;
            }

            if (bat_vol >= BAT_VOL_3) {
                flag_led_4_on = 1;
            } else {
                flag_led_4_on = 0;
            }
        } else {
            // 不在充电，设备也没有在工作，关闭所有指示灯
            flag_led_1_on = 0;
            flag_led_2_on = 0;
            flag_led_3_on = 0;
            flag_led_4_on = 0;
        }
    }

    if (flag_is_in_charging && 0 == flag_is_charge_begin) {
        // 正在充电，并且已经过了充电的开始动画
        if (bat_vol >= BAT_VOL_FULL) {
            flag_led_4_on = 1;
        }

        if (bat_vol >= BAT_VOL_NEAR_FULL) {
            if (charge_fully_cnt < CHARGE_FULL_ACCUMULATE_TIME) {
                charge_fully_cnt++;
            } else {
                flag_led_4_on = 1;
            }
        }
    }
}

#elif (PRODUCT_TYPE == PRODUCT_TYPE_P003_JW)
// 只有三个指示灯的设备

/**
 * @brief led显示逻辑处理
 *      每隔 100ms 调用一次
 * 
 */
void led_status_handle(void)
{
    led_sta_refresh_cnt++;
    if (led_sta_refresh_cnt >= LED_STA_REFRESH_TIME) {
        led_sta_refresh_cnt = 0;

        if (flag_is_in_charging) {
            // 充电时，控制指示灯跑马显示
            // 如果刚进入充电，执行跑马灯动画，到对应的电压后停止
            if (flag_is_charge_begin) {
                if (bat_vol < BAT_VOL_1) {
                    flag_is_charge_begin = 0;
                    /**
                     *  退出刚开始充电的动画之后，需要立即进入对应的处理
                     *  这里给计数值恢复成 500 ms 
                     */
                    led_sta_refresh_cnt = LED_STA_REFRESH_TIME;
                } else if (bat_vol < BAT_VOL_2 && charge_anim_phase == 0) {
                    flag_led_2_on = 1;
                    charge_anim_phase = 1;
                } else if (bat_vol < BAT_VOL_FULL && charge_anim_phase == 1) {
                    flag_led_3_on = 1;
                    charge_anim_phase = 2;
                } else if (bat_vol < BAT_VOL_FULL && charge_anim_phase == 2) {
                    flag_led_4_on = 1;
                    charge_anim_phase = 3;
                } else {
                    flag_is_charge_begin = 0;
                    /**
                     *  退出刚开始充电的动画之后，需要立即进入对应的处理
                     *  这里给计数值恢复成 500 ms 
                     */
                    led_sta_refresh_cnt = LED_STA_REFRESH_TIME;
                }
            } else {
                // 如果不是刚进入充电，而是正在充电，根据电池电量档位来控制指示灯闪烁

                if (bat_vol < BAT_VOL_1) {
                    flag_led_2_on = ~flag_led_2_on;
                } else if (bat_vol < BAT_VOL_2) {
                    flag_led_3_on = ~flag_led_3_on;
                } else if (bat_vol < BAT_VOL_FULL) {
                    flag_led_4_on = ~flag_led_4_on;
                }

                if (bat_vol >= BAT_VOL_1) {
                    flag_led_2_on = 1;
                }

                if (bat_vol >= BAT_VOL_2) {
                    flag_led_3_on = 1;
                }

                if (bat_vol >= BAT_VOL_FULL) {
                    flag_led_4_on = 1;
                }
            }
        } else if (flag_is_dev_working) {
            // 放电时，控制指示灯常亮(低电量提示时闪烁)
            if (bat_vol < BAT_VOL_LOW) {
                // 低电量提示
                flag_led_2_on = ~flag_led_2_on;
            } else {
                flag_led_2_on = 1;
            }

            if (bat_vol >= BAT_VOL_1) {
                flag_led_3_on = 1;
            } else {
                flag_led_3_on = 0;
            }

            if (bat_vol >= BAT_VOL_2) {
                flag_led_4_on = 1;
            } else {
                flag_led_4_on = 0;
            }
        } else {
            // 不在充电，设备也没有在工作，关闭所有指示灯
            flag_led_2_on = 0;
            flag_led_3_on = 0;
            flag_led_4_on = 0;
        }
    }

    if (flag_is_in_charging && 0 == flag_is_charge_begin) {
        // 正在充电，并且已经过了充电的开始动画
        if (bat_vol >= BAT_VOL_FULL) {
            flag_led_4_on = 1;
        }

        if (bat_vol >= BAT_VOL_NEAR_FULL) {
            if (charge_fully_cnt < CHARGE_FULL_ACCUMULATE_TIME) {
                charge_fully_cnt++;
            } else {
                flag_led_4_on = 1;
            }
        }
    }
}

#endif