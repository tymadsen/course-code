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
static const char *ng0 = "//fs-caedm/tmadsen2/Courses/ECEN 220/Labs/Lab12/Memory.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};



static void Always_54_0(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 1812U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2008);
    *((int *)t2) = 1;
    t3 = (t0 + 1840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB12;

LAB13:
LAB14:
LAB11:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(56, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1288);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 16);
    goto LAB11;

LAB12:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1060U);
    t5 = *((char **)t4);
    memset(t30, 0, 8);
    t4 = (t5 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t4) != 0)
        goto LAB17;

LAB18:    t8 = (t30 + 4);
    t19 = *((unsigned int *)t30);
    t20 = *((unsigned int *)t8);
    t23 = (t19 || t20);
    if (t23 > 0)
        goto LAB19;

LAB20:    t24 = *((unsigned int *)t30);
    t25 = (~(t24));
    t26 = *((unsigned int *)t8);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t8) > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t30) > 0)
        goto LAB25;

LAB26:    memcpy(t6, t28, 8);

LAB27:    t21 = (t0 + 1288);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 16);
    goto LAB14;

LAB15:    *((unsigned int *)t30) = 1;
    goto LAB18;

LAB17:    t7 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB19:    t21 = (t0 + 692U);
    t22 = *((char **)t21);
    goto LAB20;

LAB21:    t21 = (t0 + 600U);
    t28 = *((char **)t21);
    goto LAB22;

LAB23:    xsi_vlog_unsigned_bit_combine(t6, 16, t22, 16, t28, 16);
    goto LAB27;

LAB25:    memcpy(t6, t22, 8);
    goto LAB27;

}


extern void work_m_00000000001763018228_1802770963_init()
{
	static char *pe[] = {(void *)Always_54_0};
	xsi_register_didat("work_m_00000000001763018228_1802770963", "isim/FullLC3_isim_beh.exe.sim/work/m_00000000001763018228_1802770963.didat");
	xsi_register_executes(pe);
}
