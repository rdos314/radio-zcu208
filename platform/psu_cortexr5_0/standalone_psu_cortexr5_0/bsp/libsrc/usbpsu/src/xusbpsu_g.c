#include "xusbpsu.h"

XUsbPsu_Config XUsbPsu_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"snps,dwc3", /* compatible */
		0xfe200000, /* reg */
		0x0, /* dma-coherent */
		0x1, /* xlnx,enable-superspeed */
		{0x4041,  0x4041,  0x4045}, /* interrupts */
		0xf9000000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};