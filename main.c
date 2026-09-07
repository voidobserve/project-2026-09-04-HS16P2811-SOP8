

//*****************************************************
//Copyright (c) 2024, 苏州华芯微电子股份有限公司
//All rights reserved
//
//文件名称:
//当前版本: 1.0
//作    者: 华芯微MCU组
//完成日期: 2025.08.7
//*****************************************************

#include "user_config.h"
#include "user_include.h"
#include "led.h"
#include "key.h"
#include "adc.h"
#include "timer1.h"
#include "timer3.h"
#include "pen_pwr_ctl.h"

volatile bit flag_is_charge_begin;

volatile bit flag_is_in_charging;
volatile bit flag_is_dev_working;

volatile u16 pwr_off_cnt = 0; // xx min 自动关机的倒计时
/*
    设备没有开机、并且没有在充电，累计计数，
    满足一定时间后进入低功耗
*/
volatile u8 into_low_power_cnt = 0;

// 控制充电动画 (REVIEW: 刚进入充电时，要注意清零)
volatile u8 charge_anim_phase = 0;

// 充满电的计数值(REVIEW: 刚进入充电时，要注意清零)
volatile u16 charge_fully_cnt = 0;

volatile u8 led_sta_refresh_cnt = 0;

volatile u16 adc_val = 0;
volatile u16 bat_vol = 0; // 当前设备的电池电压值
volatile u16 bat_vol_tmp; // 在中断得到的电池电压值

// volatile bit is_adc_val_initialized = 0;
volatile bit adc_enable = 0;
volatile bit adc_sta = 0; // 控制adc采集周期
volatile u32 adc_val_sum = 0;
volatile u8 adc_val_cnt = 0;

// 上一次从传感器检测脚读取到的电平
volatile bit last_vibration_sensor_lev = 0;

/**
 * @ brief:	System_Init
 * @ param:	null
 * @ retval:null
 */
void System_Init(void)
{
    OPTION = 0b000000000; //-0-- ----
    //bit6:INTEDG：外部中断触发方式选择位（PC1）	;0-falling edge, 1-rising edge

    INTCON = 0b00000000; //00-0 0-00
                         //bit7:GIE 全局中断使能位
                         //bit6:PEIE 外设总中断使能位
                         //bit4:INTIE 外部中断使能位(PC1)
                         //bit3:PAIE PORTA输入变化中断使能位
                         //bit1:INTIF 外部中断标志位
                         //bit0:PAIF PORTA输入变化中断标志位

    WDTE = 0; //  WDT（看门狗定时器）使能位	;0-DIS, 1-EN

    PIE1 = 0B00000000; //-0-- ---0
                       //Bit6:ADCIE ADC中断使能位
                       //Bit0:T1IE 定时器T1中断使能位

    PIR1 = 0B00000000; //-0-- ---0
                       //Bit6:ADCIE ADC转换完成标志位
                       //Bit0:T1IE 定时器T1溢出标志位

    PIE2 = 0B00000000; //---- -0-0
                       //Bit1:T3IE 定时器T3中断使能位
                       //Bit2:T4IE 定时器T4中断使能位
                       //Bit5:C1IE 比较器C1中断使能位

    PIR2 = 0B00000000; //---- -0-0
                       //Bit1:T3IE 定时器T3溢出标志位,软件清0
                       //Bit2:T4IE 定时器T4溢出标志位,软件清0
                       //Bit5:C1IE 比较器C1输出变化时被置位,软件清0

    GPIO_Init();
    CLR_RAM_EveryBank();
}

/**
 * @ brief:	CLR_RAM_EveryBank
 * @ note
 *  @对用户寄存器进行清0操作 
 *  @分BANK区清楚 
 *  @嵌入汇编操作 
 *  @IRP:FSR7:	间接寻址寻址空间（充分理解 间接寻址操作原理）
 *  @	0 0		BANK0
 *  @	0 1		BANK1
 *  @	1 0		BANK2
 *  @	1 1		BANK3
 * @ param:	null
 * @ retval:null
 */
void CLR_RAM_EveryBank(void)
{
    STATUS &= 0x1F;
#asm;
    MOVLW 0x5F; //个数
    MOVWF 0x20; //个数存放地址
    MOVLW 0x7F; //REG从后往前 清理
    MOVWF _FSR, F;
CLR_RAM_LOOP:
    CALL CLR_RAM_Demo;

    DECF _FSR, F;
    DECFSZ 0X20, F;
    GOTO CLR_RAM_LOOP;

    CALL CLR_RAM_Demo;
    RETURN;

CLR_RAM_Demo:
    //	0 1		BANK1;
    //BCF	_STATUS,7	;//IRP
    BSF _FSR, 7; //01:BANK1
    CLRF _INDF;

    //	0 0		BANK0;
    //BCF	_STATUS,7;	//IRP
    BCF _FSR, 7; //00:BANK0
    CLRF _INDF;

    RETURN;
#endasm;
}

/**
 * @ brief:	GPIO Init
 * @ param:	null
 * @ retval:null
 */
void GPIO_Init(void)
{
    //;PORTA
    PORTA = 0b00000000;   //0000 0000	//端口输出赋值
    TRISA = 0b00000000;   //0000 0000	:0-OUT;1-IN 	//输入输出配置
    PAODCON = 0b00000000; //0000 0000 :1-EN;0-DIS 	//开漏配置
    PAHCON = 0b11111111;  //1111 1111 :1-DIS;0-EN 	//内部上拉配置
    PADCON = 0b11111111;  //1111 1111 :1-DIS;0-EN 	//内部下拉配置
    WUACON = 0b00000000;  //0000 0000	:1-EN;0=DIS 	//端口唤醒配置

    //;PORTC
    PORTC = 0b00000000;  //--00 0000	//端口输出赋值
    TRISC = 0b00000000;  //--00 0000	:0-OUT;1-IN 	//输入输出配置
    PCDCON = 0b11111111; //--11 1111 :1-DIS;0-EN		//内部下拉配置
    PCHCON = 0b11111111; //--11 1111 :1-DIS;0-EN 	//内部上拉配置
}

#if 0
/*****************************************************    
;UART-调试函数        
;TX_Dat 发送数据寄存器         
;TX_Cnt	8位数据         
;起始位：0      
;数据位：LSB->MSB      
;结束位：1      
//***************************************************/
#define TX_PIN     FPA7
#define I_TX_DELAY 22 //16M2T-delay26us
#define I_TX_DELAY 48 //16M2T-delay26us
//****************************************************
void _send_data_uart(unsigned char Uart_Data)
{
    unsigned char TXD_Cnt;
    unsigned char TXD_Dat;

    CLRWDT();
    TXD_Dat = Uart_Data;

    FGIE = 0;
    //start-bit
    TX_PIN = 0;
    DelayUs(I_TX_DELAY + 1);

    //8bit-dat
    for (TXD_Cnt = 8; TXD_Cnt > 0; TXD_Cnt--) {
        if (TXD_Dat & 0x01)
            TX_PIN = 1;
        else
            TX_PIN = 0;

        DelayUs(I_TX_DELAY);
        TXD_Dat = TXD_Dat >> 1;
    }

    //stop-bit
    TX_PIN = 1;
    DelayUs(I_TX_DELAY);
    DelayUs(I_TX_DELAY);
    FGIE = 1;
}
#endif
//===================================================================

// 毫秒级延时
// 前提条件：FCPU = SYS_CLK / 2 == 8MHz
void delay_ms(u32 xms)
{
    while (xms) {
        // u16 i = 531;
        // u16 i = 500;
        // u16 i = 515;
        u16 i = 510;
        while (i--) {
            _NOP();
        }
        xms--;
    }
}

void user_init(void)
{
    // 按键检测脚 输入上拉
    PAHCON &= ~(0x01 << 0);
    TRISA |= (0x01 << 0);
    // 控制笔头电源的引脚 输入
    TRISA |= (0x01 << 6);
    // 滚珠检测脚 输入
    TRISA |= (0x01 << 7);
    // 充电检测脚 输入
    TRISA |= (0x01 << 5);

    adc_init();
    timer1_init();
    timer3_init();
    GIE = 1;
    delay_ms(10);

    // EOC = 0; // 表示adc转换结束
    // ADS = 1; // 开始 adc 转换
    adc_enable = 1; // 使能adc采集、处理
}

void main(void)
{
    System_Init();
    user_init();

    into_low_power_cnt = (u8)((u16)2000 / 10); // 确保一上电就进入低功耗
    while (1) {
        // CLRWDT();
        /*
            如果不在充电，并且到了关机的时间

            如果不在充电并且设备不在运行，2s后进入低功耗
            改成直接进低功耗
        */
        if ((flag_is_dev_working && pwr_off_cnt >= (DEV_AUTO_SHUTDOWN_TIME)) ||
            into_low_power_cnt >= (u8)((u16)2000 / 10)) {
        label_low_power_in: // 标签，进入低功耗

            GIE = 0; // 关闭总中断

            // 关闭定时器、adc
            T1IE = 0;  // 屏蔽 timer1 中断
            T3IE = 0;  // 屏蔽 timer3 中断
            T1REN = 0; // 不使能定时器
            T3REN = 0; // 不使能定时器

            ADCIE = 0;           // 屏蔽 adc 中断
            ADM &= ~(0x0F << 0); // AIN 通道选择 PA0
            GCHS = 0;            // 不使能 AIN 通道
            ADENB = 0;           // 不使能adc

            // PA 端口 所有引脚配置为输入模式，关闭上下拉
            TRISA = 0xFF; // 所有引脚配置为输入模式
            PAHCON = 0xFF;
            PADCON = 0xFF;

            // 使能按键检测和充电唤醒对应的中断
            // 按键检测脚、LED控制的A端和B端，打开上拉
            PAHCON &= ~(0x01 << 0 | 0x01 << 1 | 0x01 << 2);
            PAIF = 0; // 清除 PA 中断标志
            PAIE = 1; // 使能 PA 端口中断

            WUACON |= (0x01 << 0 | // 使能按键检测脚的中断唤醒功能
                       0x01 << 5); // 使能充电检测脚的中断唤醒功能
            PEIE = 1;              // 使能外设中断

            CLKMD = 1; // 低速模式，低速时钟作为系统时钟
            STPHX = 1; // 关闭高速时钟
            SLCON = 1; // 关闭低速时钟

            _NOP();
            _NOP();
            SLEEP();
            _NOP();
            _NOP();

            PAIF = 0; // 清除 PA 中断标志
            PAIE = 0; // 关闭 PA 端口中断
            WUACON = 0x00; // 关闭所有PA脚唤醒功能
            /**
             * bit 6 ： 1：睡眠唤醒后系统时钟选择高速RC
             * bit 5 : 0：普通模式
             * bit 3 ： 0：开启内部低速时钟
             * bit 1: 0:运行内部高速振荡器
             * bit 0: 0: 普通模式，高速时钟作为系统时钟 
             */
            OSCM = 0x01 << 6;

            System_Init();
            user_init();

            delay_ms(10);
            flag_is_led_show_enable = 1; // 确保电池电量更新后，再使能led显示

            if (CHARGE_PIN == 0 && bat_vol <= BAT_VOL_OFF) {
                // 没有在充电并且低电量，重新回到低功耗
                goto label_low_power_in;
            }
        }
    }
}

//==============================================
//1.>中断函数
//;Bank0~3 编译系统会自动切换,用户不需要手动切换;
//==============================================

void interrupt myIsr(void)
{
    if (T1IF) {
        // 目前 100us 进入一次
        T1IF = 0;
        T1TL = (0xFFFF - TIMER1_CNT) % 256; // 初值低8位
        T1TH = (0xFFFF - TIMER1_CNT) / 256; // 初值高8位
        led_refresh();

        if (adc_enable) {
            if (0 == adc_sta) {
                adc_sta = 1;
                EOC = 0; // 表示 adc 转换结束
                ADS = 1; // 开始 adc 转换
            }
        }

#if (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS)
        // 如果检测到的振动传感器传来的信号，当前检测脚的电平跟上次的不一样
        if ((VIBRATION_SENSOR_PIN && last_vibration_sensor_lev == 0) ||
            (VIBRATION_SENSOR_PIN == 0 && last_vibration_sensor_lev)) {
            // 清空关机的计时
            pwr_off_cnt = 0;

            if (VIBRATION_SENSOR_PIN) {
                last_vibration_sensor_lev = 1;
            } else {
                last_vibration_sensor_lev = 0;
            }
        }
#endif
    }

    if (T3IF) {
        // 目前 1ms 进入一次
        static volatile u8 cnt_dest_10ms = 0;
        static volatile u8 cnt_dest_100ms = 0;

        T3IF = 0;
        T3TL = (0xFFFF - TIMER3_CNT) % 256; // 初值低8位
        T3TH = (0xFFFF - TIMER3_CNT) / 256; // 初值高8位

        cnt_dest_10ms++;
        if (cnt_dest_10ms >= 10) {
            // RAM空间不够，省略了充电检测的消抖和滤波操作
            static volatile u8 is_not_charge_cnt = 0;

            cnt_dest_10ms = 0;
            // 每 10ms 进入一次

            /*
                充电检测
                REVIEW
                先执行充电检测，再执行按键扫描，避免刚拔出充电器， 而检测不到按键事件 
            */

            /*
                一旦有充电信号，就直接进入充电判断逻辑
                断开充电时，才加入滤波，避免误判
            */
            if (CHARGE_PIN) {
                is_not_charge_cnt = 0; // 只要有充电信号，就清空计数
                if (0 == flag_is_in_charging) {
                    pen_pwr_off(); // 断开笔头的供电

                    // 关闭所有指示灯，准备充电动画:
#if ((PRODUCT_TYPE == PRODUCT_TYPE_P004_JW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DW) ||                                 \
     (PRODUCT_TYPE == PRODUCT_TYPE_P004_DS))
                    flag_led_1_on = 0;
                    flag_led_2_on = 0;
                    flag_led_3_on = 0;
                    flag_led_4_on = 0;
#elif (PRODUCT_TYPE == PRODUCT_TYPE_P003_JW)
                    flag_led_2_on = 0;
                    flag_led_3_on = 0;
                    flag_led_4_on = 0;
#endif
                    flag_is_dev_working = 0; // 表示设备关闭
                    // 表示刚进入充电
                    flag_is_charge_begin = 1;
                    charge_anim_phase = 0;
                    // 刚进入充电，清空充满电的计数值
                    charge_fully_cnt = 0;
                    flag_is_in_charging = 1;
                }
            } else {
                is_not_charge_cnt++;
                if (is_not_charge_cnt >= (200 / 10)) {
                    is_not_charge_cnt = 0;
                    flag_is_in_charging = 0;
                }
            }

            key_scan();

            // 低电量关机
            if (flag_is_dev_working && bat_vol < BAT_VOL_OFF) {
                pen_pwr_off();           // 断开笔头的供电
                led_all_off();           // 关闭所有指示灯
                flag_is_dev_working = 0; // 表示设备关闭
            }

            // 如果不在充电、设备也没有在工作
            if ((CHARGE_PIN == 0) && (flag_is_dev_working == 0)) {
                // if (into_low_power_cnt < 255) {
                into_low_power_cnt++;
                // }
            } else {
                into_low_power_cnt = 0;
            }
        }

        cnt_dest_100ms++;
        if (cnt_dest_100ms >= 100) {
            cnt_dest_100ms = 0;
            // 每 100ms 进入一次

            led_status_handle();

            if (flag_is_dev_working) {
                /*
                    防止计数溢出

                    现在为了节省程序空间，省略了判断条件，
                    如果计数条件满足，会在主循环进入低功耗
                */
                // if (pwr_off_cnt < DEV_AUTO_SHUTDOWN_TIME) {
                pwr_off_cnt++;
                // }
            } else {
                // 不在工作，清空计数
                pwr_off_cnt = 0;
            }
        }
    }

    if (ADCIF) {
        ADCIF = 0;
        adc_sta = 0; // 表示adc完成了一次转换

        adc_val = ADB;
        adc_val <<= 4;
        adc_val += (ADR & 0x0f); // 12位AD数据

        if (0 == adc_val_cnt) {
            adc_val_sum = 0;
        }

        adc_val_sum += adc_val;
        adc_val_cnt++;
        if (adc_val_cnt >= ADC_FILTER_CNT) {
            bat_vol_tmp = ADC_VAL_TO_VOLTAGE((adc_val_sum / ADC_FILTER_CNT));
            adc_val_cnt = 0;

            if (0 == bat_vol) {
                // 第一次上电，或者是刚从低功耗唤醒
                bat_vol = bat_vol_tmp;
            }

            if (flag_is_dev_working) {
                // 正在放电，电量只能变小，不能变大
                if (bat_vol_tmp < bat_vol) {
                    bat_vol = bat_vol_tmp;
                }
            } else {
                // 正在充电或待机，电量只能变大，不能变小
                if (bat_vol_tmp > bat_vol) {
                    bat_vol = bat_vol_tmp;
                }
            }
        }
    }

    // if (PAIF) {
    //     PAIF = 0;
    // }
}