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
#include <string.h>
#include <unistd.h>

#include "clk104.h"

#include "xstatus.h"
#include "xil_assert.h"
#include "xil_types.h"
#include "xiicps.h"

#define RFCLK_VERSION "1.4"

#define LMK_CONFIG_ID	1
#define LMX_CONFIG_ID	12

XIicPs Iic1;


/* MUX Selext GPIO definitions */

#define I2C_SLEEP_US 1000U /* I2C sleep period */

#define SELECT_SPI_SDO(X) (1 << (3 - X)) /* Value which routs MUX */
#define RF_DATA_READ_BIT 0X80 /* Bit which indicates read */
#define LMX_RESET_VAL 2 /* Reset value for LMX */
#define LMK_RESET_VAL 0X80 /* Reset value for LMK04828 */

#define LMK_ADDRESS_STEP 8 /* Address step for different port */
#define LMK_PORT_ID_MAX 7 /* Number of output ports */
#define LMK_PORT_STATE_MAX 0xff /* Number of states on output port */
#define LMK_DCLKOUTX_DIV_MAX 31 /* Max CLKOUTX divider value */
#define LMK_DCLKOUTX_MUX_MAX 3 /* Max CLKOUTX MUX value */
#define LMK_SDCLKOUTY_MUX_MAX 1 /* Max CLKOUTY MUX value */
#define LMK_SYSREF_DIV_MIN 8 /* Min SYSREF divider value */
#define LMK_SYSREF_DIV_MAX 8191 /* Max SYSREF divider value */

#define LMX_ADDRESS_SHIFT 16 /* LMX address shift value */
#define LMX_ADDRESS_BITFIELD 0X7F /* LMX address bitfield */
#define LMK_ADDRESS_SHIFT 8 /* LMK address shift value */
#define LMK_ADDRESS_BITFIELD 0X1FFF /* LMK address bitfield */

#define I2C_ADDR_BUS_SWITCH 0X74 /* Bus switch i2c address */
#define I2C_ADDR_I2C2SPI_BRIDGE 0X2F /* I2C2SPI bridge i2c address */
#define I2C_ADDR_I2C_IO_EXPANDER 0X20 /* I2C io expander i2c address */
#define I2C_SWITCH_SELECT_I2C2SPI_BRIDGE (1 << 5) /* Switch value for bridge */
#define I2C_MUX_SEL_0 (1 << 1) /* MUX_SEL0 GPIO bit */
#define I2C_MUX_SEL_1 (1 << 2) /* MUX_SEL1 GPIO bit */
#define NUM_IIC_RETRIES (5) /* Number of IIC retries */
#define DELAY_100uS (100) /* Number for 1ms delay */

#define LMX_MUXOUT_REG_ADDR 0 /* LMX MUXOUT reg. address */
#define LMX_MUXOUT_REG_VAL 0 /* LMX MUXOUT reg. value */
#define LMK_MUXOUT_REG_ADDR 0X15F /* LMK MUXOUT reg. address */
#define LMK_MUXOUT_REG_VAL 0X3B /* LMK MUXOUT reg. value */
#define MUXOUT_LD_SEL_BIT 4 /* MUXOUT select bit */
#define LMK_CFG_OUTPUT_PORT0_ADDR 0X107 /* LMK config port0 address */
#define LMK_DCLKOUTX_DIV_PORT0_ADDR 0X100 /* CLKOUTX port0 divider address */
#define LMK_DCLKOUTX_MUX_PORT0_ADDR 0X103 /* CLKOUTX port 0 MUX address */
#define LMK_SDCLKOUTY_MUX_PORT0_ADDR 0X104 /* CLKOUTY port 0 MUX address */
#define LMK_SYSREF_DIV_MSB_PORT0_ADDR 0X13A /* MSB divider port 0 address */
#define LMK_SYSREF_DIV_LSB_PORT0_ADDR 0X13B /* LSB divider port 0 address */

u32 MuxOutRegStorage[RFCLK_CHIP_NUM];

static u32 XRFClk_GpioMuxBaseAddress; /* GPIO base address */
#define GPIO_DATA_REG 0 /* GPIO data register offset address */
#define GPIO_CONTROL_REG 4 /* GPIO control register offset address */
#define GPIO_REG_MASK 0xfffffffC /* GPIO control register mask */

static bool XRFClk_I2CWrData(XIicPs *Iic, u8 Addr, u8 *Val, u8 Len);
static bool XRFClk_I2CRdData(XIicPs *Iic, u8 Addr, u8 *Val, u8 Len);

#define RFCLK_LMX2594_1 0 /* I0 on MUX and SS3 on Bridge */
#define RFCLK_LMX2594_2 1 /* I1 on MUX and SS2 on Bridge */
#define RFCLK_LMK 2 /* I2 on MUX and SS1 on Bridge */
#define RFCLK_CHIP_NUM 3

#define FREQ_LIST_STR_SIZE 50 /* Frequency string size */

/* Frequency values for LMK04208 PLL */

#define LMK_FREQ_NUM 2 /* Number of LMK freq. configs */

/* Frequency list for LMK */
const u8 LMK_FREQ_LIST[LMK_FREQ_NUM][FREQ_LIST_STR_SIZE] = {
        "245M76_PL_122M88_SYSREF_7M68", "250M_PL_125M_SYSREF_10M"
};

#define LMK_COUNT 128

const u32 LMK_CKin[LMK_FREQ_NUM][LMK_COUNT] = 
{

	/* File name reference: 245M76_PL_122M88_SYSREF_7M68.txt
	DAC refclk/ADC refclk/LMX input:  245.76 MHz
	PL refclk (MTS): 122.88MHz,
	Sysref (Analog and digital, MTS): 7.68MHz */
	{
		0x000090, 0x000010, 0x000200, 0x000306, 0x0004D0, 0x00055B,
		0x000600, 0x000C51, 0x000D04, 0x01006A, 0x010155, 0x010255,
		0x010301, 0x010422, 0x010500, 0x010673, 0x010703, 0x01086A,
		0x010955, 0x010A55, 0x010B00, 0x010C22, 0x010D00, 0x010EF0,
		0x010F30, 0x01106A, 0x011155, 0x011255, 0x011301, 0x011422,
		0x011500, 0x011673, 0x011703, 0x01186A, 0x011955, 0x011A55,
		0x011B01, 0x011C22, 0x011D00, 0x011E72, 0x011F03, 0x012074,
		0x012155, 0x012255, 0x012301, 0x012422, 0x012500, 0x012670,
		0x012733, 0x01286A, 0x012955, 0x012A55, 0x012B00, 0x012C22,
		0x012D00, 0x012EF0, 0x012F30, 0x01306A, 0x013155, 0x013255,
		0x013301, 0x013422, 0x013500, 0x013673, 0x013703, 0x013800,
		0x013903, 0x013A01, 0x013B40, 0x013C00, 0x013D01, 0x013E03,
		0x013F02, 0x014009, 0x014100, 0x014200, 0x014331, 0x0144FF,
		0x01457F, 0x014618, 0x01471A, 0x014806, 0x014946, 0x014A06,
		0x014B06, 0x014C00, 0x014D00, 0x014EC0, 0x014F7F, 0x015013,
		0x015102, 0x015200, 0x015300, 0x01547D, 0x015500, 0x01567D,
		0x015703, 0x0158C0, 0x015907, 0x015AD0, 0x015BDA, 0x015C20,
		0x015D00, 0x015E00, 0x015F3E, 0x016000, 0x016119, 0x016244,
		0x016300, 0x016400, 0x0165A0, 0x0171AA, 0x017202, 0x017C15,
		0x017D33, 0x016600, 0x016700, 0x0168C0, 0x016959, 0x016A20,
		0x016B00, 0x016C00, 0x016D00, 0x016E1B, 0x017300, 0x1FFD00,
		0x1FFE00, 0x1FFF53,
	},

	/* File name reference: 250M_PL_125M_SYSREF_10M.txt */
	/* DAC refclk, ADC refclk, and LMX input: 250MHz
	PL refclk (MTS): 125MHz
	Sysref (Analog and digital, MTS): 10MHz */
	{
		0x000090, 0x000010, 0x000200, 0x000306, 0x0004D0, 0x00055B,
		0x000600, 0x000C51, 0x000D04, 0x01006C, 0x010155, 0x010255,
		0x010301, 0x010422, 0x010500, 0x010673, 0x010703, 0x01086C,
		0x010955, 0x010A55, 0x010B00, 0x010C22, 0x010D00, 0x010EF0,
		0x010F30, 0x01106C, 0x011155, 0x011255, 0x011301, 0x011422,
		0x011500, 0x011673, 0x011703, 0x01186C, 0x011955, 0x011A55,
		0x011B01, 0x011C22, 0x011D00, 0x011E72, 0x011F03, 0x012078,
		0x012155, 0x012255, 0x012301, 0x012422, 0x012500, 0x012670,
		0x012733, 0x01286C, 0x012955, 0x012A55, 0x012B00, 0x012C22,
		0x012D00, 0x012EF0, 0x012F30, 0x01306C, 0x013155, 0x013255,
		0x013301, 0x013422, 0x013500, 0x013673, 0x013703, 0x013820,
		0x013903, 0x013A01, 0x013B2C, 0x013C00, 0x013D01, 0x013E03,
		0x013F02, 0x014009, 0x014100, 0x014200, 0x014331, 0x0144FF,
		0x01457F, 0x014618, 0x01471A, 0x014806, 0x014946, 0x014A06,
		0x014B06, 0x014C00, 0x014D00, 0x014EC0, 0x014F7F, 0x015013,
		0x015102, 0x015200, 0x015300, 0x01547D, 0x015500, 0x01567D,
		0x015703, 0x0158C0, 0x015907, 0x015AD0, 0x015BDA, 0x015C20,
		0x015D00, 0x015E00, 0x015F3E, 0x016000, 0x016104, 0x016264,
		0x016300, 0x016400, 0x0165A0, 0x0171AA, 0x017202, 0x017C15,
		0x017D33, 0x016600, 0x016700, 0x016819, 0x016959, 0x016A20,
		0x016B00, 0x016C00, 0x016D00, 0x016E1B, 0x017300, 0x1FFD00,
		0x1FFE00, 0x1FFF53,
	},
};

#define LMX_ADC_NUM 13 /* Number of LMX ADC configs */
#define LMX_DAC_NUM 13 /* Number of LMX DAC configs */

/* ADC Frequency list for LMX2594(A) PLL */
const u8 ADC_FREQ_LIST[LMX_ADC_NUM][FREQ_LIST_STR_SIZE] = {
	"LMX2594_REF-245M76__491M52",  "LMX2594_REF-245M76__614M4",
	"LMX2594_REF-245M76__737M28",  "LMX2594_REF-245M76__983M04",
	"LMX2594_REF-245M76__1966M08", "LMX2594_REF-245M76__2211M84",
	"LMX2594_REF-245M76__2457M6",  "LMX2594_REF-250M__2500M",
	"LMX2594_REF-250M__3000M",     "LMX2594_REF-245M76__3072M",
	"LMX2594_REF-245M76__3932M16", "LMX2594_REF-245M76__4915M2",
	"LMX2594_REF-250M__5000M",
};

/* DAC Frequency list for LMX2594(A) PLL */
const u8 DAC_FREQ_LIST[LMX_DAC_NUM][FREQ_LIST_STR_SIZE] = {
	"LMX2594_REF-245M76__491M52",  "LMX2594_REF-245M76__614M4",
	"LMX2594_REF-245M76__737M28",  "LMX2594_REF-245M76__983M04",
	"LMX2594_REF-245M76__1966M08", "LMX2594_REF-245M76__2211M84",
	"LMX2594_REF-245M76__2457M6",  "LMX2594_REF-250M__2500M",
	"LMX2594_REF-250M__3000M",     "LMX2594_REF-245M76__3072M",
	"LMX2594_REF-245M76__3932M16", "LMX2594_REF-245M76__4915M2",
	"LMX2594_REF-250M__5000M",
};

/* Frequency configurations for LMX2594(A/B) PLL */
/* Definition of the file name:
   REF corresponds to the input expected by the LMX 2594
   Last frequency is the output of the LMX
   Example LMX2594_REF-245M76__491M52.txt means LMX reference input expected is 245.76MHz, LMX output 491.52MHz
*/

#define LMX2594_COUNT 116

const u32 LMX2594[][LMX2594_COUNT] = {

	/* LMX2594_REF-245M76__491M52.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E00E5, 0x4D0000, 0x4C000C, 0x4B0940, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240140, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14C848, 0x1327B7,
		0x120064, 0x110117, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__614M4.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0135, 0x4D0000, 0x4C000C, 0x4B0940, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240190, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D848, 0x1327B7,
		0x120064, 0x110141, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__737M28.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E010D, 0x4D0000, 0x4C000C, 0x4B0900, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240168, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D048, 0x1327B7,
		0x120064, 0x11014E, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__983M04.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E00E5, 0x4D0000, 0x4C000C, 0x4B08C0, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240140, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14C848, 0x1327B7,
		0x120064, 0x110117, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__1966M08.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E00E5, 0x4D0000, 0x4C000C, 0x4B0840, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240140, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14C848, 0x1327B7,
		0x120064, 0x110117, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__2211M84.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E010D, 0x4D0000, 0x4C000C, 0x4B0840, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240168, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D048, 0x1327B7,
		0x120064, 0x11014E, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__2457M6.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0135, 0x4D0000, 0x4C000C, 0x4B0840, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240190, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D848, 0x1327B7,
		0x120064, 0x110141, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-250M__2500M.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0105, 0x4D0000, 0x4C000C, 0x4B0840, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240190, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D848, 0x1327B7,
		0x120064, 0x110130, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-250M__3000M.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0001, 0x4D0000, 0x4C000C, 0x4B0840, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x2401E0, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14E048, 0x1327B7,
		0x120064, 0x110064, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__3072M.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0111, 0x4D0000, 0x4C000C, 0x4B0840, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x2401F4, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F43EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14E848, 0x1327B7,
		0x120064, 0x1100BA, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__3932M16.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E00E5, 0x4D0000, 0x4C000C, 0x4B0800, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240140, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F03EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14C848, 0x1327B7,
		0x120064, 0x110117, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-245M76__4915M2.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0135, 0x4D0000, 0x4C000C, 0x4B0800, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240190, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F03EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D848, 0x1327B7,
		0x120064, 0x110141, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	},

	/* LMX2594_REF-250M__5000M.txt */
	{
		0x000002, 0x000000, 0x700000, 0x6F0000, 0x6E0000, 0x6D0000,
		0x6C0000, 0x6B0000, 0x6A0000, 0x690021, 0x680000, 0x670000,
		0x663F80, 0x650011, 0x640000, 0x630000, 0x620200, 0x610888,
		0x600000, 0x5F0000, 0x5E0000, 0x5D0000, 0x5C0000, 0x5B0000,
		0x5A0000, 0x590000, 0x580000, 0x570000, 0x560000, 0x55D300,
		0x540001, 0x530000, 0x521E00, 0x510000, 0x506666, 0x4F0026,
		0x4E0105, 0x4D0000, 0x4C000C, 0x4B0800, 0x4A0000, 0x49003F,
		0x480001, 0x470081, 0x46C350, 0x450000, 0x4403E8, 0x430000,
		0x4201F4, 0x410000, 0x401388, 0x3F0000, 0x3E0322, 0x3D00A8,
		0x3C0000, 0x3B0001, 0x3A8001, 0x390020, 0x380000, 0x370000,
		0x360000, 0x350000, 0x340820, 0x330080, 0x320000, 0x314180,
		0x300300, 0x2F0300, 0x2E07FC, 0x2DC0DF, 0x2C1FA0, 0x2B0000,
		0x2A0000, 0x290000, 0x280000, 0x270001, 0x260000, 0x250104,
		0x240190, 0x230004, 0x220000, 0x211E21, 0x200393, 0x1F03EC,
		0x1E318C, 0x1D318C, 0x1C0488, 0x1B0002, 0x1A0DB0, 0x190624,
		0x18071A, 0x17007C, 0x160001, 0x150401, 0x14D848, 0x1327B7,
		0x120064, 0x110130, 0x100080, 0x0F064F, 0x0E1E40, 0x0D4000,
		0x0C5001, 0x0B00A8, 0x0A10D8, 0x090604, 0x082000, 0x0740B2,
		0x06C802, 0x0500C8, 0x040C43, 0x030642, 0x020500, 0x010809,
		0x00241C, 0x00241C,
	}
};

/****************************************************************************/
/**
*
* This function is used to open and configure i2c drivers.
*
* @param        None
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_InitI2C(void)
{
	XIicPs_Config *Config_iic;
	int Status;
	u32 ClkRate = 100000;

	/* i2c1 */
	Config_iic = XIicPs_LookupConfig(XPAR_I2C1_BASEADDR);

	if (!Config_iic) {
		return false;
	}

	Status = XIicPs_CfgInitialize(&Iic1, Config_iic, Config_iic->BaseAddress);
	if (Status != XST_SUCCESS)
		return false;

	Status = XIicPs_SetSClk(&Iic1, ClkRate);
	if (Status != XST_SUCCESS)
		return false;

	return true;
}

/****************************************************************************/
/**
*
* This function is used to open and configure MUX_SEL GPIO drivers.
*
* @param        None
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_InitGPIO(void)
{
	Xil_Out32(XRFClk_GpioMuxBaseAddress + GPIO_CONTROL_REG, GPIO_REG_MASK);
	return true;
}

/****************************************************************************/
/**
*
* This function is used to configure SPI.
*
* @param        None
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_InitSPI()
{
	u8 tx[2] = { 0xf0, 0x03 };

	return XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 2);
}

/****************************************************************************/
/**
*
* This function is used to set MUX_SEL GPIO pins to connect appropriate SPI
* SDO.
*
* @param        None
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static void XRFClk_MUX_SPI_SDO_GPIOPin(u8 ChipId)
{
	Xil_Out32(XRFClk_GpioMuxBaseAddress, ChipId);
}

/****************************************************************************/
/**
*
* This function is HAL API for I2c read.
*
* @param        IIc I2c port Id.
* @param        Addr address to be read.
* @param        Val read value.
* @param        Len data length.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_I2CRdData_sub(XIicPs *Iic, u8 Addr, u8 *Val, u8 Len)
{
	int Status;
	
	Status = XIicPs_MasterRecvPolled(Iic, Val, Len, Addr);
	if (Status != XST_SUCCESS)
		return false;

	while (XIicPs_BusIsBusy(Iic))
		;
			
	usleep(I2C_SLEEP_US);
	return true;
}

/****************************************************************************/
/**
*
* This function is HAL API for I2c write.
*
* @param        IIc I2c port Id.
* @param        Addr address to be written to.
* @param        Val value to write.
* @param        Len data length.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_I2CWrData_sub(XIicPs *Iic, u8 Addr, u8 *Val, u8 Len)
{
	int Status;
	
	Status = XIicPs_MasterSendPolled(Iic, Val, Len, Addr);
	if (Status != XST_SUCCESS)
		return false;

	while (XIicPs_BusIsBusy(Iic))
		;

	usleep(I2C_SLEEP_US);
	return true;
}

/****************************************************************************/
/**
*
* This function is used to enable clk104 buses on I2C1 bus switch.
*
* @param        ChipId indicates the RF clock chip Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_GetBusSwitchI2C1(u8 *val)
{
	/* Read I2C bus switch configuration */
	return XRFClk_I2CRdData_sub(&Iic1, I2C_ADDR_BUS_SWITCH, val, 1);
}

/****************************************************************************/
/**
*
* This function is used to enable clk104 buses on I2C1 bus switch.
*
* @param        ChipId indicates the RF clock chip Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_SetBusSwitchI2C1()
{
	u8 val;

	/* Enable i2c2spi bridge */
	val = I2C_SWITCH_SELECT_I2C2SPI_BRIDGE;
	/* Write new I2C bus switch configuration */
	return XRFClk_I2CWrData_sub(&Iic1, I2C_ADDR_BUS_SWITCH, &val, 1);
}

/****************************************************************************/
/**
*
* This function is HAL API for I2c read. If attempt failes function will
* repeate IIC write protocol again for DELAY_100uS microseconds multiplied by
* a loop index number. The procedure will be repeated NUM_IIC_RETRIES times.
*
* @param        File descriptor for the i2c driver.
* @param        Addr address to be read.
* @param        Val read value.
* @param        Len data length.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_I2CRdData(XIicPs *Iic, u8 Addr, u8 *Val, u8 Len)
{
	u8 mux = 0;
	u32 i;

	for (i = 0; i < NUM_IIC_RETRIES; i++) 
	{
		/* Set MUX */
		if (!XRFClk_SetBusSwitchI2C1())
			continue;

		/* Read Register */
		if (!XRFClk_I2CRdData_sub(Iic, Addr, Val, Len))
			continue;

		/* Read MUX status */
		if (!XRFClk_GetBusSwitchI2C1(&mux))
			continue;

		/* Check is MUX as expected */
		if (mux == I2C_SWITCH_SELECT_I2C2SPI_BRIDGE)
			break;
		else 
                        
			/* Add delay before the next attempt */
			usleep(DELAY_100uS * (i + 1));
	}
	
	if (i < NUM_IIC_RETRIES)
		return true;
	else
		return false;
}

/****************************************************************************/
/**
*
* This function is HAL API for I2c write. If attempt failes function will
* repeate IIC write protocol again for DELAY_100uS microseconds multiplied by
* a loop index number. The procedure will be repeated NUM_IIC_RETRIES times.
*
* @param        Descriptor for the i2c driver.
* @param        Addr address to be written to.
* @param        Val value to write.
* @param        Len data length.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_I2CWrData(XIicPs *Iic, u8 Addr, u8 *Val, u8 Len)
{
	u8 mux = 0;
	u32 i;

	for (i = 0; i < NUM_IIC_RETRIES; i++) 
	{
		/* Set MUX */
		if (!XRFClk_SetBusSwitchI2C1())
			continue;

		/* Write Register */
		if (!XRFClk_I2CWrData_sub(Iic, Addr, Val, Len))
			continue;

		/* Read MUX status */
		if (!XRFClk_GetBusSwitchI2C1(&mux))
			continue;

		/* Check is MUX as expected */
		if (mux == I2C_SWITCH_SELECT_I2C2SPI_BRIDGE)
			break;
		else 			
			/* Add delay before the next attempt */
			usleep(DELAY_100uS * (i + 1));
	}
	
	if (i < NUM_IIC_RETRIES)
		return true;
	else
		return false;
}

/****************************************************************************/
/**
*
* This function is used to connect MUX for read from the selected chip. The
* function also reconfigure the MUXOUT pin to act as a SPI SDO. The previous
* setting has been saved.
*
* @param        ChipId indicates the RF clock chip Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_MuxSPISDO(u8 ChipId)
{
	bool ok;
	u8 tx[4];

	/* Set the Output MUX pin on a RFclk chip to SPI SDO */
	tx[0] = SELECT_SPI_SDO(ChipId);
	tx[1] = (MuxOutRegStorage[ChipId] >> 16) & 0xff;
	tx[2] = (MuxOutRegStorage[ChipId] >> 8) & 0xff;

	if (ChipId == RFCLK_LMK)
		tx[3] = LMK_MUXOUT_REG_VAL;
	else
		tx[3] = (MuxOutRegStorage[ChipId] & 0xff) & ~MUXOUT_LD_SEL_BIT;

	ok = XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4);
	if (!ok) 
		return false;

	/* Set the MUX_SEL GPIOs to connect appropriate SPI SDO */
	XRFClk_MUX_SPI_SDO_GPIOPin(ChipId); 
	return true;
}

/****************************************************************************/
/**
*
* This function is used to set MUXOUT pin to the original state after read
* completion. Usually the pin is set to indicate a lock state of a PLL.
*
* @param        ChipId indicates the RF clock chip Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_MuxSPISDORevert(u32 ChipId)
{
	u8 tx[4];
	
	tx[0] = SELECT_SPI_SDO(ChipId);
	tx[1] = (MuxOutRegStorage[ChipId] >> 16) & 0xff;
	tx[2] = (MuxOutRegStorage[ChipId] >> 8) & 0xff;
	tx[3] = MuxOutRegStorage[ChipId] & 0xff;

	return XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4);
}

/****************************************************************************/
/****************            A P I   section              *******************/
/****************************************************************************/

/****************************************************************************/
/**
*
* This function is used to write a register on one of LMX2594 or LMX04828.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        d = {D2, D1, D0}
*       Where [D0,D1,D2] bits are:
*               LMK04282:
*                       bit [23] - 1-bit command field (R/W)
*                       bits [22:21] - 2-bit multi-byte field (W1, W0)
*                       bits [20:8] - 13-bit address field (A12 to A0)
*                       bits [7-0]- 8-bit data field (D7 to D0).
*               LMX2594:
*                       bit [23] - 1-bit command field (R/W)
*                       bits [22:16] - 7-bit address field (A6 to A0)
*                       bits [15-0]- 16-bit data field (D15 to D0).
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_WriteReg(u32 ChipId, u32 d)
{
	u8 tx[4] = { SELECT_SPI_SDO(ChipId), (d >> 16) & 0xff, (d >> 8) & 0xff, d & 0xff };

	/* Check is this the register which controls output Mux control */
	if (ChipId == RFCLK_LMK) 
	{
		if (((d >> LMK_ADDRESS_SHIFT) & LMK_ADDRESS_BITFIELD) == LMK_MUXOUT_REG_ADDR)
			MuxOutRegStorage[ChipId] = d;
	}
	else 
	{
		if (((d >> LMX_ADDRESS_SHIFT) & LMX_ADDRESS_BITFIELD) == LMX_MUXOUT_REG_ADDR)
			MuxOutRegStorage[ChipId] = d;
	}
		
	/* Write register */
	return XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4);
}

/****************************************************************************/
/**
*
* This function is used to read a register from one of LMX2594 or LMX04828.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        d = {D2, D1, D0}
*       Where [D0,D1,D2] bits are:
*               LMK04282:
*                       bit [23] - 1-bit command field (R/W)
*                       bits [22:21] - 2-bit multi-byte field (W1, W0)
*                       bits [20:8] - 13-bit address field (A12 to A0)
*                       bits [7-0]- 8-bit data field (D7 to D0).
*               LMX2594:
*                       bit [23] - 1-bit command field (R/W)
*                       bits [22:16] - 7-bit address field (A6 to A0)
*                       bits [15-0]- 16-bit data field (D15 to D0).
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_ReadReg(u32 ChipId, u32 *d)
{
	u8 data[3] = { 0xff & (*d >> 16), 0xff & (*d >> 8), 0xff & (*d) };
	u8 tx[4] = { SELECT_SPI_SDO(ChipId), data[0], data[1], data[2] };

	/* Setup environment for read */
	if (!XRFClk_MuxSPISDO(ChipId))
		return false;

	/* Read register */
	tx[1] = data[0] | RF_DATA_READ_BIT;
	if (!XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4)) 
		return false;
	
	if (!XRFClk_I2CRdData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, data, 3))
		return false;
	
	/* Revert the environment */
	if (!XRFClk_MuxSPISDORevert(ChipId)) 
		return false;
	
	*d = (data[0] << 16) + (data[1] << 8) + data[2];
	return true;
}

/****************************************************************************/
/**
*
* This function is used to initialize RFCLK devices on i2c1-bus:
* i2c1 bus switch, i2c2spi bridge and MUX_SELx GPIOs.
*
* @param        none
*
* @return       GpioId gpio ID for Linux build, n/a for baremetal build.
*
* @note         None
*
****************************************************************************/
bool XRFClk_Init(u32 GpioMuxBaseAddress)
{
	XRFClk_GpioMuxBaseAddress = GpioMuxBaseAddress;

	if (!XRFClk_InitI2C()) 
		return false;
	
	if (!XRFClk_InitGPIO()) 
		return false;
	
	if (!XRFClk_InitSPI()) 
		return false;
	return true;
}

/****************************************************************************/
/**
*
* This function is used to close RFCLK devices.
*
* @param        none
*
* @return       none
*
* @note         None
*
****************************************************************************/
void XRFClk_Close(void)
{
}

/****************************************************************************/
/**
*
* This function is used to reset one of LMX2594 or LMK04828.
*
* @param        ChipId indicates the RF clock chip Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_ResetChip(u32 ChipId)
{
	u32 val;

	if (ChipId == RFCLK_LMK)
		val = LMK_RESET_VAL;
	else
		val = LMX_RESET_VAL;

	if (!XRFClk_WriteReg(ChipId, val)) 
		return false;
	
	if (!XRFClk_WriteReg(ChipId, 0)) 
		return false;
	return true;
}

/****************************************************************************/
/**
*
* This function is used to set config on LMK.
*
* @param        ConfigId indicates the config Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_SetConfigLMK(u32 ConfigId)
{
	int i;
	
	for (i = 0; i < LMK_COUNT; i++) 
	{
		if (!XRFClk_WriteReg(RFCLK_LMK, LMK_CKin[ConfigId][i])) 
			return false;
	}
	return true;
}

/****************************************************************************/
/**
*
* This function is used to set config on LMX.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        ConfigId indicates the config Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_SetConfigLMX(u32 ChipID, u32 ConfigId)
{
	int i;
	
	for (i = 0; i < LMX2594_COUNT; i++) 
	{
		if (!XRFClk_WriteReg(ChipID, LMX2594[ConfigId][i])) 
			return false;
	}
	return true;
}

/****************************************************************************/
/**
*
* This function is used to set a full configuration on one of LMX2594 or
* LMX04828 for the requested frequency.where the register settings is
* provided from the selected hard coded data.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        ConfigId indicates the RF clock chip configuration Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_SetConfigOnOneChipFromConfigId(u32 ChipId, u32 ConfigId)
{
	if (ChipId == RFCLK_LMK) 
		return XRFClk_SetConfigLMK(ConfigId);
	else
		return XRFClk_SetConfigLMX(ChipId, ConfigId);
}

/****************************************************************************/
/**
*
* This function is used to set the full configuration data on one of
* LMX2594 or LMX04828. The all register values are passed as a pointer
* CfgData, Len defines a number of data ready for writing.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        CfgData indicates the configuration for all registers.
* @param        Len indicates a number of data.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_SetConfigOnOneChip(u32 ChipId, u32 *CfgData, u32 Len)
{
	int i;
	u32 *d = CfgData;

	for (i = 0; i < Len; i++, d++) 
	{
		if (!XRFClk_WriteReg(ChipId, *d)) 
			return false;
	}
	return true;
}

/****************************************************************************/
/**
*
* This function is used to set a full configuration on all LMX2594
* and LMK04828 or LMK04208 for the requested frequency.
*
* @param        ConfigId_LMK indicates the LMK configuration Id.
* @param        ConfigId_RF1 indicates the LMX RF1 configuration Id.
* @param        ConfigId_RF2 indicates the LMX RF2 configuration Id.
* @param        ConfigId_RF3 indicates the LMX RF3 configuration Id.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_SetConfigOnAllChipsFromConfigId(u32 ConfigId_LMK, u32 ConfigId_1, u32 ConfigId_2)
{
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMK, ConfigId_LMK)) 
		return false;
	
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_1, ConfigId_1)) 
		return false;
	
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_2, ConfigId_2))
		return false;
	return true;
}

/****************************************************************************/
/**
*
* This function is used to get config from LMK.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        in pointer to array of data read from the chip registers.
* @param        out pointer to array of data read from the chip registers.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_getConfig_fromLMK(u32 ChipId, u32 *in, u32 *out)
{
	int i;
	u8 data[3];
	u8 tx[4];
	tx[0] = SELECT_SPI_SDO(ChipId);

	for (i = 0; i < LMK_COUNT; i++) 
	{
		data[0] = 0xff & (in[i] >> 16);
		data[1] = 0xff & (in[i] >> 8);
		tx[1] = data[0];
		tx[2] = data[1];

		if ((((in[i]) >> 8) & 0xffff) == LMK_MUXOUT_REG_ADDR) 
		{
			out[i] = MuxOutRegStorage[ChipId];
			continue;
		}

		/* Read register */
		tx[1] = data[0] | RF_DATA_READ_BIT;
		if (!XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4)) 
			return false;
		
		if (!XRFClk_I2CRdData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, data, 3)) 
			return false;

		out[i] = (data[0] << 16) + (data[1] << 8) + data[2];
	}
	return true;
}

/****************************************************************************/
/**
*
* This function is used to get config from LMX.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        d pointer to array of data read from the chip registers.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
static bool XRFClk_getConfig_fromLMX(u32 ChipId, u32 *d)
{
	int i;
	u8 data[3] = { 0, 0, 0 };
	u8 tx[4] = { SELECT_SPI_SDO(ChipId), data[0], data[1], data[2] };
	
    for (i = 0; i < LMX2594_COUNT; i++, d++) 
	{
		data[0] = i;

		if (data[0] == LMX_MUXOUT_REG_ADDR) 
		{
			*d = MuxOutRegStorage[ChipId];
			continue;
		}

		/* Read register */
		tx[1] = data[0] | RF_DATA_READ_BIT;
		if (!XRFClk_I2CWrData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4)) 
			return false;
		
		if (!XRFClk_I2CRdData(&Iic1, I2C_ADDR_I2C2SPI_BRIDGE, data, 3)) 
			return false;

		*d = (data[0] << 16) + (data[1] << 8) + data[2];
	}
	return true;
}

/****************************************************************************/
/**
*
* This function is used to read the full configuration data from one of
* LMX2594 or LMX04828.
*
* @param        ChipId indicates the RF clock chip Id.
* @param        CfgData the array of the RF clock chip configuration data.
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_GetConfigFromOneChip(u32 ChipId, u32 *CfgData)
{
	bool ok = true;
	u32 *d = CfgData;

	/* Setup environment for read */
	if (!XRFClk_MuxSPISDO(ChipId)) 
		return false;

	if (ChipId == RFCLK_LMK)
		ok = XRFClk_getConfig_fromLMK(ChipId, (u32 *const)LMK_CKin, d);
	else
		ok = XRFClk_getConfig_fromLMX(ChipId, d);

	/* Revert the environment */
	if (!XRFClk_MuxSPISDORevert(ChipId)) 
		ok = false;
	return ok;
}

/****************************************************************************/
/**
*
* This function is used to enable or disable the specified output port on
* LMK04828.
*
* @param        PortId indicates a LMK04828 port id, [1:7].
* @param        State indicates the state of the port, see chapter 9.7.2.7
*               in lmk04828.pdf datasheet, [0:7]
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_ControlOutputPortLMK(u32 PortId, u32 State)
{
	u32 Addr = (LMK_CFG_OUTPUT_PORT0_ADDR + LMK_ADDRESS_STEP * (PortId - 1)) << LMK_ADDRESS_SHIFT;
	u8 data = State;
	
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
		return false;
	return true;
}

/****************************************************************************/
/**
*
* This function is used to configure a clock divider and the output port MUX
* state on LMK04828. For the details consult tables 16, 18, 19 and 25 in
* the lmk04828.pdf datasheet.
*
* @param        PortId indicates a LMK04828 port id, [1:7].
* @param        DCLKoutX_DIV sets divider for the clock output [0:31].
* @param        DCLKoutX_MUX selects input to the device clk buffer [0:3].
* @param        SDCLKoutY_MUX sets input to SDCLKoutY [0:1].
* @param        SYSREF_DIV sets SYSREF output divider [8:8191]
*
* @return
*       - XST_SUCCESS if successful.
*       - XST_FAILURE if failed.
*
* @note         None
*
****************************************************************************/
bool XRFClk_ConfigOutputDividerAndMUXOnLMK(u32 PortId, u32 DCLKoutX_DIV,
                                          u32 DCLKoutX_MUX, u32 SDCLKoutY_MUX,
                                          u32 SYSREF_DIV)
{
	u32 Addr;
	u8 data;
	
	if ((PortId >= LMK_PORT_ID_MAX) || (PortId == 0) ||
            (DCLKoutX_DIV > LMK_DCLKOUTX_DIV_MAX) ||
            (DCLKoutX_MUX > LMK_DCLKOUTX_MUX_MAX) ||
            (SDCLKoutY_MUX > LMK_SDCLKOUTY_MUX_MAX) ||
            (SYSREF_DIV < LMK_SYSREF_DIV_MIN) ||
            (SYSREF_DIV > LMK_SYSREF_DIV_MAX)) 
		return false;

	/* Set DCLKoutX_DIV */
	Addr = (LMK_DCLKOUTX_DIV_PORT0_ADDR + LMK_ADDRESS_STEP * PortId) << LMK_ADDRESS_SHIFT;
    data = DCLKoutX_DIV;
    if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
		return false;

	/* Set DCLKoutX_MUX */
	Addr = (LMK_DCLKOUTX_MUX_PORT0_ADDR + LMK_ADDRESS_STEP * PortId) << LMK_ADDRESS_SHIFT;
	data = DCLKoutX_MUX;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
		return false;

	/* Set SDCLKoutY_MUX */
	Addr = (LMK_SDCLKOUTY_MUX_PORT0_ADDR + LMK_ADDRESS_STEP * PortId) << LMK_ADDRESS_SHIFT;
	data = DCLKoutX_MUX;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
		return false;

	/* Set SYSREF_DIV */
	Addr = LMK_SYSREF_DIV_MSB_PORT0_ADDR << LMK_ADDRESS_SHIFT;
	data = (SYSREF_DIV >> 8) & 0xff;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
		return false;
	
	Addr = LMK_SYSREF_DIV_LSB_PORT0_ADDR << LMK_ADDRESS_SHIFT;
	data = SYSREF_DIV & 0xff;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
		return false;
	return true;
}


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
	u32 data[LMK_COUNT];

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
