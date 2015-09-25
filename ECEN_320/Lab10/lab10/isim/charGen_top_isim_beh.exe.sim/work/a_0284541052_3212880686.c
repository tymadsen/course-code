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
static const char *ng0 = "//fs-caedm/tmadsen2/Courses/ECEN_320/Lab10/lab10/vga_timing.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1781543830_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3143221075_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0284541052_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5380);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5528);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t2 = (t0 + 5528);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

}

static void work_a_0284541052_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5564);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 5388);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5600);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 5396);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t11 = xsi_signal_has_event(t1);
    if (t11 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5404);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(76, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 5636);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1788U);
    t7 = *((char **)t2);
    t2 = (t0 + 5636);
    t8 = (t2 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t16 = *((char **)t10);
    memcpy(t16, t7, 10U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 1420U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    t3 = t15;
    goto LAB9;

LAB10:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t4 = t13;
    goto LAB12;

}

static void work_a_0284541052_3212880686_p_4(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t1 = (t0 + 9844U);
    t3 = (t0 + 2144U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 - 1);
    t7 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t6);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 1696U);
    t16 = *((char **)t15);
    t15 = (t0 + 9844U);
    t17 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t14, t16, t15, 1);
    t18 = (t14 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (10U != t20);
    if (t21 == 1)
        goto LAB7;

LAB8:    t22 = (t0 + 5672);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 10U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 5412);
    *((int *)t27) = 1;

LAB1:    return;
LAB3:    t3 = xsi_get_transient_memory(10U);
    memset(t3, 0, 10U);
    t8 = t3;
    memset(t8, (unsigned char)2, 10U);
    t9 = (t0 + 5672);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 10U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(10U, t20, 0);
    goto LAB8;

}

static void work_a_0284541052_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t1 = (t0 + 5708);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5420);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_6(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t2 = (t0 + 9844U);
    t4 = (t0 + 2212U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 2348U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t6 + t8);
    t10 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t3, t2, t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 1696U);
    t11 = *((char **)t4);
    t4 = (t0 + 9844U);
    t12 = (t0 + 2144U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    t12 = (t0 + 2416U);
    t15 = *((char **)t12);
    t16 = *((int *)t15);
    t17 = (t14 - t16);
    t18 = (t17 - 1);
    t19 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t11, t4, t18);
    t1 = t19;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t24 = (t0 + 5744);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t24);

LAB2:    t29 = (t0 + 5428);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 5744);
    t20 = (t12 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t1 = (t0 + 9844U);
    t3 = (t0 + 2212U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 - 1);
    t7 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t6);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t12 = (t0 + 5780);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t12);

LAB2:    t17 = (t0 + 5436);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 5780);
    t8 = (t3 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    int t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t12 = xsi_signal_has_event(t1);
    if (t12 == 1)
        goto LAB13;

LAB14:    t11 = (unsigned char)0;

LAB15:    if (t11 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5444);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(98, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 5816);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(100, ng0);
    t8 = (t0 + 1972U);
    t10 = *((char **)t8);
    t8 = (t0 + 5816);
    t20 = (t8 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t10, 10U);
    xsi_driver_first_trans_fast(t8);
    goto LAB3;

LAB7:    t2 = (t0 + 1696U);
    t7 = *((char **)t2);
    t2 = (t0 + 9844U);
    t8 = (t0 + 2144U);
    t9 = *((char **)t8);
    t17 = *((int *)t9);
    t18 = (t17 - 1);
    t19 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t7, t2, t18);
    t3 = t19;
    goto LAB9;

LAB10:    t2 = (t0 + 1420U);
    t6 = *((char **)t2);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)3);
    t4 = t16;
    goto LAB12;

LAB13:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)3);
    t11 = t14;
    goto LAB15;

}

static void work_a_0284541052_3212880686_p_9(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t1 = (t0 + 9844U);
    t3 = (t0 + 2484U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 - 1);
    t7 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t6);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 1880U);
    t16 = *((char **)t15);
    t15 = (t0 + 9844U);
    t17 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t14, t16, t15, 1);
    t18 = (t14 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (10U != t20);
    if (t21 == 1)
        goto LAB7;

LAB8:    t22 = (t0 + 5852);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 10U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 5452);
    *((int *)t27) = 1;

LAB1:    return;
LAB3:    t3 = xsi_get_transient_memory(10U);
    memset(t3, 0, 10U);
    t8 = t3;
    memset(t8, (unsigned char)2, 10U);
    t9 = (t0 + 5852);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 10U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(10U, t20, 0);
    goto LAB8;

}

static void work_a_0284541052_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(108, ng0);

LAB3:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t1 = (t0 + 5888);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5460);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_11(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1880U);
    t3 = *((char **)t2);
    t2 = (t0 + 9844U);
    t4 = (t0 + 2552U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 2688U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t6 + t8);
    t10 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t3, t2, t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 1880U);
    t11 = *((char **)t4);
    t4 = (t0 + 9844U);
    t12 = (t0 + 2484U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    t12 = (t0 + 2756U);
    t15 = *((char **)t12);
    t16 = *((int *)t15);
    t17 = (t14 - t16);
    t18 = (t17 - 1);
    t19 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t11, t4, t18);
    t1 = t19;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t24 = (t0 + 5924);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t24);

LAB2:    t29 = (t0 + 5468);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 5924);
    t20 = (t12 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_12(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t1 = (t0 + 9844U);
    t3 = (t0 + 2552U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 - 1);
    t7 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t6);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t12 = (t0 + 5960);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t12);

LAB2:    t17 = (t0 + 5476);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 5960);
    t8 = (t3 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0284541052_3212880686_p_13(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1880U);
    t3 = *((char **)t2);
    t2 = (t0 + 9844U);
    t4 = (t0 + 2552U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t7 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t3, t2, t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 1696U);
    t8 = *((char **)t4);
    t4 = (t0 + 9844U);
    t9 = (t0 + 2212U);
    t10 = *((char **)t9);
    t11 = *((int *)t10);
    t12 = ieee_p_1242562249_sub_3143221075_1035706684(IEEE_P_1242562249, t8, t4, t11);
    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t17 = (t0 + 5996);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 5484);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 5996);
    t13 = (t9 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_0284541052_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0284541052_3212880686_p_0,(void *)work_a_0284541052_3212880686_p_1,(void *)work_a_0284541052_3212880686_p_2,(void *)work_a_0284541052_3212880686_p_3,(void *)work_a_0284541052_3212880686_p_4,(void *)work_a_0284541052_3212880686_p_5,(void *)work_a_0284541052_3212880686_p_6,(void *)work_a_0284541052_3212880686_p_7,(void *)work_a_0284541052_3212880686_p_8,(void *)work_a_0284541052_3212880686_p_9,(void *)work_a_0284541052_3212880686_p_10,(void *)work_a_0284541052_3212880686_p_11,(void *)work_a_0284541052_3212880686_p_12,(void *)work_a_0284541052_3212880686_p_13};
	xsi_register_didat("work_a_0284541052_3212880686", "isim/charGen_top_isim_beh.exe.sim/work/a_0284541052_3212880686.didat");
	xsi_register_executes(pe);
}
