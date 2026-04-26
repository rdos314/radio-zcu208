#include "xrfdc.h"

XRFdc_Config XRFdc_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,usp-rf-data-converter-2.6", /* compatible */
		0x80080000, /* reg */
		0x1, /* xlnx,high-speed-adc */
		0x0, /* xlnx,sysref-master */
		0x0, /* xlnx,sysref-master */
		0x1, /* xlnx,sysref-source */
		0x1, /* xlnx,sysref-source */
		0x2, /* xlnx,ip-type */
		0x1, /* xlnx,silicon-revision */
		{
			{
				0, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				6.4, /* xlnx,sampling-rate */
				6400.000, /* xlnx,refclk-freq */
				0.0, /* xlnx,fabric-freq */
				10, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				10.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
				0, /* xlnx,link-coupling */
		{
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
			{
				0, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				6.4, /* xlnx,sampling-rate */
				6400.000, /* xlnx,refclk-freq */
				0.0, /* xlnx,fabric-freq */
				10, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				10.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
				0, /* xlnx,link-coupling */
		{
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
			{
				0, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				6.4, /* xlnx,sampling-rate */
				6400.000, /* xlnx,refclk-freq */
				0.0, /* xlnx,fabric-freq */
				10, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				10.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
				0, /* xlnx,link-coupling */
		{
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
			{
				0, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				6.4, /* xlnx,sampling-rate */
				6400.000, /* xlnx,refclk-freq */
				0.0, /* xlnx,fabric-freq */
				10, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				10.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
				0, /* xlnx,link-coupling */
		{
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
			{
				0, /* xlnx,slice-enable */
				0, /* xlnx,invsinc-ctrl */
				2, /* xlnx,mixer-mode */
				0, /* xlnx,decoder-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				16, /* xlnx,data-width */
				0, /* xlnx,interpolation-mode */
				0, /* xlnx,fifo-enable */
				0, /* xlnx,adder-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
},
{
			{
				1, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				4, /* xlnx,sampling-rate */
				4000.000, /* xlnx,refclk-freq */
				500.000, /* xlnx,fabric-freq */
				24, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				5.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
		{
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
			{
				1, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				4, /* xlnx,sampling-rate */
				4000.000, /* xlnx,refclk-freq */
				500.000, /* xlnx,fabric-freq */
				24, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				5.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
		{
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				0, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				0, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				9, /* xlnx,data-width */
				0, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				9, /* xlnx,data-width */
				0, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
			{
				1, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				4, /* xlnx,sampling-rate */
				4000.000, /* xlnx,refclk-freq */
				500.000, /* xlnx,fabric-freq */
				24, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				5.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
		{
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
			{
				1, /* xlnx,enable */
				0, /* xlnx,pll-enable */
				4, /* xlnx,sampling-rate */
				4000.000, /* xlnx,refclk-freq */
				500.000, /* xlnx,fabric-freq */
				24, /* xlnx,fbdiv */
				1, /* xlnx,outdiv */
				1, /* xlnx,refclk-div */
				0, /* xlnx,band */
				5.000, /* xlnx,fs-max */
				2, /* xlnx,slices */
		{
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				1, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				0, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
			{
				0, /* xlnx,slice-enable */
				2, /* xlnx,mixer-mode */
			},
},
{
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				8, /* xlnx,data-width */
				1, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				1, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				9, /* xlnx,data-width */
				0, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
			{
				0, /* xlnx,data-type */
				9, /* xlnx,data-width */
				0, /* xlnx,decimation-mode */
				0, /* xlnx,fifo-enable */
				3, /* xlnx,mixer-type */
				0.0 /* xlnx,nco-freq */
			},
		},
			},
		}, /* child,required */
	},
	 {
		 NULL
	}
};