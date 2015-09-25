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



static void Initial_34_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 264);
    t2 = *((char **)t1);
    t1 = (t0 + 1276);
    xsi_vlogvar_assign_value(t1, t2, 0, 0, 16);

LAB1:    return;
}

static void Cont_37_1(char *t0)
{
    char t5[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 1944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1276);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1276);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t10 = (t0 + 772U);
    t11 = *((char **)t10);
    t10 = (t0 + 864U);
    t12 = *((char **)t10);
    t10 = (t0 + 956U);
    t13 = *((char **)t10);
    t10 = (t0 + 1048U);
    t14 = *((char **)t10);
    xsi_vlogtype_concat(t9, 4, 4, 4U, t14, 1, t13, 1, t12, 1, t11, 1);
    xsi_vlog_generic_get_index_select_value(t5, 1, t4, t8, 2, t9, 4, 2);
    t10 = (t0 + 2184);
    t15 = (t10 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t27 = (t0 + 2140);
    *((int *)t27) = 1;

LAB1:    return;
}


extern void unisims_ver_m_00000000001701231200_2876143929_init()
{
	static char *pe[] = {(void *)Initial_34_0,(void *)Cont_37_1};
	xsi_register_didat("unisims_ver_m_00000000001701231200_2876143929", "isim/ROM_BDFG_isim_beh.exe.sim/unisims_ver/m_00000000001701231200_2876143929.didat");
	xsi_register_executes(pe);
}

extern void unisims_ver_m_00000000001701231200_1761753807_init()
{
	static char *pe[] = {(void *)Initial_34_0,(void *)Cont_37_1};
	xsi_register_didat("unisims_ver_m_00000000001701231200_1761753807", "isim/ROM_BDFG_isim_beh.exe.sim/unisims_ver/m_00000000001701231200_1761753807.didat");
	xsi_register_executes(pe);
}

extern void unisims_ver_m_00000000001701231200_2519569688_init()
{
	static char *pe[] = {(void *)Initial_34_0,(void *)Cont_37_1};
	xsi_register_didat("unisims_ver_m_00000000001701231200_2519569688", "isim/ROM_BDFG_isim_beh.exe.sim/unisims_ver/m_00000000001701231200_2519569688.didat");
	xsi_register_executes(pe);
}

extern void unisims_ver_m_00000000001701231200_3537979569_init()
{
	static char *pe[] = {(void *)Initial_34_0,(void *)Cont_37_1};
	xsi_register_didat("unisims_ver_m_00000000001701231200_3537979569", "isim/ROM_BDFG_isim_beh.exe.sim/unisims_ver/m_00000000001701231200_3537979569.didat");
	xsi_register_executes(pe);
}
