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
static const char *ng0 = "//fs-caedm/tmadsen2/Courses/ECEN_320/Lab10/lab10/charGen.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2347715034_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t2 = (t0 + 6067);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB13:    t6 = (t0 + 6070);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB14:    t9 = (t0 + 6073);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB15:    t12 = (t0 + 6076);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB16:    t15 = (t0 + 6079);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB17:    t18 = (t0 + 6082);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB18:    t21 = (t0 + 6085);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB19:
LAB12:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (0 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(58, ng0);

LAB23:    t2 = (t0 + 3076);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB24;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t24 = (t0 + 1696U);
    t25 = *((char **)t24);
    t26 = (7 - 7);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = (t0 + 3144);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = t30;
    xsi_driver_first_trans_fast_port(t31);
    goto LAB4;

LAB6:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (6 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (5 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (4 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (3 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (2 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t5 = (1 - 7);
    t27 = (t5 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t2 = (t3 + t29);
    t30 = *((unsigned char *)t2);
    t4 = (t0 + 3144);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t30;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB20:;
LAB21:    t3 = (t0 + 3076);
    *((int *)t3) = 0;
    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}

static void work_a_2347715034_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3084);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 960U);
    t8 = *((char **)t4);
    t9 = (9 - 2);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t4 = (t8 + t11);
    t12 = (t0 + 3180);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 3U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 3216);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t9 = (9 - 3);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t4 + t11);
    t5 = (t0 + 3252);
    t8 = (t5 + 32U);
    t12 = *((char **)t8);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_2347715034_3212880686_p_2(char *t0)
{
    char t12[16];
    char t14[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (9 - 8);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 960U);
    t7 = *((char **)t6);
    t8 = (9 - 9);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t6 = (t7 + t10);
    t13 = ((IEEE_P_2592010699) + 2332);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 8;
    t16 = (t15 + 4U);
    *((int *)t16) = 4;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (4 - 8);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 9;
    t20 = (t16 + 4U);
    *((int *)t20) = 3;
    t20 = (t16 + 8U);
    *((int *)t20) = -1;
    t21 = (3 - 9);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t1, t14, (char)97, t6, t19, (char)101);
    t18 = (5U + 7U);
    t22 = (12U != t18);
    if (t22 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 3288);
    t23 = (t20 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 12U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t27 = (t0 + 3092);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(12U, t18, 0);
    goto LAB6;

}

static void work_a_2347715034_3212880686_p_3(char *t0)
{
    char t8[16];
    char t10[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t3 = (7 - 6);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1420U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 2332);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 6;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 6);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 5920U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t1, t10, (char)97, t7, t12, (char)101);
    t14 = (7U + 4U);
    t15 = (11U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 3324);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 11U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 3100);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(11U, t14, 0);
    goto LAB6;

}


extern void work_a_2347715034_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2347715034_3212880686_p_0,(void *)work_a_2347715034_3212880686_p_1,(void *)work_a_2347715034_3212880686_p_2,(void *)work_a_2347715034_3212880686_p_3};
	xsi_register_didat("work_a_2347715034_3212880686", "isim/charGen_top_isim_beh.exe.sim/work/a_2347715034_3212880686.didat");
	xsi_register_executes(pe);
}
