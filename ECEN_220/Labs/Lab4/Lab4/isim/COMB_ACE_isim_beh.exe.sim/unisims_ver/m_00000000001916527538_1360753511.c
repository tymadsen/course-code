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



static void Gate_32_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 2112);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    xsi_vlog_notGate(t7, t3);
    t8 = (t0 + 2112);
    xsi_driver_vfirst_trans(t8, 0, 0);
    t9 = (t0 + 2060);
    *((int *)t9) = 1;

LAB1:    return;
}

static void Gate_33_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    t2 = (t0 + 876U);
    t5 = *((char **)t2);
    t2 = (t0 + 968U);
    t6 = *((char **)t2);
    t2 = (t0 + 2148);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    xsi_vlog_AndGate(t10, 4, t3, t4, t5, t6);
    t11 = (t0 + 2148);
    xsi_driver_vfirst_trans(t11, 0, 0);
    t12 = (t0 + 2068);
    *((int *)t12) = 1;

LAB1:    return;
}


extern void unisims_ver_m_00000000001916527538_1360753511_init()
{
	static char *pe[] = {(void *)Gate_32_0,(void *)Gate_33_1};
	xsi_register_didat("unisims_ver_m_00000000001916527538_1360753511", "isim/COMB_ACE_isim_beh.exe.sim/unisims_ver/m_00000000001916527538_1360753511.didat");
	xsi_register_executes(pe);
}
