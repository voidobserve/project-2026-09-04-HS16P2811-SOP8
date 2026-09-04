

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
#include "timer1.h"
#include "timer3.h"

volatile bit flag_is_in_charging;
volatile bit flag_is_dev_working;

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

    WDTE = 1; //  WDT（看门狗定时器）使能位	;0-DIS, 1-EN

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



void main(void)
{
    System_Init();
    GPIO_Init();
    CLR_RAM_EveryBank();

    // 按键检测脚 输入上拉
    PAHCON &= ~(0x01 << 0);
    TRISA |= (0x01 << 0);
    // 控制笔头电源的引脚 输入
    TRISA |= (0x01 << 6);
    // 滚珠检测脚 输入
    TRISA |= (0x01 << 7);
    // 充电检测脚 输入
    TRISA |= (0x01 << 5);

    timer1_init();
    timer3_init();
    delay_ms(10);

    while (1) {
        CLRWDT();
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
    }

    if (T3IF) {
        // 目前 1ms 进入一次
        T3IF = 0;
        T3TL = (0xFFFF - TIMER3_CNT) % 256; // 初值低8位
        T3TH = (0xFFFF - TIMER3_CNT) / 256; // 初值高8位
    }
}