#include "pen_pwr_ctl.h"
#include "user_include.h"

void pen_pwr_on(void)
{
    TRISA &= ~(0x01 << 6); // 输出模式
    PA6 = 0;               // 输出低电平
}

void pen_pwr_off(void)
{
    PAHCON &= ~(0x01 << 6); // 不使能内部上拉
    PADCON &= ~(0x01 << 6); // 不使能内部下拉
    TRISA |= (0x01 << 6);   // 输入模式
}