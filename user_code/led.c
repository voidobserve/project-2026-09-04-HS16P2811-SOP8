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

void led_status_handle(void)
{
}