/******************************************************************************
* Copyright (C) 2021 Xilinx, Inc. All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file xrfclk.h
* @addtogroup xrfclk
* @{
*
* Contains the API of the XRFclk middleware.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who    Date     Changes
* ----- ---    -------- -----------------------------------------------
* 1.0   dc     07/21/19 Initial version
* 1.1   dc     11/21/19 Remove xil dependencies from linux build
*       dc     11/25/19 update LMX and LMK configs
*       dc     12/05/19 adjust LMX and LMK configs to a rftool needs
* 1.2   dc     22/01/20 add version and list of LMK frequencies
*       dc     03/05/20 add protection for shared i2c1 MUX
* 1.3   dc     03/10/20 update LMK/LMX config for MTS
* 1.4   dc     03/30/20 new LMX config suppressing RF noise on dual output
* 1.5   dc     18/01/21 pass GPIO Mux base address as parameter
* </pre>
*
******************************************************************************/
#ifndef __XRFCLK_H_
#define __XRFCLK_H_

#ifdef __cplusplus
extern "C" {
#endif

#define RFCLK_VERSION "1.4"

#include <stdbool.h>
#include "xil_types.h"

#ifdef __cplusplus
}
#endif

#endif
/** @} */
