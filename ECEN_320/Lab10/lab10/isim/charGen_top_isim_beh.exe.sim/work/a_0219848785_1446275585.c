/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//fs-caedm/tmadsen2/Courses/ECEN_320/Lab10/lab10/char_mem.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_0219848785_1446275585_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(331, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2372);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(332, ng0);
    t4 = (t0 + 868U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(335, ng0);
    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t2 = (t0 + 2460);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(333, ng0);
    t4 = (t0 + 960U);
    t11 = *((char **)t4);
    t4 = (t0 + 776U);
    t12 = *((char **)t4);
    t4 = (t0 + 4560U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t12, t4);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    t16 = (8U * t15);
    t17 = (0U + t16);
    t18 = (t0 + 2424);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 8U);
    xsi_driver_first_trans_delta(t18, t17, 8U, 0LL);
    goto LAB9;

}

static void work_a_0219848785_1446275585_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(338, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 1144U);
    t3 = *((char **)t1);
    t1 = (t0 + 4640U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 4095, 1, t4);
    t7 = (8U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 2496);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 2380);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0219848785_1446275585_init()
{
	static char *pe[] = {(void *)work_a_0219848785_1446275585_p_0,(void *)work_a_0219848785_1446275585_p_1};
	xsi_register_didat("work_a_0219848785_1446275585", "isim/charGen_top_isim_beh.exe.sim/work/a_0219848785_1446275585.didat");
	xsi_register_executes(pe);
}
