#include "xscugic.h"

XScuGic_Config XScuGic_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"arm,gic-400", /* compatible */
		0xf9000000,
		0xf9001000, /* reg */
		{{0U}} /* Handler-table */
	},
	 {
		 NULL
	}
};