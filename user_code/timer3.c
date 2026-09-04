#include "timer3.h"

void timer3_init(void)
{
    T3C0 = 0;
    T3C2 = 0;
    T3TL = (0xFFFF - TIMER3_CNT) % 256; // 初值低8位
    T3TH = (0xFFFF - TIMER3_CNT) / 256; // 初值高8位
    T3C1 = TIMER3_DIV_4_REG_VAL;

	T3REN = 1;
    T3IF = 0;
    T3IE = 1;
    PEIE = 1;
    GIE = 1;
}