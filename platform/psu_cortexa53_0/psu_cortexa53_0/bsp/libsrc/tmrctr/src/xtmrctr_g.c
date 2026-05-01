#include "xtmrctr.h"

XTmrCtr_Config XTmrCtr_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-timer-2.0", /* compatible */
		0x80060000, /* reg */
		0x5f5dd19, /* clock-frequency */
		0x2000, /* interrupts */
		0x80020001 /* interrupt-parent */
	},
	 {
		 NULL
	}
};