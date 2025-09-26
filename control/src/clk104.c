/*#######################################################################
# ZCU208 radio analyser
# Copyright (C) 1988-2025, Leif Ekblad
#
# MIT License
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# The author of this program may be contacted at leif@rdos.net
#
# clk104.c
# CLK104 setup
#
########################################################################*/

#include "clk104.h"

#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include "xil_assert.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xiicps.h"
XIicPs Iic1;
#define FD_BRIDGE (&Iic1) /* I2C1 driver descriptor address */
#define FD_I2C1 (&Iic1) /* I2C1 driver descriptor address */

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

#include "lmkconf.h"
#include "lmxconf.h"

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

	return XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 2);
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
	s32 ret;

	/* Read I2C bus switch configuration */
	ret = XRFClk_I2CRdData_sub(FD_I2C1, I2C_ADDR_BUS_SWITCH, val, 1);
	if (ret == XST_FAILURE)
		return false;
	else
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
static bool XRFClk_SetBusSwitchI2C1()
{
	u8 val;
	s32 ret;

	/* Enable i2c2spi bridge */
	val = I2C_SWITCH_SELECT_I2C2SPI_BRIDGE;
	/* Write new I2C bus switch configuration */
	ret = XRFClk_I2CWrData_sub(FD_I2C1, I2C_ADDR_BUS_SWITCH, &val, 1);
	if (ret == XST_FAILURE)
		return false;
	else
        return true;
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
		if (XST_FAILURE == XRFClk_SetBusSwitchI2C1())
			continue;

		/* Read Register */
		if (XST_FAILURE == XRFClk_I2CRdData_sub(Iic, Addr, Val, Len))
			continue;

		/* Read MUX status */
		if (XST_FAILURE == XRFClk_GetBusSwitchI2C1(&mux))
			continue;

		/* Check is MUX as expected */
		if (mux == I2C_SWITCH_SELECT_I2C2SPI_BRIDGE)
			break;
		else 
		{
			printf("warrning: i2c1 MUX status change");
                        
			/* Add delay before the next attempt */
			usleep(DELAY_100uS * (i + 1));
		}
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
		if (XST_FAILURE == XRFClk_SetBusSwitchI2C1())
			continue;

		/* Write Register */
		if (XST_FAILURE == XRFClk_I2CWrData_sub(Iic, Addr, Val, Len))
			continue;

		/* Read MUX status */
		if (XST_FAILURE == XRFClk_GetBusSwitchI2C1(&mux))
			continue;

		/* Check is MUX as expected */
		if (mux == I2C_SWITCH_SELECT_I2C2SPI_BRIDGE)
			break;
		else 
		{
			printf("warrning: i2c1 MUX status change");
			
			/* Add delay before the next attempt */
			usleep(DELAY_100uS * (i + 1));
		}
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

	ok = XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4);
	if (!ok) 
	{
		printf("write I2C2SPI bridge");
		return false;
	}

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
	bool ok;
	u8 tx[4];
	
	tx[0] = SELECT_SPI_SDO(ChipId);
	tx[1] = (MuxOutRegStorage[ChipId] >> 16) & 0xff;
	tx[2] = (MuxOutRegStorage[ChipId] >> 8) & 0xff;
	tx[3] = MuxOutRegStorage[ChipId] & 0xff;

	ok = XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4);
	if (!ok) 
	{
		printf("revert back a bridge MUX");
		return false;
	}
	return true;
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
	return XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4);
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
	if (XRFClk_MuxSPISDO(ChipId) == XST_FAILURE)
	{
		printf("Setup SPISDO for read");
		return false;
	}

	/* Read register */
	tx[1] = data[0] | RF_DATA_READ_BIT;
	if (!XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4)) 
	{
		printf("set bridge for read");
		return false;
	}
	
	if (!XRFClk_I2CRdData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, data, 3))
	{
		printf("read register");
		return false;
	}
	
	/* Revert the environment */
	if (!XRFClk_MuxSPISDORevert(ChipId)) 
	{
		printf("revert the environment");
		return false;
	}
	
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
	{
		printf("i2c init");
		return false;
	}
	
	if (!XRFClk_InitGPIO()) 
	{
		printf("gpio init");
		return false;
	}
	
	if (!XRFClk_InitSPI()) 
	{
		printf("spi init");
		return false;
	}
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
	{
		printf("reset chip");
		return false;
	}
	
	if (!XRFClk_WriteReg(ChipId, 0)) 
	{
		printf("undo reset");
		return false;
	}
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
		{
			printf("write reg in LMK");
			return false;
		}
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
		{
			printf("write reg in LMX");
			return false;
		}
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
		{
			printf("write reg");
			return false;
		}
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
	{
		printf("set config to LMK");
		return false;
	}
	
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_1, ConfigId_1)) 
	{
		printf("set config to LMX1");
		return false;
	}
	
	if (!XRFClk_SetConfigOnOneChipFromConfigId(RFCLK_LMX2594_2, ConfigId_2))
	{
		printf("set config to LMX2");
		return false;
	}
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
		if (!XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4)) 
		{
			printf("write reg");
			return false;
		}
		
		if (!XRFClk_I2CRdData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, data, 3)) 
		{
			printf("read reg");
			return false;
		}

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
		if (!XRFClk_I2CWrData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, tx, 4)) 
		{
			printf("write reg");
			return false;
		}
		
		if (!XRFClk_I2CRdData(FD_BRIDGE, I2C_ADDR_I2C2SPI_BRIDGE, data, 3)) 
		{
			printf("read reg");
			return false;
		}

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
	{
		printf("mux SPISDO");
		return false;
	}

	if (ChipId == RFCLK_LMK)
		ok = XRFClk_getConfig_fromLMK(ChipId, (u32 *const)LMK_CKin, d);
	else
		ok = XRFClk_getConfig_fromLMX(ChipId, d);

	/* Revert the environment */
	if (!XRFClk_MuxSPISDORevert(ChipId)) 
	{
		printf("revert SPISDO");
		ok = false;
	}
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
	{
		printf("write reg");
		return false;
}
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
	{
		printf("wrong LMK settings");
		return false;
	}

	/* Set DCLKoutX_DIV */
	Addr = (LMK_DCLKOUTX_DIV_PORT0_ADDR + LMK_ADDRESS_STEP * PortId) << LMK_ADDRESS_SHIFT;
    data = DCLKoutX_DIV;
    if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
	{
		printf("Set DCLKoutX_DIV");
		return false;
	}

	/* Set DCLKoutX_MUX */
	Addr = (LMK_DCLKOUTX_MUX_PORT0_ADDR + LMK_ADDRESS_STEP * PortId) << LMK_ADDRESS_SHIFT;
	data = DCLKoutX_MUX;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
	{
		printf("Set DCLKoutX_MUX");
		return false;
	}

	/* Set SDCLKoutY_MUX */
	Addr = (LMK_SDCLKOUTY_MUX_PORT0_ADDR + LMK_ADDRESS_STEP * PortId) << LMK_ADDRESS_SHIFT;
	data = DCLKoutX_MUX;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
	{
		printf("Set DCLKoutY_DIV");
		return false;
	}

	/* Set SYSREF_DIV */
	Addr = LMK_SYSREF_DIV_MSB_PORT0_ADDR << LMK_ADDRESS_SHIFT;
	data = (SYSREF_DIV >> 8) & 0xff;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
	{
		printf("Set SYSREF_DIV");
		return false;
	}
	
	Addr = LMK_SYSREF_DIV_LSB_PORT0_ADDR << LMK_ADDRESS_SHIFT;
	data = SYSREF_DIV & 0xff;
	if (!XRFClk_WriteReg(RFCLK_LMK, Addr + data)) 
	{
		printf("update SYSREF_DIV");
		return false;
	}
	return true;
}
/** @} */
