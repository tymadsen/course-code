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
extern char *STD_TEXTIO;
extern char *IEEE_P_2592010699;
extern char *STD_STANDARD;
extern char *IEEE_P_3564397177;
static const char *ng4 = "//fs-caedm/tmadsen2/Courses/ECEN_320/Lab 4/Lab4/tb_seven_segment_control.vhd";

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );


unsigned char work_a_2531697815_1949178628_sub_3540452626_1207921752(char *t1, char *t2, char *t3, unsigned char t4, char *t5, char *t6)
{
    char t7[1408];
    char t8[40];
    char t9[16];
    char t14[16];
    char t17[16];
    char t20[16];
    char t28[16];
    char t34[8];
    char t41[8];
    char t44[16];
    char t50[8];
    char t57[8];
    char t62[16];
    char t68[8];
    char t74[16];
    char t80[8];
    char t86[16];
    char t92[8];
    char t98[16];
    char t104[8];
    char t110[16];
    char t116[8];
    char t122[16];
    char t128[8];
    char t134[16];
    char t140[8];
    char t146[16];
    char t152[8];
    char t158[16];
    char t164[8];
    char t170[16];
    char t176[8];
    char t182[16];
    char t188[8];
    char t194[16];
    char t200[8];
    char t206[16];
    char t212[8];
    char t218[16];
    char t224[8];
    char t230[16];
    char t236[8];
    char t242[16];
    char t248[8];
    char t271[16];
    unsigned char t0;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t15;
    int t16;
    char *t18;
    int t19;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    int t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t63;
    char *t64;
    int t65;
    char *t66;
    char *t67;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t75;
    char *t76;
    int t77;
    char *t78;
    char *t79;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t87;
    char *t88;
    int t89;
    char *t90;
    char *t91;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t99;
    char *t100;
    int t101;
    char *t102;
    char *t103;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    char *t111;
    char *t112;
    int t113;
    char *t114;
    char *t115;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t123;
    char *t124;
    int t125;
    char *t126;
    char *t127;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t135;
    char *t136;
    int t137;
    char *t138;
    char *t139;
    char *t141;
    char *t142;
    char *t143;
    char *t144;
    char *t147;
    char *t148;
    int t149;
    char *t150;
    char *t151;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    char *t159;
    char *t160;
    int t161;
    char *t162;
    char *t163;
    char *t165;
    char *t166;
    char *t167;
    char *t168;
    char *t171;
    char *t172;
    int t173;
    char *t174;
    char *t175;
    char *t177;
    char *t178;
    char *t179;
    char *t180;
    char *t183;
    char *t184;
    int t185;
    char *t186;
    char *t187;
    char *t189;
    char *t190;
    char *t191;
    char *t192;
    char *t195;
    char *t196;
    int t197;
    char *t198;
    char *t199;
    char *t201;
    char *t202;
    char *t203;
    char *t204;
    char *t207;
    char *t208;
    int t209;
    char *t210;
    char *t211;
    char *t213;
    char *t214;
    char *t215;
    char *t216;
    char *t219;
    char *t220;
    int t221;
    char *t222;
    char *t223;
    char *t225;
    char *t226;
    char *t227;
    char *t228;
    char *t231;
    char *t232;
    int t233;
    char *t234;
    char *t235;
    char *t237;
    char *t238;
    char *t239;
    char *t240;
    char *t243;
    char *t244;
    int t245;
    char *t246;
    char *t247;
    char *t249;
    char *t250;
    char *t251;
    char *t252;
    unsigned char t253;
    char *t254;
    char *t255;
    unsigned char t256;
    char *t257;
    char *t258;
    char *t259;
    unsigned char t260;
    char *t261;
    char *t262;
    unsigned char t263;
    char *t264;
    char *t265;
    char *t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    int64 t272;
    unsigned char t273;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 3;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 3);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t14 + 0U);
    t15 = (t11 + 0U);
    *((int *)t15) = 6;
    t15 = (t11 + 4U);
    *((int *)t15) = 0;
    t15 = (t11 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 6);
    t13 = (t16 * -1);
    t13 = (t13 + 1);
    t15 = (t11 + 12U);
    *((unsigned int *)t15) = t13;
    t15 = (t17 + 0U);
    t18 = (t15 + 0U);
    *((int *)t18) = 3;
    t18 = (t15 + 4U);
    *((int *)t18) = 0;
    t18 = (t15 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 3);
    t13 = (t19 * -1);
    t13 = (t13 + 1);
    t18 = (t15 + 12U);
    *((unsigned int *)t18) = t13;
    t18 = (t20 + 0U);
    t21 = (t18 + 0U);
    *((int *)t21) = 15;
    t21 = (t18 + 4U);
    *((int *)t21) = 0;
    t21 = (t18 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 15);
    t13 = (t22 * -1);
    t13 = (t13 + 1);
    t21 = (t18 + 12U);
    *((unsigned int *)t21) = t13;
    t21 = (t7 + 4U);
    t23 = ((STD_TEXTIO) + 1944);
    t24 = (t21 + 32U);
    *((char **)t24) = t23;
    t25 = (t21 + 24U);
    *((char **)t25) = 0;
    t26 = (t21 + 36U);
    *((int *)t26) = 1;
    t27 = (t21 + 28U);
    *((char **)t27) = 0;
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 3;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = -1;
    t31 = (0 - 3);
    t13 = (t31 * -1);
    t13 = (t13 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t13;
    t30 = (t7 + 44U);
    t32 = ((IEEE_P_2592010699) + 2332);
    t33 = (t30 + 52U);
    *((char **)t33) = t32;
    t35 = (t30 + 36U);
    *((char **)t35) = t34;
    xsi_type_set_default_value(t32, t34, t28);
    t36 = (t30 + 40U);
    *((char **)t36) = t28;
    t37 = (t30 + 48U);
    *((unsigned int *)t37) = 4U;
    t38 = (t7 + 112U);
    t39 = ((IEEE_P_2592010699) + 1912);
    t40 = (t38 + 52U);
    *((char **)t40) = t39;
    t42 = (t38 + 36U);
    *((char **)t42) = t41;
    xsi_type_set_default_value(t39, t41, 0);
    t43 = (t38 + 48U);
    *((unsigned int *)t43) = 1U;
    t45 = (t44 + 0U);
    t46 = (t45 + 0U);
    *((int *)t46) = 6;
    t46 = (t45 + 4U);
    *((int *)t46) = 0;
    t46 = (t45 + 8U);
    *((int *)t46) = -1;
    t47 = (0 - 6);
    t13 = (t47 * -1);
    t13 = (t13 + 1);
    t46 = (t45 + 12U);
    *((unsigned int *)t46) = t13;
    t46 = (t7 + 180U);
    t48 = ((IEEE_P_2592010699) + 2332);
    t49 = (t46 + 52U);
    *((char **)t49) = t48;
    t51 = (t46 + 36U);
    *((char **)t51) = t50;
    xsi_type_set_default_value(t48, t50, t44);
    t52 = (t46 + 40U);
    *((char **)t52) = t44;
    t53 = (t46 + 48U);
    *((unsigned int *)t53) = 7U;
    t54 = (t7 + 248U);
    t55 = ((STD_STANDARD) + 0);
    t56 = (t54 + 52U);
    *((char **)t56) = t55;
    t58 = (t54 + 36U);
    *((char **)t58) = t57;
    *((unsigned char *)t57) = (unsigned char)1;
    t59 = (t54 + 48U);
    *((unsigned int *)t59) = 1U;
    t60 = (t1 + 7184);
    t63 = (t62 + 0U);
    t64 = (t63 + 0U);
    *((int *)t64) = 6;
    t64 = (t63 + 4U);
    *((int *)t64) = 0;
    t64 = (t63 + 8U);
    *((int *)t64) = -1;
    t65 = (0 - 6);
    t13 = (t65 * -1);
    t13 = (t13 + 1);
    t64 = (t63 + 12U);
    *((unsigned int *)t64) = t13;
    t64 = (t7 + 316U);
    t66 = ((IEEE_P_2592010699) + 2332);
    t67 = (t64 + 52U);
    *((char **)t67) = t66;
    t69 = (t64 + 36U);
    *((char **)t69) = t68;
    memcpy(t68, t60, 7U);
    t70 = (t64 + 40U);
    *((char **)t70) = t62;
    t71 = (t64 + 48U);
    *((unsigned int *)t71) = 7U;
    t72 = (t1 + 7191);
    t75 = (t74 + 0U);
    t76 = (t75 + 0U);
    *((int *)t76) = 6;
    t76 = (t75 + 4U);
    *((int *)t76) = 0;
    t76 = (t75 + 8U);
    *((int *)t76) = -1;
    t77 = (0 - 6);
    t13 = (t77 * -1);
    t13 = (t13 + 1);
    t76 = (t75 + 12U);
    *((unsigned int *)t76) = t13;
    t76 = (t7 + 384U);
    t78 = ((IEEE_P_2592010699) + 2332);
    t79 = (t76 + 52U);
    *((char **)t79) = t78;
    t81 = (t76 + 36U);
    *((char **)t81) = t80;
    memcpy(t80, t72, 7U);
    t82 = (t76 + 40U);
    *((char **)t82) = t74;
    t83 = (t76 + 48U);
    *((unsigned int *)t83) = 7U;
    t84 = (t1 + 7198);
    t87 = (t86 + 0U);
    t88 = (t87 + 0U);
    *((int *)t88) = 6;
    t88 = (t87 + 4U);
    *((int *)t88) = 0;
    t88 = (t87 + 8U);
    *((int *)t88) = -1;
    t89 = (0 - 6);
    t13 = (t89 * -1);
    t13 = (t13 + 1);
    t88 = (t87 + 12U);
    *((unsigned int *)t88) = t13;
    t88 = (t7 + 452U);
    t90 = ((IEEE_P_2592010699) + 2332);
    t91 = (t88 + 52U);
    *((char **)t91) = t90;
    t93 = (t88 + 36U);
    *((char **)t93) = t92;
    memcpy(t92, t84, 7U);
    t94 = (t88 + 40U);
    *((char **)t94) = t86;
    t95 = (t88 + 48U);
    *((unsigned int *)t95) = 7U;
    t96 = (t1 + 7205);
    t99 = (t98 + 0U);
    t100 = (t99 + 0U);
    *((int *)t100) = 6;
    t100 = (t99 + 4U);
    *((int *)t100) = 0;
    t100 = (t99 + 8U);
    *((int *)t100) = -1;
    t101 = (0 - 6);
    t13 = (t101 * -1);
    t13 = (t13 + 1);
    t100 = (t99 + 12U);
    *((unsigned int *)t100) = t13;
    t100 = (t7 + 520U);
    t102 = ((IEEE_P_2592010699) + 2332);
    t103 = (t100 + 52U);
    *((char **)t103) = t102;
    t105 = (t100 + 36U);
    *((char **)t105) = t104;
    memcpy(t104, t96, 7U);
    t106 = (t100 + 40U);
    *((char **)t106) = t98;
    t107 = (t100 + 48U);
    *((unsigned int *)t107) = 7U;
    t108 = (t1 + 7212);
    t111 = (t110 + 0U);
    t112 = (t111 + 0U);
    *((int *)t112) = 6;
    t112 = (t111 + 4U);
    *((int *)t112) = 0;
    t112 = (t111 + 8U);
    *((int *)t112) = -1;
    t113 = (0 - 6);
    t13 = (t113 * -1);
    t13 = (t13 + 1);
    t112 = (t111 + 12U);
    *((unsigned int *)t112) = t13;
    t112 = (t7 + 588U);
    t114 = ((IEEE_P_2592010699) + 2332);
    t115 = (t112 + 52U);
    *((char **)t115) = t114;
    t117 = (t112 + 36U);
    *((char **)t117) = t116;
    memcpy(t116, t108, 7U);
    t118 = (t112 + 40U);
    *((char **)t118) = t110;
    t119 = (t112 + 48U);
    *((unsigned int *)t119) = 7U;
    t120 = (t1 + 7219);
    t123 = (t122 + 0U);
    t124 = (t123 + 0U);
    *((int *)t124) = 6;
    t124 = (t123 + 4U);
    *((int *)t124) = 0;
    t124 = (t123 + 8U);
    *((int *)t124) = -1;
    t125 = (0 - 6);
    t13 = (t125 * -1);
    t13 = (t13 + 1);
    t124 = (t123 + 12U);
    *((unsigned int *)t124) = t13;
    t124 = (t7 + 656U);
    t126 = ((IEEE_P_2592010699) + 2332);
    t127 = (t124 + 52U);
    *((char **)t127) = t126;
    t129 = (t124 + 36U);
    *((char **)t129) = t128;
    memcpy(t128, t120, 7U);
    t130 = (t124 + 40U);
    *((char **)t130) = t122;
    t131 = (t124 + 48U);
    *((unsigned int *)t131) = 7U;
    t132 = (t1 + 7226);
    t135 = (t134 + 0U);
    t136 = (t135 + 0U);
    *((int *)t136) = 6;
    t136 = (t135 + 4U);
    *((int *)t136) = 0;
    t136 = (t135 + 8U);
    *((int *)t136) = -1;
    t137 = (0 - 6);
    t13 = (t137 * -1);
    t13 = (t13 + 1);
    t136 = (t135 + 12U);
    *((unsigned int *)t136) = t13;
    t136 = (t7 + 724U);
    t138 = ((IEEE_P_2592010699) + 2332);
    t139 = (t136 + 52U);
    *((char **)t139) = t138;
    t141 = (t136 + 36U);
    *((char **)t141) = t140;
    memcpy(t140, t132, 7U);
    t142 = (t136 + 40U);
    *((char **)t142) = t134;
    t143 = (t136 + 48U);
    *((unsigned int *)t143) = 7U;
    t144 = (t1 + 7233);
    t147 = (t146 + 0U);
    t148 = (t147 + 0U);
    *((int *)t148) = 6;
    t148 = (t147 + 4U);
    *((int *)t148) = 0;
    t148 = (t147 + 8U);
    *((int *)t148) = -1;
    t149 = (0 - 6);
    t13 = (t149 * -1);
    t13 = (t13 + 1);
    t148 = (t147 + 12U);
    *((unsigned int *)t148) = t13;
    t148 = (t7 + 792U);
    t150 = ((IEEE_P_2592010699) + 2332);
    t151 = (t148 + 52U);
    *((char **)t151) = t150;
    t153 = (t148 + 36U);
    *((char **)t153) = t152;
    memcpy(t152, t144, 7U);
    t154 = (t148 + 40U);
    *((char **)t154) = t146;
    t155 = (t148 + 48U);
    *((unsigned int *)t155) = 7U;
    t156 = (t1 + 7240);
    t159 = (t158 + 0U);
    t160 = (t159 + 0U);
    *((int *)t160) = 6;
    t160 = (t159 + 4U);
    *((int *)t160) = 0;
    t160 = (t159 + 8U);
    *((int *)t160) = -1;
    t161 = (0 - 6);
    t13 = (t161 * -1);
    t13 = (t13 + 1);
    t160 = (t159 + 12U);
    *((unsigned int *)t160) = t13;
    t160 = (t7 + 860U);
    t162 = ((IEEE_P_2592010699) + 2332);
    t163 = (t160 + 52U);
    *((char **)t163) = t162;
    t165 = (t160 + 36U);
    *((char **)t165) = t164;
    memcpy(t164, t156, 7U);
    t166 = (t160 + 40U);
    *((char **)t166) = t158;
    t167 = (t160 + 48U);
    *((unsigned int *)t167) = 7U;
    t168 = (t1 + 7247);
    t171 = (t170 + 0U);
    t172 = (t171 + 0U);
    *((int *)t172) = 6;
    t172 = (t171 + 4U);
    *((int *)t172) = 0;
    t172 = (t171 + 8U);
    *((int *)t172) = -1;
    t173 = (0 - 6);
    t13 = (t173 * -1);
    t13 = (t13 + 1);
    t172 = (t171 + 12U);
    *((unsigned int *)t172) = t13;
    t172 = (t7 + 928U);
    t174 = ((IEEE_P_2592010699) + 2332);
    t175 = (t172 + 52U);
    *((char **)t175) = t174;
    t177 = (t172 + 36U);
    *((char **)t177) = t176;
    memcpy(t176, t168, 7U);
    t178 = (t172 + 40U);
    *((char **)t178) = t170;
    t179 = (t172 + 48U);
    *((unsigned int *)t179) = 7U;
    t180 = (t1 + 7254);
    t183 = (t182 + 0U);
    t184 = (t183 + 0U);
    *((int *)t184) = 6;
    t184 = (t183 + 4U);
    *((int *)t184) = 0;
    t184 = (t183 + 8U);
    *((int *)t184) = -1;
    t185 = (0 - 6);
    t13 = (t185 * -1);
    t13 = (t13 + 1);
    t184 = (t183 + 12U);
    *((unsigned int *)t184) = t13;
    t184 = (t7 + 996U);
    t186 = ((IEEE_P_2592010699) + 2332);
    t187 = (t184 + 52U);
    *((char **)t187) = t186;
    t189 = (t184 + 36U);
    *((char **)t189) = t188;
    memcpy(t188, t180, 7U);
    t190 = (t184 + 40U);
    *((char **)t190) = t182;
    t191 = (t184 + 48U);
    *((unsigned int *)t191) = 7U;
    t192 = (t1 + 7261);
    t195 = (t194 + 0U);
    t196 = (t195 + 0U);
    *((int *)t196) = 6;
    t196 = (t195 + 4U);
    *((int *)t196) = 0;
    t196 = (t195 + 8U);
    *((int *)t196) = -1;
    t197 = (0 - 6);
    t13 = (t197 * -1);
    t13 = (t13 + 1);
    t196 = (t195 + 12U);
    *((unsigned int *)t196) = t13;
    t196 = (t7 + 1064U);
    t198 = ((IEEE_P_2592010699) + 2332);
    t199 = (t196 + 52U);
    *((char **)t199) = t198;
    t201 = (t196 + 36U);
    *((char **)t201) = t200;
    memcpy(t200, t192, 7U);
    t202 = (t196 + 40U);
    *((char **)t202) = t194;
    t203 = (t196 + 48U);
    *((unsigned int *)t203) = 7U;
    t204 = (t1 + 7268);
    t207 = (t206 + 0U);
    t208 = (t207 + 0U);
    *((int *)t208) = 6;
    t208 = (t207 + 4U);
    *((int *)t208) = 0;
    t208 = (t207 + 8U);
    *((int *)t208) = -1;
    t209 = (0 - 6);
    t13 = (t209 * -1);
    t13 = (t13 + 1);
    t208 = (t207 + 12U);
    *((unsigned int *)t208) = t13;
    t208 = (t7 + 1132U);
    t210 = ((IEEE_P_2592010699) + 2332);
    t211 = (t208 + 52U);
    *((char **)t211) = t210;
    t213 = (t208 + 36U);
    *((char **)t213) = t212;
    memcpy(t212, t204, 7U);
    t214 = (t208 + 40U);
    *((char **)t214) = t206;
    t215 = (t208 + 48U);
    *((unsigned int *)t215) = 7U;
    t216 = (t1 + 7275);
    t219 = (t218 + 0U);
    t220 = (t219 + 0U);
    *((int *)t220) = 6;
    t220 = (t219 + 4U);
    *((int *)t220) = 0;
    t220 = (t219 + 8U);
    *((int *)t220) = -1;
    t221 = (0 - 6);
    t13 = (t221 * -1);
    t13 = (t13 + 1);
    t220 = (t219 + 12U);
    *((unsigned int *)t220) = t13;
    t220 = (t7 + 1200U);
    t222 = ((IEEE_P_2592010699) + 2332);
    t223 = (t220 + 52U);
    *((char **)t223) = t222;
    t225 = (t220 + 36U);
    *((char **)t225) = t224;
    memcpy(t224, t216, 7U);
    t226 = (t220 + 40U);
    *((char **)t226) = t218;
    t227 = (t220 + 48U);
    *((unsigned int *)t227) = 7U;
    t228 = (t1 + 7282);
    t231 = (t230 + 0U);
    t232 = (t231 + 0U);
    *((int *)t232) = 6;
    t232 = (t231 + 4U);
    *((int *)t232) = 0;
    t232 = (t231 + 8U);
    *((int *)t232) = -1;
    t233 = (0 - 6);
    t13 = (t233 * -1);
    t13 = (t13 + 1);
    t232 = (t231 + 12U);
    *((unsigned int *)t232) = t13;
    t232 = (t7 + 1268U);
    t234 = ((IEEE_P_2592010699) + 2332);
    t235 = (t232 + 52U);
    *((char **)t235) = t234;
    t237 = (t232 + 36U);
    *((char **)t237) = t236;
    memcpy(t236, t228, 7U);
    t238 = (t232 + 40U);
    *((char **)t238) = t230;
    t239 = (t232 + 48U);
    *((unsigned int *)t239) = 7U;
    t240 = (t1 + 7289);
    t243 = (t242 + 0U);
    t244 = (t243 + 0U);
    *((int *)t244) = 6;
    t244 = (t243 + 4U);
    *((int *)t244) = 0;
    t244 = (t243 + 8U);
    *((int *)t244) = -1;
    t245 = (0 - 6);
    t13 = (t245 * -1);
    t13 = (t13 + 1);
    t244 = (t243 + 12U);
    *((unsigned int *)t244) = t13;
    t244 = (t7 + 1336U);
    t246 = ((IEEE_P_2592010699) + 2332);
    t247 = (t244 + 52U);
    *((char **)t247) = t246;
    t249 = (t244 + 36U);
    *((char **)t249) = t248;
    memcpy(t248, t240, 7U);
    t250 = (t244 + 40U);
    *((char **)t250) = t242;
    t251 = (t244 + 48U);
    *((unsigned int *)t251) = 7U;
    t252 = (t8 + 4U);
    t253 = (t2 != 0);
    if (t253 == 1)
        goto LAB3;

LAB2:    t254 = (t8 + 8U);
    *((char **)t254) = t9;
    t255 = (t8 + 12U);
    t256 = (t3 != 0);
    if (t256 == 1)
        goto LAB5;

LAB4:    t257 = (t8 + 16U);
    *((char **)t257) = t14;
    t258 = (t8 + 20U);
    *((unsigned char *)t258) = t4;
    t259 = (t8 + 21U);
    t260 = (t5 != 0);
    if (t260 == 1)
        goto LAB7;

LAB6:    t261 = (t8 + 25U);
    *((char **)t261) = t17;
    t262 = (t8 + 29U);
    t263 = (t6 != 0);
    if (t263 == 1)
        goto LAB9;

LAB8:    t264 = (t8 + 33U);
    *((char **)t264) = t20;
    t265 = (t54 + 36U);
    t266 = *((char **)t265);
    t265 = (t266 + 0);
    *((unsigned char *)t265) = (unsigned char)1;
    t10 = (t1 + 7296);
    t12 = xsi_mem_cmp(t10, t2, 4U);
    if (t12 == 1)
        goto LAB11;

LAB16:    t15 = (t1 + 7300);
    t16 = xsi_mem_cmp(t15, t2, 4U);
    if (t16 == 1)
        goto LAB12;

LAB17:    t23 = (t1 + 7304);
    t19 = xsi_mem_cmp(t23, t2, 4U);
    if (t19 == 1)
        goto LAB13;

LAB18:    t25 = (t1 + 7308);
    t22 = xsi_mem_cmp(t25, t2, 4U);
    if (t22 == 1)
        goto LAB14;

LAB19:
LAB15:    t10 = (t54 + 36U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    *((unsigned char *)t10) = (unsigned char)0;

LAB10:    t10 = (t30 + 36U);
    t11 = *((char **)t10);
    t10 = (t1 + 7312);
    t12 = xsi_mem_cmp(t10, t11, 4U);
    if (t12 == 1)
        goto LAB22;

LAB39:    t18 = (t1 + 7316);
    t16 = xsi_mem_cmp(t18, t11, 4U);
    if (t16 == 1)
        goto LAB23;

LAB40:    t24 = (t1 + 7320);
    t19 = xsi_mem_cmp(t24, t11, 4U);
    if (t19 == 1)
        goto LAB24;

LAB41:    t26 = (t1 + 7324);
    t22 = xsi_mem_cmp(t26, t11, 4U);
    if (t22 == 1)
        goto LAB25;

LAB42:    t29 = (t1 + 7328);
    t31 = xsi_mem_cmp(t29, t11, 4U);
    if (t31 == 1)
        goto LAB26;

LAB43:    t33 = (t1 + 7332);
    t47 = xsi_mem_cmp(t33, t11, 4U);
    if (t47 == 1)
        goto LAB27;

LAB44:    t36 = (t1 + 7336);
    t65 = xsi_mem_cmp(t36, t11, 4U);
    if (t65 == 1)
        goto LAB28;

LAB45:    t39 = (t1 + 7340);
    t77 = xsi_mem_cmp(t39, t11, 4U);
    if (t77 == 1)
        goto LAB29;

LAB46:    t42 = (t1 + 7344);
    t89 = xsi_mem_cmp(t42, t11, 4U);
    if (t89 == 1)
        goto LAB30;

LAB47:    t45 = (t1 + 7348);
    t101 = xsi_mem_cmp(t45, t11, 4U);
    if (t101 == 1)
        goto LAB31;

LAB48:    t49 = (t1 + 7352);
    t113 = xsi_mem_cmp(t49, t11, 4U);
    if (t113 == 1)
        goto LAB32;

LAB49:    t52 = (t1 + 7356);
    t125 = xsi_mem_cmp(t52, t11, 4U);
    if (t125 == 1)
        goto LAB33;

LAB50:    t55 = (t1 + 7360);
    t137 = xsi_mem_cmp(t55, t11, 4U);
    if (t137 == 1)
        goto LAB34;

LAB51:    t58 = (t1 + 7364);
    t149 = xsi_mem_cmp(t58, t11, 4U);
    if (t149 == 1)
        goto LAB35;

LAB52:    t60 = (t1 + 7368);
    t161 = xsi_mem_cmp(t60, t11, 4U);
    if (t161 == 1)
        goto LAB36;

LAB53:    t63 = (t1 + 7372);
    t173 = xsi_mem_cmp(t63, t11, 4U);
    if (t173 == 1)
        goto LAB37;

LAB54:
LAB38:    t10 = (t54 + 36U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    *((unsigned char *)t10) = (unsigned char)0;

LAB21:    t10 = (t54 + 36U);
    t11 = *((char **)t10);
    t256 = *((unsigned char *)t11);
    if (t256 == 1)
        goto LAB59;

LAB60:    t253 = (unsigned char)0;

LAB61:    if (t253 != 0)
        goto LAB56;

LAB58:
LAB57:    t10 = (t54 + 36U);
    t18 = *((char **)t10);
    t256 = *((unsigned char *)t18);
    if (t256 == 1)
        goto LAB71;

LAB72:    t253 = (unsigned char)0;

LAB73:    if (t253 != 0)
        goto LAB68;

LAB70:
LAB69:    t0 = (unsigned char)1;

LAB1:    xsi_access_variable_delete(t21);
    return t0;
LAB3:    *((char **)t252) = t2;
    goto LAB2;

LAB5:    *((char **)t255) = t3;
    goto LAB4;

LAB7:    *((char **)t259) = t5;
    goto LAB6;

LAB9:    *((char **)t262) = t6;
    goto LAB8;

LAB11:    t27 = (t20 + 0U);
    t31 = *((int *)t27);
    t13 = (t31 - 15);
    t267 = (t13 * 1U);
    t268 = (0 + t267);
    t29 = (t6 + t268);
    t32 = (t30 + 36U);
    t33 = *((char **)t32);
    t32 = (t33 + 0);
    t47 = (12 - 15);
    t269 = (t47 * -1);
    t269 = (t269 + 1);
    t270 = (1U * t269);
    memcpy(t32, t29, t270);
    t10 = (t17 + 0U);
    t12 = *((int *)t10);
    t11 = (t17 + 8U);
    t16 = *((int *)t11);
    t19 = (3 - t12);
    t13 = (t19 * t16);
    t267 = (1U * t13);
    t268 = (0 + t267);
    t15 = (t5 + t268);
    t253 = *((unsigned char *)t15);
    t18 = (t38 + 36U);
    t23 = *((char **)t18);
    t18 = (t23 + 0);
    *((unsigned char *)t18) = t253;
    goto LAB10;

LAB12:    t10 = (t20 + 0U);
    t12 = *((int *)t10);
    t13 = (t12 - 11);
    t267 = (t13 * 1U);
    t268 = (0 + t267);
    t11 = (t6 + t268);
    t15 = (t30 + 36U);
    t18 = *((char **)t15);
    t15 = (t18 + 0);
    t16 = (8 - 11);
    t269 = (t16 * -1);
    t269 = (t269 + 1);
    t270 = (1U * t269);
    memcpy(t15, t11, t270);
    t10 = (t17 + 0U);
    t12 = *((int *)t10);
    t11 = (t17 + 8U);
    t16 = *((int *)t11);
    t19 = (2 - t12);
    t13 = (t19 * t16);
    t267 = (1U * t13);
    t268 = (0 + t267);
    t15 = (t5 + t268);
    t253 = *((unsigned char *)t15);
    t18 = (t38 + 36U);
    t23 = *((char **)t18);
    t18 = (t23 + 0);
    *((unsigned char *)t18) = t253;
    goto LAB10;

LAB13:    t10 = (t20 + 0U);
    t12 = *((int *)t10);
    t13 = (t12 - 7);
    t267 = (t13 * 1U);
    t268 = (0 + t267);
    t11 = (t6 + t268);
    t15 = (t30 + 36U);
    t18 = *((char **)t15);
    t15 = (t18 + 0);
    t16 = (4 - 7);
    t269 = (t16 * -1);
    t269 = (t269 + 1);
    t270 = (1U * t269);
    memcpy(t15, t11, t270);
    t10 = (t17 + 0U);
    t12 = *((int *)t10);
    t11 = (t17 + 8U);
    t16 = *((int *)t11);
    t19 = (1 - t12);
    t13 = (t19 * t16);
    t267 = (1U * t13);
    t268 = (0 + t267);
    t15 = (t5 + t268);
    t253 = *((unsigned char *)t15);
    t18 = (t38 + 36U);
    t23 = *((char **)t18);
    t18 = (t23 + 0);
    *((unsigned char *)t18) = t253;
    goto LAB10;

LAB14:    t10 = (t20 + 0U);
    t12 = *((int *)t10);
    t13 = (t12 - 3);
    t267 = (t13 * 1U);
    t268 = (0 + t267);
    t11 = (t6 + t268);
    t15 = (t30 + 36U);
    t18 = *((char **)t15);
    t15 = (t18 + 0);
    t16 = (0 - 3);
    t269 = (t16 * -1);
    t269 = (t269 + 1);
    t270 = (1U * t269);
    memcpy(t15, t11, t270);
    t10 = (t17 + 0U);
    t12 = *((int *)t10);
    t11 = (t17 + 8U);
    t16 = *((int *)t11);
    t19 = (0 - t12);
    t13 = (t19 * t16);
    t267 = (1U * t13);
    t268 = (0 + t267);
    t15 = (t5 + t268);
    t253 = *((unsigned char *)t15);
    t18 = (t38 + 36U);
    t23 = *((char **)t18);
    t18 = (t23 + 0);
    *((unsigned char *)t18) = t253;
    goto LAB10;

LAB20:;
LAB22:    t67 = (t64 + 36U);
    t69 = *((char **)t67);
    t67 = (t46 + 36U);
    t70 = *((char **)t67);
    t67 = (t70 + 0);
    memcpy(t67, t69, 7U);
    goto LAB21;

LAB23:    t10 = (t76 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB24:    t10 = (t88 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB25:    t10 = (t100 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB26:    t10 = (t112 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB27:    t10 = (t124 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB28:    t10 = (t136 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB29:    t10 = (t148 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB30:    t10 = (t160 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB31:    t10 = (t172 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB32:    t10 = (t184 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB33:    t10 = (t196 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB34:    t10 = (t208 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB35:    t10 = (t220 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB36:    t10 = (t232 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB37:    t10 = (t244 + 36U);
    t11 = *((char **)t10);
    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t15 + 0);
    memcpy(t10, t11, 7U);
    goto LAB21;

LAB55:;
LAB56:    t25 = (t1 + 7376);
    t27 = (t271 + 0U);
    t29 = (t27 + 0U);
    *((int *)t29) = 1;
    t29 = (t27 + 4U);
    *((int *)t29) = 42;
    t29 = (t27 + 8U);
    *((int *)t29) = 1;
    t12 = (42 - 1);
    t269 = (t12 * 1);
    t269 = (t269 + 1);
    t29 = (t27 + 12U);
    *((unsigned int *)t29) = t269;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t25, t271, (unsigned char)0, 0);
    t10 = (t46 + 36U);
    t11 = *((char **)t10);
    t10 = (t44 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    t15 = (char *)alloca(t13);
    memcpy(t15, t11, t13);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, (char *)0, t21, t15, t44, (unsigned char)0, 0);
    t10 = (t1 + 7418);
    t18 = (t271 + 0U);
    t23 = (t18 + 0U);
    *((int *)t23) = 1;
    t23 = (t18 + 4U);
    *((int *)t23) = 11;
    t23 = (t18 + 8U);
    *((int *)t23) = 1;
    t12 = (11 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t23 = (t18 + 12U);
    *((unsigned int *)t23) = t13;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t10, t271, (unsigned char)0, 0);
    t10 = (t14 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    t11 = (char *)alloca(t13);
    memcpy(t11, t3, t13);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, (char *)0, t21, t11, t14, (unsigned char)0, 0);
    t10 = (t1 + 7429);
    t23 = (t271 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 1;
    t24 = (t23 + 4U);
    *((int *)t24) = 19;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t12 = (19 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t13;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t10, t271, (unsigned char)0, 0);
    t10 = (t30 + 36U);
    t18 = *((char **)t10);
    t10 = (t28 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    t23 = (char *)alloca(t13);
    memcpy(t23, t18, t13);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, (char *)0, t21, t23, t28, (unsigned char)0, 0);
    t10 = (t1 + 7448);
    t24 = (t271 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 1;
    t25 = (t24 + 4U);
    *((int *)t25) = 10;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t12 = (10 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t13;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t10, t271, (unsigned char)0, 0);
    t272 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, (char *)0, t21, t272, (unsigned char)0, 0, 1000LL);
    t10 = ((STD_TEXTIO) + 856U);
    std_textio_writeline(STD_TEXTIO, (char *)0, t10, t21);
    goto LAB57;

LAB59:    t10 = (t46 + 36U);
    t15 = *((char **)t10);
    t10 = (t44 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    t18 = (t14 + 12U);
    t267 = *((unsigned int *)t18);
    t267 = (t267 * 1U);
    t260 = 1;
    if (t13 == t267)
        goto LAB62;

LAB63:    t260 = 0;

LAB64:    t253 = (!(t260));
    goto LAB61;

LAB62:    t268 = 0;

LAB65:    if (t268 < t13)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t23 = (t15 + t268);
    t24 = (t3 + t268);
    if (*((unsigned char *)t23) != *((unsigned char *)t24))
        goto LAB63;

LAB67:    t268 = (t268 + 1);
    goto LAB65;

LAB68:    t10 = (t1 + 7458);
    t26 = (t271 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 1;
    t27 = (t26 + 4U);
    *((int *)t27) = 34;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t12 = (34 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t13;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t10, t271, (unsigned char)0, 0);
    t10 = (t38 + 36U);
    t18 = *((char **)t10);
    t253 = *((unsigned char *)t18);
    t256 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t253);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, (char *)0, t21, t256, (unsigned char)0, 0);
    t10 = (t1 + 7492);
    t24 = (t271 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 1;
    t25 = (t24 + 4U);
    *((int *)t25) = 11;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t12 = (11 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t13;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t10, t271, (unsigned char)0, 0);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, (char *)0, t21, t4, (unsigned char)0, 0);
    t10 = (t1 + 7503);
    t24 = (t271 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 1;
    t25 = (t24 + 4U);
    *((int *)t25) = 10;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t12 = (10 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t13;
    std_textio_write7(STD_TEXTIO, (char *)0, t21, t10, t271, (unsigned char)0, 0);
    t272 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, (char *)0, t21, t272, (unsigned char)0, 0, 1000LL);
    t10 = ((STD_TEXTIO) + 856U);
    std_textio_writeline(STD_TEXTIO, (char *)0, t10, t21);
    goto LAB69;

LAB71:    t10 = (t38 + 36U);
    t24 = *((char **)t10);
    t260 = *((unsigned char *)t24);
    t263 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t260);
    t273 = (t4 != t263);
    t253 = t273;
    goto LAB73;

LAB74:;
}

void work_a_2531697815_1949178628_sub_2801470448_1207921752(char *t0, char *t1, char *t2, char *t3, char *t4)
{
    char t5[48];
    char t6[24];
    char t7[16];
    char t12[16];
    char t62[16];
    char t63[16];
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    unsigned char t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    char *t38;
    unsigned char t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    char *t46;
    unsigned char t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    char *t54;
    unsigned char t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 3;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 3);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t12 + 0U);
    t13 = (t9 + 0U);
    *((int *)t13) = 3;
    t13 = (t9 + 4U);
    *((int *)t13) = 0;
    t13 = (t9 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 3);
    t11 = (t14 * -1);
    t11 = (t11 + 1);
    t13 = (t9 + 12U);
    *((unsigned int *)t13) = t11;
    t13 = (t5 + 4U);
    t15 = ((STD_TEXTIO) + 1944);
    t16 = (t13 + 32U);
    *((char **)t16) = t15;
    t17 = (t13 + 24U);
    *((char **)t17) = 0;
    t18 = (t13 + 36U);
    *((int *)t18) = 1;
    t19 = (t13 + 28U);
    *((char **)t19) = 0;
    t20 = (t6 + 4U);
    t21 = (t2 != 0);
    if (t21 == 1)
        goto LAB3;

LAB2:    t22 = (t6 + 8U);
    *((char **)t22) = t7;
    t23 = (t6 + 12U);
    *((char **)t23) = t3;
    t24 = (t6 + 16U);
    *((char **)t24) = t12;
    t25 = (t6 + 20U);
    *((char **)t25) = t4;
    t29 = (t7 + 12U);
    t11 = *((unsigned int *)t29);
    t11 = (t11 * 1U);
    t30 = (t0 + 7513);
    t32 = 1;
    if (t11 == 4U)
        goto LAB15;

LAB16:    t32 = 0;

LAB17:    if (t32 == 1)
        goto LAB12;

LAB13:    t36 = (t7 + 12U);
    t37 = *((unsigned int *)t36);
    t37 = (t37 * 1U);
    t38 = (t0 + 7517);
    t40 = 1;
    if (t37 == 4U)
        goto LAB21;

LAB22:    t40 = 0;

LAB23:    t28 = t40;

LAB14:    if (t28 == 1)
        goto LAB9;

LAB10:    t44 = (t7 + 12U);
    t45 = *((unsigned int *)t44);
    t45 = (t45 * 1U);
    t46 = (t0 + 7521);
    t48 = 1;
    if (t45 == 4U)
        goto LAB27;

LAB28:    t48 = 0;

LAB29:    t27 = t48;

LAB11:    if (t27 == 1)
        goto LAB6;

LAB7:    t52 = (t7 + 12U);
    t53 = *((unsigned int *)t52);
    t53 = (t53 * 1U);
    t54 = (t0 + 7525);
    t56 = 1;
    if (t53 == 4U)
        goto LAB33;

LAB34:    t56 = 0;

LAB35:    t26 = t56;

LAB8:    if (t26 == 0)
        goto LAB4;

LAB5:    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t63, t2, t7);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t62, t3, t12, t8, t63);
    t15 = (t62 + 12U);
    t11 = *((unsigned int *)t15);
    t33 = (1U * t11);
    t16 = (t0 + 7557);
    t21 = 1;
    if (t33 == 4U)
        goto LAB41;

LAB42:    t21 = 0;

LAB43:    if (t21 == 0)
        goto LAB39;

LAB40:    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t63, t2, t7);
    t9 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t62, t3, t12, t8, t63);
    t15 = (t3 + 0);
    t16 = (t62 + 12U);
    t11 = *((unsigned int *)t16);
    t33 = (1U * t11);
    memcpy(t15, t9, t33);

LAB1:    xsi_access_variable_delete(t13);
    return;
LAB3:    *((char **)t20) = t2;
    goto LAB2;

LAB4:    t60 = (t0 + 7529);
    xsi_report(t60, 28U, 2);
    goto LAB5;

LAB6:    t26 = (unsigned char)1;
    goto LAB8;

LAB9:    t27 = (unsigned char)1;
    goto LAB11;

LAB12:    t28 = (unsigned char)1;
    goto LAB14;

LAB15:    t33 = 0;

LAB18:    if (t33 < t11)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t34 = (t2 + t33);
    t35 = (t30 + t33);
    if (*((unsigned char *)t34) != *((unsigned char *)t35))
        goto LAB16;

LAB20:    t33 = (t33 + 1);
    goto LAB18;

LAB21:    t41 = 0;

LAB24:    if (t41 < t37)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t42 = (t2 + t41);
    t43 = (t38 + t41);
    if (*((unsigned char *)t42) != *((unsigned char *)t43))
        goto LAB22;

LAB26:    t41 = (t41 + 1);
    goto LAB24;

LAB27:    t49 = 0;

LAB30:    if (t49 < t45)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t50 = (t2 + t49);
    t51 = (t46 + t49);
    if (*((unsigned char *)t50) != *((unsigned char *)t51))
        goto LAB28;

LAB32:    t49 = (t49 + 1);
    goto LAB30;

LAB33:    t57 = 0;

LAB36:    if (t57 < t53)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t58 = (t2 + t57);
    t59 = (t54 + t57);
    if (*((unsigned char *)t58) != *((unsigned char *)t59))
        goto LAB34;

LAB38:    t57 = (t57 + 1);
    goto LAB36;

LAB39:    t29 = (t0 + 7561);
    xsi_report(t29, 37U, 2);
    goto LAB40;

LAB41:    t37 = 0;

LAB44:    if (t37 < t33)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t18 = (t9 + t37);
    t19 = (t16 + t37);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB42;

LAB46:    t37 = (t37 + 1);
    goto LAB44;

}

void work_a_2531697815_1949178628_sub_140508231_1207921752(char *t0, char *t1, char *t2, int64 t3, int64 t4)
{
    char t5[112];
    char t6[32];
    char t7[16];
    char t14[8];
    char t32[16];
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    int64 t28;
    int64 t29;
    char *t30;
    char *t31;

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 3;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 3);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t5 + 4U);
    t12 = ((STD_STANDARD) + 376);
    t13 = (t9 + 52U);
    *((char **)t13) = t12;
    t15 = (t9 + 36U);
    *((char **)t15) = t14;
    xsi_type_set_default_value(t12, t14, 0);
    t16 = (t9 + 48U);
    *((unsigned int *)t16) = 8U;
    t17 = (t5 + 72U);
    t18 = ((STD_TEXTIO) + 1944);
    t19 = (t17 + 32U);
    *((char **)t19) = t18;
    t20 = (t17 + 24U);
    *((char **)t20) = 0;
    t21 = (t17 + 36U);
    *((int *)t21) = 1;
    t22 = (t17 + 28U);
    *((char **)t22) = 0;
    t23 = (t6 + 4U);
    t24 = (t2 != 0);
    if (t24 == 1)
        goto LAB3;

LAB2:    t25 = (t6 + 8U);
    *((char **)t25) = t7;
    t26 = (t6 + 12U);
    *((int64 *)t26) = t3;
    t27 = (t6 + 20U);
    *((int64 *)t27) = t4;
    t28 = xsi_get_sim_current_time();
    t29 = (t28 - t3);
    t30 = (t9 + 36U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    *((int64 *)t30) = t29;
    t8 = (t9 + 36U);
    t12 = *((char **)t8);
    t28 = *((int64 *)t12);
    t24 = (t28 == t4);
    if (t24 == 0)
        goto LAB4;

LAB5:    t8 = (t9 + 36U);
    t12 = *((char **)t8);
    t28 = *((int64 *)t12);
    t24 = (t28 != t4);
    if (t24 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB1:    xsi_access_variable_delete(t17);
    return;
LAB3:    *((char **)t23) = t2;
    goto LAB2;

LAB4:    t8 = (t0 + 7598);
    xsi_report(t8, 28U, 2);
    goto LAB5;

LAB6:    t8 = (t0 + 7626);
    t15 = (t32 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 18;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t10 = (18 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t11;
    std_textio_write7(STD_TEXTIO, t1, t17, t8, t32, (unsigned char)0, 0);
    t8 = (t9 + 36U);
    t12 = *((char **)t8);
    t28 = *((int64 *)t12);
    std_textio_write8(STD_TEXTIO, t1, t17, t28, (unsigned char)0, 0, 1000LL);
    t8 = (t0 + 7644);
    t13 = (t32 + 0U);
    t15 = (t13 + 0U);
    *((int *)t15) = 1;
    t15 = (t13 + 4U);
    *((int *)t15) = 11;
    t15 = (t13 + 8U);
    *((int *)t15) = 1;
    t10 = (11 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t15 = (t13 + 12U);
    *((unsigned int *)t15) = t11;
    std_textio_write7(STD_TEXTIO, t1, t17, t8, t32, (unsigned char)0, 0);
    std_textio_write8(STD_TEXTIO, t1, t17, t4, (unsigned char)0, 0, 1000LL);
    t8 = ((STD_TEXTIO) + 856U);
    std_textio_writeline(STD_TEXTIO, t1, t8, t17);
    goto LAB7;

}

static void work_a_2531697815_1949178628_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(242, ng4);

LAB3:    t1 = (t0 + 1384U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 684U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t1 = (t0 + 3364);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_delta(t1, 0U, 1, t3);
    t11 = (t0 + 3364);
    xsi_driver_intertial_reject(t11, t3, t3);

LAB2:    t12 = (t0 + 3192);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2531697815_1949178628_p_1(char *t0)
{
    char t6[16];
    char t14[8];
    char t15[8];
    char t17[8];
    char t18[8];
    char t19[8];
    char t20[8];
    char t21[8];
    char t22[8];
    char t28[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    int64 t12;
    unsigned char t13;
    int64 t16;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 2708U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(254, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 7655);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 31;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (31 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(255, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(260, ng4);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    memset(t3, (unsigned char)0, 4U);
    t4 = (t0 + 3400);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(261, ng4);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)0, 16U);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(262, ng4);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    memset(t3, (unsigned char)0, 4U);
    t4 = (t0 + 3472);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(263, ng4);
    t12 = (200 * 1000LL);
    t2 = (t0 + 2608);
    xsi_process_wait(t2, t12);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(269, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 7686);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 75;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (75 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(270, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(271, ng4);
    t2 = (t0 + 7761);
    t4 = (t0 + 3400);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(272, ng4);
    t2 = (t0 + 7765);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(273, ng4);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    memset(t3, (unsigned char)2, 4U);
    t4 = (t0 + 3472);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(276, ng4);

LAB10:    t2 = (t0 + 3200);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 3200);
    *((int *)t4) = 0;
    xsi_set_current_line(279, ng4);

LAB14:    t2 = (t0 + 3208);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    t3 = (t0 + 1028U);
    t13 = xsi_signal_has_event(t3);
    if (t13 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    t4 = (t0 + 3208);
    *((int *)t4) = 0;
    xsi_set_current_line(280, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t14, t4, 4U);
    t3 = (t0 + 1724U);
    t5 = *((char **)t3);
    t3 = (t0 + 1588U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    work_a_2531697815_1949178628_sub_2801470448_1207921752(t0, t2, t14, t5, t3);
    xsi_set_current_line(281, ng4);
    t12 = xsi_get_sim_current_time();
    t2 = (t0 + 1588U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int64 *)t2) = t12;
    xsi_set_current_line(284, ng4);

LAB18:    t2 = (t0 + 3224);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    t3 = (t0 + 1028U);
    t13 = xsi_signal_has_event(t3);
    if (t13 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    t4 = (t0 + 3224);
    *((int *)t4) = 0;
    xsi_set_current_line(285, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t15, t4, 4U);
    t3 = (t0 + 1588U);
    t5 = *((char **)t3);
    t12 = *((int64 *)t5);
    t3 = (t0 + 1520U);
    t7 = *((char **)t3);
    t16 = *((int64 *)t7);
    work_a_2531697815_1949178628_sub_140508231_1207921752(t0, t2, t15, t12, t16);
    xsi_set_current_line(286, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t17, t4, 4U);
    t3 = (t0 + 1724U);
    t5 = *((char **)t3);
    t3 = (t0 + 1588U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    work_a_2531697815_1949178628_sub_2801470448_1207921752(t0, t2, t17, t5, t3);
    xsi_set_current_line(287, ng4);
    t12 = xsi_get_sim_current_time();
    t2 = (t0 + 1588U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int64 *)t2) = t12;
    xsi_set_current_line(290, ng4);

LAB22:    t2 = (t0 + 3248);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    t3 = (t0 + 1028U);
    t13 = xsi_signal_has_event(t3);
    if (t13 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t4 = (t0 + 3248);
    *((int *)t4) = 0;
    xsi_set_current_line(291, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t18, t4, 4U);
    t3 = (t0 + 1588U);
    t5 = *((char **)t3);
    t12 = *((int64 *)t5);
    t3 = (t0 + 1520U);
    t7 = *((char **)t3);
    t16 = *((int64 *)t7);
    work_a_2531697815_1949178628_sub_140508231_1207921752(t0, t2, t18, t12, t16);
    xsi_set_current_line(292, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t19, t4, 4U);
    t3 = (t0 + 1724U);
    t5 = *((char **)t3);
    t3 = (t0 + 1588U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    work_a_2531697815_1949178628_sub_2801470448_1207921752(t0, t2, t19, t5, t3);
    xsi_set_current_line(293, ng4);
    t12 = xsi_get_sim_current_time();
    t2 = (t0 + 1588U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int64 *)t2) = t12;
    xsi_set_current_line(296, ng4);

LAB26:    t2 = (t0 + 3272);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    t3 = (t0 + 1028U);
    t13 = xsi_signal_has_event(t3);
    if (t13 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB24:    t4 = (t0 + 3272);
    *((int *)t4) = 0;
    xsi_set_current_line(297, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t20, t4, 4U);
    t3 = (t0 + 1588U);
    t5 = *((char **)t3);
    t12 = *((int64 *)t5);
    t3 = (t0 + 1520U);
    t7 = *((char **)t3);
    t16 = *((int64 *)t7);
    work_a_2531697815_1949178628_sub_140508231_1207921752(t0, t2, t20, t12, t16);
    xsi_set_current_line(298, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t21, t4, 4U);
    t3 = (t0 + 1724U);
    t5 = *((char **)t3);
    t3 = (t0 + 1588U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    work_a_2531697815_1949178628_sub_2801470448_1207921752(t0, t2, t21, t5, t3);
    xsi_set_current_line(299, ng4);
    t12 = xsi_get_sim_current_time();
    t2 = (t0 + 1588U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int64 *)t2) = t12;
    xsi_set_current_line(302, ng4);

LAB30:    t2 = (t0 + 3296);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t3 = (t0 + 1028U);
    t13 = xsi_signal_has_event(t3);
    if (t13 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    t4 = (t0 + 3296);
    *((int *)t4) = 0;
    xsi_set_current_line(303, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    memcpy(t22, t4, 4U);
    t3 = (t0 + 1588U);
    t5 = *((char **)t3);
    t12 = *((int64 *)t5);
    t3 = (t0 + 1520U);
    t7 = *((char **)t3);
    t16 = *((int64 *)t7);
    work_a_2531697815_1949178628_sub_140508231_1207921752(t0, t2, t22, t12, t16);
    xsi_set_current_line(306, ng4);
    t2 = (t0 + 1724U);
    t3 = *((char **)t2);
    t2 = (t0 + 7781);
    t13 = 1;
    if (4U == 4U)
        goto LAB35;

LAB36:    t13 = 0;

LAB37:    if (t13 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(310, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 7829);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 39;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (39 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(311, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 1724U);
    t5 = *((char **)t4);
    memcpy(t28, t5, 4U);
    t4 = (t0 + 6984U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t28, t4, (unsigned char)0, 0);
    xsi_set_current_line(312, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);

LAB33:    xsi_set_current_line(315, ng4);
    t2 = (t0 + 1724U);
    t3 = *((char **)t2);
    t2 = (t0 + 7868);
    t13 = 1;
    if (4U == 4U)
        goto LAB43;

LAB44:    t13 = 0;

LAB45:    if (t13 == 0)
        goto LAB41;

LAB42:    xsi_set_current_line(321, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 7909);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 33;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (33 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(322, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(325, ng4);
    t2 = (t0 + 7942);
    t4 = (t0 + 3400);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(326, ng4);
    t2 = (t0 + 7946);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(327, ng4);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t12 = *((int64 *)t3);
    t16 = (t12 * 4);
    t2 = (t0 + 2608);
    xsi_process_wait(t2, t16);

LAB51:    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB29:    t3 = (t0 + 1028U);
    t13 = xsi_signal_has_event(t3);
    if (t13 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(307, ng4);
    t8 = (t0 + 2608);
    t11 = (t0 + 2156U);
    t23 = (t0 + 7785);
    t25 = (t6 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 1;
    t26 = (t25 + 4U);
    *((int *)t26) = 44;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t9 = (44 - 1);
    t27 = (t9 * 1);
    t27 = (t27 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t27;
    std_textio_write7(STD_TEXTIO, t8, t11, t23, t6, (unsigned char)0, 0);
    xsi_set_current_line(308, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB33;

LAB35:    t10 = 0;

LAB38:    if (t10 < 4U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t5 = (t3 + t10);
    t7 = (t2 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t7))
        goto LAB36;

LAB40:    t10 = (t10 + 1);
    goto LAB38;

LAB41:    t8 = (t0 + 7872);
    xsi_report(t8, 37U, 2);
    goto LAB42;

LAB43:    t10 = 0;

LAB46:    if (t10 < 4U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t5 = (t3 + t10);
    t7 = (t2 + t10);
    if (*((unsigned char *)t5) != *((unsigned char *)t7))
        goto LAB44;

LAB48:    t10 = (t10 + 1);
    goto LAB46;

LAB49:    xsi_set_current_line(330, ng4);
    t2 = (t0 + 7962);
    t4 = (t0 + 3400);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(331, ng4);
    t2 = (t0 + 7966);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(332, ng4);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t12 = *((int64 *)t3);
    t16 = (t12 * 4);
    t2 = (t0 + 2608);
    xsi_process_wait(t2, t16);

LAB55:    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB50:    goto LAB49;

LAB52:    goto LAB50;

LAB53:    xsi_set_current_line(335, ng4);
    t2 = (t0 + 7982);
    t4 = (t0 + 3400);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(336, ng4);
    t2 = (t0 + 7986);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(337, ng4);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t12 = *((int64 *)t3);
    t16 = (t12 * 4);
    t2 = (t0 + 2608);
    xsi_process_wait(t2, t16);

LAB59:    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB54:    goto LAB53;

LAB56:    goto LAB54;

LAB57:    xsi_set_current_line(340, ng4);
    t2 = (t0 + 8002);
    t4 = (t0 + 3400);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(341, ng4);
    t2 = (t0 + 8006);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(342, ng4);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t12 = *((int64 *)t3);
    t16 = (t12 * 4);
    t2 = (t0 + 2608);
    xsi_process_wait(t2, t16);

LAB63:    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB58:    goto LAB57;

LAB60:    goto LAB58;

LAB61:    xsi_set_current_line(347, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 8022);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 28;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (28 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(348, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(350, ng4);
    t2 = (t0 + 8050);
    *((int *)t2) = 0;
    t3 = (t0 + 8054);
    *((int *)t3) = 3;
    t9 = 0;
    t29 = 3;

LAB65:    if (t9 <= t29)
        goto LAB66;

LAB68:    xsi_set_current_line(363, ng4);
    t2 = (t0 + 8066);
    t4 = (t0 + 3436);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(364, ng4);
    t2 = (t0 + 8082);
    t4 = (t0 + 3472);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(369, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t4 = (t0 + 8086);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 29;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (29 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(370, ng4);
    t2 = (t0 + 2608);
    t3 = (t0 + 2156U);
    t12 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t3, t12, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(371, ng4);
    t2 = (t0 + 2608);
    t3 = ((STD_TEXTIO) + 856U);
    t4 = (t0 + 2156U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(372, ng4);

LAB84:    *((char **)t1) = &&LAB85;
    goto LAB1;

LAB62:    goto LAB61;

LAB64:    goto LAB62;

LAB66:    xsi_set_current_line(351, ng4);
    t4 = (t0 + 8058);
    *((int *)t4) = 0;
    t5 = (t0 + 8062);
    *((int *)t5) = 3;
    t30 = 0;
    t31 = 3;

LAB69:    if (t30 <= t31)
        goto LAB70;

LAB72:    xsi_set_current_line(359, ng4);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t12 = *((int64 *)t3);
    t16 = (t12 * 4);
    t2 = (t0 + 2608);
    xsi_process_wait(t2, t16);

LAB79:    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB67:    t2 = (t0 + 8050);
    t9 = *((int *)t2);
    t3 = (t0 + 8054);
    t29 = *((int *)t3);
    if (t9 == t29)
        goto LAB68;

LAB81:    t30 = (t9 + 1);
    t9 = t30;
    t4 = (t0 + 8050);
    *((int *)t4) = t9;
    goto LAB65;

LAB70:    xsi_set_current_line(352, ng4);
    t7 = (t0 + 8058);
    t8 = (t0 + 8050);
    t32 = *((int *)t7);
    t33 = *((int *)t8);
    t13 = (t32 == t33);
    if (t13 != 0)
        goto LAB73;

LAB75:    xsi_set_current_line(355, ng4);
    t2 = (t0 + 8058);
    t32 = *((int *)t2);
    t33 = (t32 - 3);
    t10 = (t33 * -1);
    t27 = (1 * t10);
    t36 = (0U + t27);
    t3 = (t0 + 3472);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t3, t36, 1, 0LL);

LAB74:
LAB71:    t2 = (t0 + 8058);
    t30 = *((int *)t2);
    t3 = (t0 + 8062);
    t31 = *((int *)t3);
    if (t30 == t31)
        goto LAB72;

LAB76:    t32 = (t30 + 1);
    t30 = t32;
    t4 = (t0 + 8058);
    *((int *)t4) = t30;
    goto LAB69;

LAB73:    xsi_set_current_line(353, ng4);
    t11 = (t0 + 8058);
    t34 = *((int *)t11);
    t35 = (t34 - 3);
    t10 = (t35 * -1);
    t27 = (1 * t10);
    t36 = (0U + t27);
    t23 = (t0 + 3472);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t37 = *((char **)t26);
    *((unsigned char *)t37) = (unsigned char)3;
    xsi_driver_first_trans_delta(t23, t36, 1, 0LL);
    goto LAB74;

LAB77:    goto LAB67;

LAB78:    goto LAB77;

LAB80:    goto LAB78;

LAB82:    goto LAB2;

LAB83:    goto LAB82;

LAB85:    goto LAB83;

}

static void work_a_2531697815_1949178628_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;

LAB0:    t1 = (t0 + 2852U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(383, ng4);

LAB6:    t2 = (t0 + 3312);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 3312);
    *((int *)t5) = 0;
    xsi_set_current_line(384, ng4);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t6 = *((int64 *)t3);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t6);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 1028U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(385, ng4);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 868U);
    t5 = *((char **)t2);
    t2 = (t0 + 960U);
    t7 = *((char **)t2);
    t4 = *((unsigned char *)t7);
    t2 = (t0 + 776U);
    t8 = *((char **)t2);
    t2 = (t0 + 592U);
    t9 = *((char **)t2);
    t10 = work_a_2531697815_1949178628_sub_3540452626_1207921752(t0, t3, t5, t4, t8, t9);
    t2 = (t0 + 1860U);
    t11 = *((char **)t2);
    t2 = (t11 + 0);
    *((unsigned char *)t2) = t10;
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2531697815_1949178628_p_3(char *t0)
{
    char t32[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    char *t8;
    int64 t9;
    int t10;
    int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    int t35;
    unsigned int t36;

LAB0:    t1 = (t0 + 2996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(395, ng4);

LAB6:    t2 = (t0 + 3320);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t8 = (t0 + 3320);
    *((int *)t8) = 0;
    xsi_set_current_line(396, ng4);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t9 = *((int64 *)t4);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, t9);

LAB13:    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB5:    t4 = (t0 + 1120U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t6 = (t0 + 1028U);
    t7 = xsi_signal_has_event(t6);
    t3 = t7;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t3 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(397, ng4);
    t2 = (t0 + 8115);
    *((int *)t2) = 0;
    t4 = (t0 + 8119);
    *((int *)t4) = 3;
    t10 = 0;
    t11 = 3;

LAB15:    if (t10 <= t11)
        goto LAB16;

LAB18:    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

LAB16:    xsi_set_current_line(398, ng4);
    t6 = (t0 + 1144U);
    t8 = *((char **)t6);
    t6 = (t0 + 8115);
    t12 = *((int *)t6);
    t13 = (t12 - 3);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t6));
    t15 = (1U * t14);
    t16 = (0 + t15);
    t17 = (t8 + t16);
    t5 = *((unsigned char *)t17);
    t7 = (t5 == (unsigned char)3);
    if (t7 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB19;

LAB21:
LAB20:
LAB17:    t2 = (t0 + 8115);
    t10 = *((int *)t2);
    t4 = (t0 + 8119);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB18;

LAB25:    t12 = (t10 + 1);
    t10 = t12;
    t6 = (t0 + 8115);
    *((int *)t6) = t10;
    goto LAB15;

LAB19:    xsi_set_current_line(399, ng4);
    t28 = (t0 + 2896);
    t29 = (t0 + 2196U);
    t30 = (t0 + 8123);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 1;
    t34 = (t33 + 4U);
    *((int *)t34) = 63;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (63 - 1);
    t36 = (t35 * 1);
    t36 = (t36 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t36;
    std_textio_write7(STD_TEXTIO, t28, t29, t30, t32, (unsigned char)0, 0);
    xsi_set_current_line(400, ng4);
    t2 = (t0 + 2896);
    t4 = (t0 + 2196U);
    t9 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t4, t9, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(401, ng4);
    t2 = (t0 + 2896);
    t4 = ((STD_TEXTIO) + 856U);
    t6 = (t0 + 2196U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t6);
    goto LAB20;

LAB22:    t18 = (t0 + 1052U);
    t19 = *((char **)t18);
    t18 = (t0 + 8115);
    t20 = *((int *)t18);
    t21 = (t20 - 3);
    t22 = (t21 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t18));
    t23 = (1U * t22);
    t24 = (0 + t23);
    t25 = (t19 + t24);
    t26 = *((unsigned char *)t25);
    t27 = (t26 == (unsigned char)2);
    t3 = t27;
    goto LAB24;

}


extern void work_a_2531697815_1949178628_init()
{
	static char *pe[] = {(void *)work_a_2531697815_1949178628_p_0,(void *)work_a_2531697815_1949178628_p_1,(void *)work_a_2531697815_1949178628_p_2,(void *)work_a_2531697815_1949178628_p_3};
	static char *se[] = {(void *)work_a_2531697815_1949178628_sub_3540452626_1207921752,(void *)work_a_2531697815_1949178628_sub_2801470448_1207921752,(void *)work_a_2531697815_1949178628_sub_140508231_1207921752};
	xsi_register_didat("work_a_2531697815_1949178628", "isim/tb_seven_segment_control_isim_beh.exe.sim/work/a_2531697815_1949178628.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
