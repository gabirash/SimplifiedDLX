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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/gabon/Desktop/updated/Home_S25/SHIFTEnvi.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2623868877_3212880686_p_0(char *t0)
{
    char t23[16];
    char t25[16];
    char t41[16];
    char t43[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t42;
    char *t44;
    char *t45;
    int t46;
    unsigned int t47;
    unsigned char t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    if (t14 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:
LAB12:    t35 = (t0 + 1032U);
    t36 = *((char **)t35);
    t37 = (31 - 31);
    t38 = (t37 * 1U);
    t39 = (0 + t38);
    t35 = (t36 + t39);
    t42 = ((IEEE_P_2592010699) + 4024);
    t44 = (t43 + 0U);
    t45 = (t44 + 0U);
    *((int *)t45) = 31;
    t45 = (t44 + 4U);
    *((int *)t45) = 1;
    t45 = (t44 + 8U);
    *((int *)t45) = -1;
    t46 = (1 - 31);
    t47 = (t46 * -1);
    t47 = (t47 + 1);
    t45 = (t44 + 12U);
    *((unsigned int *)t45) = t47;
    t40 = xsi_base_array_concat(t40, t41, t42, (char)99, (unsigned char)2, (char)97, t35, t43, (char)101);
    t47 = (1U + 31U);
    t48 = (32U != t47);
    if (t48 == 1)
        goto LAB14;

LAB15:    t45 = (t0 + 3072);
    t49 = (t45 + 56U);
    t50 = *((char **)t49);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memcpy(t52, t40, 32U);
    xsi_driver_first_trans_fast_port(t45);

LAB2:    t53 = (t0 + 2992);
    *((int *)t53) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 3072);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t11 = (t0 + 1032U);
    t18 = *((char **)t11);
    t19 = (31 - 30);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t11 = (t18 + t21);
    t24 = ((IEEE_P_2592010699) + 4024);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 30;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = -1;
    t28 = (0 - 30);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t11, t25, (char)99, (unsigned char)2, (char)101);
    t29 = (31U + 1U);
    t30 = (32U != t29);
    if (t30 == 1)
        goto LAB10;

LAB11:    t27 = (t0 + 3072);
    t31 = (t27 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t22, 32U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB7:    t11 = (t0 + 1192U);
    t15 = *((char **)t11);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    t10 = t17;
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, t29, 0);
    goto LAB11;

LAB13:    goto LAB2;

LAB14:    xsi_size_not_matching(32U, t47, 0);
    goto LAB15;

}


extern void work_a_2623868877_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2623868877_3212880686_p_0};
	xsi_register_didat("work_a_2623868877_3212880686", "isim/DLX_ioSimul_DLX_ioSimul_sch_tb_isim_beh.exe.sim/work/a_2623868877_3212880686.didat");
	xsi_register_executes(pe);
}
