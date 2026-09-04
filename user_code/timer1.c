#include "timer1.h"

void timer1_init(void)
{
    // TODO 为了节省程序空间，可以不填初始值
    T1TL = (0xFFFF - TIMER1_CNT) % 256; // 初值低8位
    T1TH = (0xFFFF - TIMER1_CNT) / 256; // 初值高8位

    T1CON = TIMER1_DIV_4_REG_VAL << 4; // 分频系数
    T1IF = 0;                          // timer1 溢出标志位
    T1IE = 1;                          // timer1 中断使能位
    PEIE = 1;                          // 外设 中断总使能
    T1REN = 1;                         // timer1 启动位
    GIE = 1;                           // 总中断
}

