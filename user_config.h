#ifndef __USER_CONFIG_H__
#define __USER_CONFIG_H__

// 定义各个产品的类型，这里只需要数值不重复即可
#define PRODUCT_TYPE_P004_JW 0 // 双击 开关机、定时50分钟关机
#define PRODUCT_TYPE_P003_JW 1 // 双击 开关机、定时50分钟关机

#define PRODUCT_TYPE_P004_DW 2 // 单击来开关机、定时50分钟关机
// 单击来开关机、定时5分钟关机、带振动检测（有振动清空定时）
#define PRODUCT_TYPE_P004_DS 3

// 实际使用到的产品类型
#define PRODUCT_TYPE PRODUCT_TYPE_P004_JW

#define USER_DEBUF_ENABLE 1

#if USER_DEBUF_ENABLE
#define USER_TX_PIN     PA7
#define USER_TOGGLE_PIN PC1
#endif

#define CHARGE_PIN           PA5 // 充电检测引脚
#define VIBRATION_SENSOR_PIN PA7 // 振动传感器检测脚

// #define BAT_VOL_DEAD_ZONE (50)        // 电池电压检测死区
#define BAT_VOL_OFF       (2900)      // 关机电压
#define BAT_VOL_LOW       (3200)      // 低电量提示电压
#define BAT_VOL_NEAR_FULL (4100)      // 接近满电的电压
#define BAT_VOL_FULL      (4200 - 50) // 满电电压
#if (PRODUCT_TYPE == PRODUCT_TYPE_P004_JW ||                                   \
     PRODUCT_TYPE == PRODUCT_TYPE_P004_DW ||                                   \
     PRODUCT_TYPE == PRODUCT_TYPE_P004_DS)
// 有四个指示灯的产品

/**
 * @brief 
 * 
 * 放电时
 * BAT_VOL_OFF ~ BAT_VOL_LOW  低电量提示，1格指示灯闪烁
 * BAT_VOL_LOW ~ BAT_VOL_1    1格指示灯
 * BAT_VOL_1 ~ BAT_VOL_2      2格指示灯
 * BAT_VOL_2 ~ BAT_VOL_3      3格指示灯
 * BAT_VOL_3 ~ BAT_VOL_FULL   4格指示灯
 * 
 * 充电时
 * BAT_VOL_OFF ~ BAT_VOL_1  1格指示灯 闪烁
 * BAT_VOL_1 ~ BAT_VOL_2    2格指示灯 闪烁
 * BAT_VOL_2 ~ BAT_VOL_3    3格指示灯 闪烁
 * BAT_VOL_3 ~ BAT_VOL_FULL 4格指示灯 闪烁
 * BAT_VOL_FULL             4格指示灯 常亮
 * 
 */
#define BAT_VOL_1 (3670) // 1挡电压
#define BAT_VOL_2 (3770) // 2挡电压
#define BAT_VOL_3 (3870) // 3挡电压
 
#elif (PRODUCT_TYPE == PRODUCT_TYPE_P003_JW)
// 有三个指示灯的产品

/**
 * @brief 
 * 
 * 放电时
 * BAT_VOL_OFF ~ BAT_VOL_LOW  低电量提示，1格指示灯闪烁
 * BAT_VOL_LOW ~ BAT_VOL_1    1格指示灯
 * BAT_VOL_1 ~ BAT_VOL_2      2格指示灯
 * BAT_VOL_2 ~ BAT_VOL_FULL   3格指示灯 
 * 
 * 充电时
 * BAT_VOL_OFF ~ BAT_VOL_1  1格指示灯 闪烁
 * BAT_VOL_1 ~ BAT_VOL_2    2格指示灯 闪烁
 * BAT_VOL_2 ~ BAT_VOL_FULL 3格指示灯 闪烁
 * BAT_VOL_FULL             3格指示灯 常亮
 */
#define BAT_VOL_1 (3700) // 1挡电压
#define BAT_VOL_2 (3800) // 2挡电压

#endif

#if ((PRODUCT_TYPE == PRODUCT_TYPE_P004_JW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P003_JW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DW))
// 没有振动检测功能的产品

// 设备自动关机的时间，单位：100ms
#define DEV_AUTO_SHUTDOWN_TIME ((u16)((u32)50 * 60 * 1000 / 100))

#elif (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS)
// 有振动检测功能的产品

// 设备自动关机的时间，单位：100ms
#define DEV_AUTO_SHUTDOWN_TIME ((u16)((u32)5 * 60 * 1000 / 100))

#endif

// 充电电压达到 BAT_VOL_NEAR_FULL 后，累计多少时间后判定为充满电，单位：100ms
#define CHARGE_FULL_ACCUMULATE_TIME ((u16)((u32)13 * 60 * 1000 / 100))

#endif
