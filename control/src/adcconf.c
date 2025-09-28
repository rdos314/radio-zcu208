/******************************************************************************
* Copyright (C) 2021-2022 Xilinx, Inc. All rights reserved.
* Copyright (C) 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file xrfclk_examples_app.c
*
* Contains the examples which run most of the APIs.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who    Date     Changes
* ----- ---    -------- -----------------------------------------------
* 1.0   dc     07/21/19 Initial version
* 1.1   dc     11/21/19 Remove xil dependencies from linux build
*       dc     12/05/19 adjust LMX and LMK configs to a rftool needs
* 1.5   dc     18/01/21 pass GPIO Mux base address as parameter
* 1.6   dc     19/01/24 Correct linux gpio ID
* 2.0   dc     24/03/25 Update BM for SDT
*
* </pre>
*
******************************************************************************/


#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "clk104.h"

#include "xstatus.h"0data

#define LMK_CONFIG_ID	1
#define LMX_CONFIG_ID	12

static u32 data[256];

static bool resetAll()
{
	if (!XRFClk_ResetChip(RFCLK_LMK)) 
		return false;

	if (!XRFClk_ResetChip(RFCLK_LMX2594_1)) 
		return false;
        
	if (!XRFClk_ResetChip(RFCLK_LMX2594_2)) 
		return false;
        
	return true;
}

static int getConfigAll()
{
	int i;

	if (!XRFClk_GetConfigFromOneChip(RFCLK_LMX2594_1, data))
        return false;
	
	if (!XRFClk_GetConfigFromOneChip(RFCLK_LMX2594_2, data))
        return false;
	
	if (!XRFClk_GetConfigFromOneChip(RFCLK_LMK, data))
        return false;

	return true;
}

bool ConfigAdc()
{
	u32 d;

	/* The base address is defined in xparameters.h */
	XRFClk_Init(XPAR_CLK104_MUX_BASEADDR);

	/* Reset */
    if (!resetAll())
		return false;

	/* Write/Read dummy value to LMX2594 */
	d = 0x20112;
	if (!XRFClk_WriteReg(RFCLK_LMX2594_1, d))
		return false;

	d = 0;
	if (!XRFClk_ReadReg(RFCLK_LMX2594_1, &d))
		return false;

	d = 0x20212;
	/* Write/Read dummy value to LMX2594 */
	if (!XRFClk_WriteReg(RFCLK_LMX2594_2, d))
		return false;
	
	d = 0;
	if (!XRFClk_ReadReg(RFCLK_LMX2594_2, &d))
		return false;

	/* Set config with ID */
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMK, LMK_CONFIG_ID))
		return false;
	
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_1, LMX_CONFIG_ID)) 
		return false;

	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_2, LMX_CONFIG_ID))
		return false;

	/* Get config from chip */
	if (!getConfigAll())
		return false;

	sleep(1);

    /* Reset */
    if (!resetAll())
		return false;

	/* Set config on all chips */
	if (!XRFClk_SetConfigOnAllChipsFromConfigId(LMK_CONFIG_ID, LMX_CONFIG_ID, LMX_CONFIG_ID))
		return false;

	/* Get config from chip */
	if (!getConfigAll())
		return false;

	XRFClk_Close();

	return true;
}
