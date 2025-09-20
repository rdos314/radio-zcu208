#include "xuartps.h"

XUartPs_Config XUartPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-uart", /* compatible */
		0xff000000, /* reg */
		0x5f5dd19, /* xlnx,clock-freq */
		0x0, /* xlnx,has-modem */
		0x38, /* clocks */
		0x4015, /* interrupts */
		0xffff /* interrupt-parent */
	},
	 {
		 NULL
	}
};