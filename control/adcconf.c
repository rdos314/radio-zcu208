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

#include "clk104.h"

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "xstatus.h"
#include "xil_printf.h"

#define LMK_CONFIG_ID	1
#define LMX_CONFIG_ID	12

static u32 data[256];

static bool resetAll()
{
	printf("\nReset LMK");
	if (!XRFClk_ResetChip(RFCLK_LMK)) 
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMK)");
		return false;
	} 
	else
		printf("      Pass");

	printf("\nReset LMX2594_1");
	if (!XRFClk_ResetChip(RFCLK_LMX2594_1)) 
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMX2594_1)");
		return false;
	} 
	else
		printf("      Pass");
        
	printf("\nReset LMX2594_2");
	if (!XRFClk_ResetChip(RFCLK_LMX2594_2)) 
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMX2594_2)");
		return false;
	} 
	else
		printf("      Pass");
        
	return true;
}

static int getConfigAll()
{
	int i;

	printf("\nGet config from ID on LMX2594_1");

	if (!XRFClk_GetConfigFromOneChip(RFCLK_LMX2594_1, data))
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMX2594_1)");
        return false;
	} 
	else 
	{
		printf("      Pass");
		printf("\nLMX2594 config data are:\n");
		for (i = 0; i < LMX2594_COUNT; i++)
			printf("%x,", data[i]);
	}
	
	printf("\nGet config from ID on LMX2594_2");
	if (!XRFClk_GetConfigFromOneChip(RFCLK_LMX2594_2, data))
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMX2594_2)");
        return false;
	} 
	else 
	{
		printf("      Pass");
		printf("\nLMX2594 config data are:\n");
		for (i = 0; i < LMX2594_COUNT; i++)
			printf("%x,", data[i]);
	}
	
	printf("\nGet config from ID on LMK");
	if (!XRFClk_GetConfigFromOneChip(RFCLK_LMK, data))
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMK)");
        return false;
	} 
	else 
	{
		printf("      Pass");
		printf("\nLMK config data are:\n");
		for (i = 0; i < LMK_COUNT; i++)
			printf("%x,", data[i]);
	}

	return true;
}

bool ConfigAdc()
{
	u32 d;

	printf("\n----------- START ------------\n");

	/* The base address is defined in xparameters.h */
	XRFClk_Init(XPAR_PS_SUBSYSTEM_AXI_GPIO_SPI_MUX_BASEADDR);

	/* Reset */
    if (resetAll())
		return false;

	/* Write/Read dummy value to LMX2594 */
	d = 0x20112;
	printf("\nWrite dummy data to register in LMX2594_1");
	if (!XRFClk_WriteReg(RFCLK_LMX2594_1, d))
	{
		printf("\nFailure in XRFClk_WriteReg(RFCLK_LMX2594_1)");
		return false;
	} 
	else
		printf("      Pass");

	printf("\nRead and validate register value in LMX2594_1");
	if (!XRFClk_ReadReg(RFCLK_LMX2594_1, &d))
	{
		printf("\nFailure in XRFClk_ReadReg(RFCLK_LMX2594_1)");
		return false;
	} 
	else
        printf("\nread value = %x      Pass", d);

	d = 0x20212;
	/* Write/Read dummy value to LMX2594 */
	printf("\nWrite dummy data to register in LMX2594_1");
	if (!XRFClk_WriteReg(RFCLK_LMX2594_2, d))
	{
		printf("\nFailure in XRFClk_WriteReg(RFCLK_LMX2594_2)");
		return false;
	} 
	else
		printf("      Pass");
	
	printf("\nRead and validate register value in LMX2594_1");
	if (!XRFClk_ReadReg(RFCLK_LMX2594_2, &d))
	{
		printf("\nFailure in XRFClk_ReadReg(RFCLK_LMX2594_2)");
		return false;
	} 
	else
		printf("\nread value = %x      Pass", d);

	/* Set config with ID */
	printf("\nSet config from ID on LMK");
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMK, LMK_CONFIG_ID))
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMK)");
		return false;
	} 
	else
		printf("      Pass");
	
	printf("\nSet config from ID on LMX2594_1");
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_1, LMX_CONFIG_ID)) 
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMX2594_1)");
		return false;
	} 
	else
		printf("      Pass");

	printf("\nSet config from ID on LMX2594_2");
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_2, LMX_CONFIG_ID))
	{
		printf("\nFailure in XRFClk_ResetChip(RFCLK_LMX2594_2)");
		return false;
	} 
	else
		printf("      Pass");

	/* Get config from chip */
	if (!getConfigAll())
		return false;

	sleep(1);

    /* Reset */
    if (!resetAll())
		return false;

	/* Set config on all chips */
	printf("\nSet config on all RF chips");
	if (!XRFClk_SetConfigOnAllChipsFromConfigId(LMK_CONFIG_ID, LMX_CONFIG_ID, LMX_CONFIG_ID))
	{
		printf("\nFailure in XRFClk_SetConfigOnAllChipsFromConfigId()");
		return flse;
	} 
	else
		printf("      Pass");

	/* Get config from chip */
	if (!getConfigAll())
		return false;

	printf("\n----------- STOP ------------\n");
	XRFClk_Close();

	returb true;
}
