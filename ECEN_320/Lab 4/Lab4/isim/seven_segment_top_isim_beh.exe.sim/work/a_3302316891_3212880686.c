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
static const char *ng0 = "//fs-caedm/tmadsen2/Courses/ECEN_320/Lab 4/Lab4/seven_segment_top.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_3302316891_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3180);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t4 = (t0 + 3264);
    t9 = (t4 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 32U);
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3302316891_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t2 = (t0 + 1420U);
    t3 = *((char **)t2);
    t2 = (t0 + 6012U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (32U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 3300);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 32U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 3188);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t7, 0);
    goto LAB6;

}

static void work_a_3302316891_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t1 = (t0 + 3336);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 3196);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3302316891_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 684U);
    t17 = *((char **)t16);
    t18 = (2 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB5;

LAB6:    t31 = (t0 + 684U);
    t32 = *((char **)t31);
    t33 = (1 - 3);
    t34 = (t33 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t31 = (t32 + t36);
    t37 = *((unsigned char *)t31);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB7;

LAB8:
LAB9:    t46 = (t0 + 6197);
    t48 = (t0 + 3372);
    t49 = (t48 + 32U);
    t50 = *((char **)t49);
    t51 = (t50 + 40U);
    t52 = *((char **)t51);
    memcpy(t52, t46, 4U);
    xsi_driver_first_trans_fast(t48);

LAB2:    t53 = (t0 + 3204);
    *((int *)t53) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 6185);
    t11 = (t0 + 3372);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB2;

LAB5:    t24 = (t0 + 6189);
    t26 = (t0 + 3372);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t24, 4U);
    xsi_driver_first_trans_fast(t26);
    goto LAB2;

LAB7:    t39 = (t0 + 6193);
    t41 = (t0 + 3372);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 4U);
    xsi_driver_first_trans_fast(t41);
    goto LAB2;

LAB10:    goto LAB2;

}

static void work_a_3302316891_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned char t52;
    unsigned char t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 684U);
    t17 = *((char **)t16);
    t18 = (2 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB5;

LAB6:    t31 = (t0 + 684U);
    t32 = *((char **)t31);
    t33 = (1 - 3);
    t34 = (t33 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t31 = (t32 + t36);
    t37 = *((unsigned char *)t31);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB7;

LAB8:    t46 = (t0 + 684U);
    t47 = *((char **)t46);
    t48 = (0 - 3);
    t49 = (t48 * -1);
    t50 = (1U * t49);
    t51 = (0 + t50);
    t46 = (t47 + t51);
    t52 = *((unsigned char *)t46);
    t53 = (t52 == (unsigned char)3);
    if (t53 != 0)
        goto LAB9;

LAB10:
LAB11:    t61 = (t0 + 6217);
    t63 = (t0 + 3408);
    t64 = (t63 + 32U);
    t65 = *((char **)t64);
    t66 = (t65 + 40U);
    t67 = *((char **)t66);
    memcpy(t67, t61, 4U);
    xsi_driver_first_trans_fast(t63);

LAB2:    t68 = (t0 + 3212);
    *((int *)t68) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 6201);
    t11 = (t0 + 3408);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB2;

LAB5:    t24 = (t0 + 6205);
    t26 = (t0 + 3408);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t24, 4U);
    xsi_driver_first_trans_fast(t26);
    goto LAB2;

LAB7:    t39 = (t0 + 6209);
    t41 = (t0 + 3408);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 4U);
    xsi_driver_first_trans_fast(t41);
    goto LAB2;

LAB9:    t54 = (t0 + 6213);
    t56 = (t0 + 3408);
    t57 = (t56 + 32U);
    t58 = *((char **)t57);
    t59 = (t58 + 40U);
    t60 = *((char **)t59);
    memcpy(t60, t54, 4U);
    xsi_driver_first_trans_fast(t56);
    goto LAB2;

LAB12:    goto LAB2;

}

static void work_a_3302316891_3212880686_p_5(char *t0)
{
    char t32[16];
    char t34[16];
    char t39[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t33;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    char *t40;
    int t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned char t53;
    unsigned char t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = (2 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 684U);
    t17 = *((char **)t16);
    t18 = (1 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB5;

LAB6:    t47 = (t0 + 684U);
    t48 = *((char **)t47);
    t49 = (0 - 3);
    t50 = (t49 * -1);
    t51 = (1U * t50);
    t52 = (0 + t51);
    t47 = (t48 + t52);
    t53 = *((unsigned char *)t47);
    t54 = (t53 == (unsigned char)3);
    if (t54 != 0)
        goto LAB9;

LAB10:
LAB11:    t65 = (t0 + 1604U);
    t66 = *((char **)t65);
    t67 = (31 - 31);
    t68 = (t67 * 1U);
    t69 = (0 + t68);
    t65 = (t66 + t69);
    t70 = (t0 + 3444);
    t71 = (t70 + 32U);
    t72 = *((char **)t71);
    t73 = (t72 + 40U);
    t74 = *((char **)t73);
    memcpy(t74, t65, 16U);
    xsi_driver_first_trans_fast(t70);

LAB2:    t75 = (t0 + 3220);
    *((int *)t75) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 6221);
    t11 = (t0 + 3444);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 16U);
    xsi_driver_first_trans_fast(t11);
    goto LAB2;

LAB5:    t24 = (t0 + 6237);
    t26 = (t0 + 776U);
    t27 = *((char **)t26);
    t28 = (7 - 7);
    t29 = (t28 * 1U);
    t30 = (0 + t29);
    t26 = (t27 + t30);
    t33 = ((IEEE_P_2592010699) + 2332);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 0;
    t36 = (t35 + 4U);
    *((int *)t36) = 7;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (7 - 0);
    t38 = (t37 * 1);
    t38 = (t38 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t38;
    t36 = (t39 + 0U);
    t40 = (t36 + 0U);
    *((int *)t40) = 7;
    t40 = (t36 + 4U);
    *((int *)t40) = 0;
    t40 = (t36 + 8U);
    *((int *)t40) = -1;
    t41 = (0 - 7);
    t38 = (t41 * -1);
    t38 = (t38 + 1);
    t40 = (t36 + 12U);
    *((unsigned int *)t40) = t38;
    t31 = xsi_base_array_concat(t31, t32, t33, (char)97, t24, t34, (char)97, t26, t39, (char)101);
    t38 = (8U + 8U);
    t42 = (16U != t38);
    if (t42 == 1)
        goto LAB7;

LAB8:    t40 = (t0 + 3444);
    t43 = (t40 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t31, 16U);
    xsi_driver_first_trans_fast(t40);
    goto LAB2;

LAB7:    xsi_size_not_matching(16U, t38, 0);
    goto LAB8;

LAB9:    t55 = (t0 + 1604U);
    t56 = *((char **)t55);
    t57 = (31 - 15);
    t58 = (t57 * 1U);
    t59 = (0 + t58);
    t55 = (t56 + t59);
    t60 = (t0 + 3444);
    t61 = (t60 + 32U);
    t62 = *((char **)t61);
    t63 = (t62 + 40U);
    t64 = *((char **)t63);
    memcpy(t64, t55, 16U);
    xsi_driver_first_trans_fast(t60);
    goto LAB2;

LAB12:    goto LAB2;

}


extern void work_a_3302316891_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3302316891_3212880686_p_0,(void *)work_a_3302316891_3212880686_p_1,(void *)work_a_3302316891_3212880686_p_2,(void *)work_a_3302316891_3212880686_p_3,(void *)work_a_3302316891_3212880686_p_4,(void *)work_a_3302316891_3212880686_p_5};
	xsi_register_didat("work_a_3302316891_3212880686", "isim/seven_segment_top_isim_beh.exe.sim/work/a_3302316891_3212880686.didat");
	xsi_register_executes(pe);
}
