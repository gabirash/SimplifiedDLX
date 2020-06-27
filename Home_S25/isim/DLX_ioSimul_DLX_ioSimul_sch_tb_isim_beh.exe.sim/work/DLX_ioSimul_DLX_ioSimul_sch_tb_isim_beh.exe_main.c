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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *WORK_P_0614985750;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_2888402152_3212880686_init();
    work_a_4225821415_3212880686_init();
    work_a_3906489607_3212880686_init();
    work_a_1275971224_3212880686_init();
    work_a_2158110372_3212880686_init();
    work_a_0038911295_3212880686_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_2425416179_1721142233_init();
    work_a_0324537578_3212880686_init();
    work_a_2099664817_3212880686_init();
    work_a_2453171190_3212880686_init();
    unisim_a_2216889161_3025253650_init();
    unisim_a_2661327437_0605893366_init();
    work_a_0424464058_3212880686_init();
    work_a_4222327082_3212880686_init();
    work_a_3831430912_3212880686_init();
    work_a_1671658275_3212880686_init();
    work_a_0022203327_3212880686_init();
    work_a_0212598907_3212880686_init();
    work_a_2293611118_3212880686_init();
    work_a_0711211128_3212880686_init();
    work_a_2097532438_3212880686_init();
    work_a_1860690990_3212880686_init();
    work_a_3289437869_3212880686_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_3762448000_2971575191_init();
    work_a_0691265008_3212880686_init();
    work_a_1212844334_3212880686_init();
    work_a_3628146944_2401589060_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_2562466605_1496654361_init();
    work_a_1628123915_3212880686_init();
    unisim_a_2536841925_1281047780_init();
    work_a_1369969937_0689313295_init();
    work_a_1609038350_3212880686_init();
    work_a_0772641698_3212880686_init();
    work_a_2623868877_3212880686_init();
    work_a_1657653029_3212880686_init();
    work_a_2439064790_3212880686_init();
    work_a_0497552249_3212880686_init();
    work_p_0614985750_init();
    work_a_4122551599_3212880686_init();
    work_a_0347265945_3212880686_init();
    work_a_2455126924_3212880686_init();
    work_a_1460193718_3212880686_init();


    xsi_register_tops("work_a_1460193718_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    WORK_P_0614985750 = xsi_get_engine_memory("work_p_0614985750");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
