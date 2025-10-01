/******************************************************************************
* Copyright (C) 2018 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/****************************************************************************/
/**
*
* @file xrfdc_mts_example.c
*
* RFSoC MultiTile Sync Example test application
*
* This example calls the RFdc Multi-tile-sync (MTS) API with the
* following configuration:
* Tiles to Sync: DAC0, DAC1, ADC0, ADC1, ADC2, ADC3.
*
* MTS expects the PL clock, the AXI stream clock and the FS to all be
* compatible for it to function correctly. More information surrounding this
* can be found in PG269.
* <pre>
*
* MODIFICATION HISTORY:
*
* Ver   Who    Date     Changes
* ----- -----  -------- -----------------------------------------------------
* 3.1   jm     01/24/18 First release
* 5.0   sk     09/05/18 Rename XRFdc_MTS_RMW_DRP as XRFdc_ClrSetReg.
* 5 0   mus    08/18/18 Updated to remove xparameters.h dependency for linux
*                       platform.
* 6.0   cog    02/21/19 Removed unnecessary register writes.
*              02/21/19 Set frequency and sample rate to appropriate values
*                       for MTS.
*              02/21/19 Set metal log level to DEBUG.
* 7.0   cog    07/25/19 Updated example for new metal register API.
* 8.1   cog    08/28/20 Make the example toatally generic, updated information.
* 10.0  cog    11/26/20 xrfdc_mts.h is now integrated to xrfdc.h.
*       cog    03/08/21 MTS now scans reference tile first. This has required a
*                       change to the prototype of XRFdc_MultiConverter_Init.
*
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xparameters.h"
#include "xrfdc.h"
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

static XRFdc RFdcInst;      /* RFdc driver instance */

/****************************************************************************/
/**
*
* This function runs a MTS test on the RFSoC data converter device using the
* driver APIs.
* This function does the following tasks:
*	- Initialize the RFdc device driver instance
*	- Test MTS feature.
*
* @param	RFdcDeviceId is the XPAR_<XRFDC_instance>_DEVICE_ID value
*		from xparameters.h.
*
* @return
*		- XRFDC_SUCCESS if the example has completed successfully.
*		- XRFDC_FAILURE if the example has failed.
*
* @note   	None
*
****************************************************************************/
bool StartAdc()
{
	int status;
	u32 factor;
	XRFdc_Config *ConfigPtr;
    XRFdc_MultiConverter_Sync_Config ADC_Sync_Config;
	XRFdc_IPStatus IPStatus;

    ConfigPtr = XRFdc_LookupConfig(XPAR_XRFDC_0_BASEADDR);
    if (ConfigPtr == NULL) 
		return false;

    status = XRFdc_CfgInitialize(&RFdcInst, ConfigPtr);
    if (status != XRFDC_SUCCESS)
		return false;

	status = XRFdc_GetIPStatus(&RFdcInst, &IPStatus);
    if (status != XRFDC_SUCCESS)
		return false;

    /* Initialize ADC MTS Settings */
    XRFdc_MultiConverter_Init (&ADC_Sync_Config, 0, 0, XRFDC_TILE_ID0);
 
	ADC_Sync_Config.Tiles = 0x77;	/* Sync ADC tiles 0, 1, 2, 4, 5 and 6 */
    status = XRFdc_MultiConverter_Sync(&RFdcInst, XRFDC_ADC_TILE, &ADC_Sync_Config);
					
    if (status != XRFDC_MTS_OK)
		return false;

	status = XRFdc_SetupFIFO(&RFdcInst, XRFDC_ADC_TILE, -1, 1);
    if (status != XRFDC_SUCCESS)
		return false;

	return true;
}
