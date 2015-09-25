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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003983040574_2380542234_init();
    work_m_00000000000591346911_0929639693_init();
    work_m_00000000002471047872_1246873435_init();
    work_m_00000000001541815474_0239040306_init();
    work_m_00000000001287651397_0971081472_init();
    work_m_00000000003337415507_2724258266_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003337415507_2724258266");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
