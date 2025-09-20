#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_exception.h"
#include <stdio.h>
#include "math.h"
#include "xplatform_info.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "xgpiops.h"
#include "xil_io.h"
#include "xgpio.h"
#include "xscugic.h"

/* File name reference: 250M_PL_125M_SYSREF_10M.txt */
/* DAC refclk, ADC refclk, and LMX input: 250MHz
   PL refclk (MTS): 125MHz
   Sysref (Analog and digital, MTS): 10MHz */

const u32 LMK_CKin[] =
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
};

/* Frequency configurations for LMX2594(A/B) PLL */
/* Definition of the file name:
   REF corresponds to the input expected by the LMX 2594
   Last frequency is the output of the LMX
   Example LMX2594_REF-245M76__491M52.txt means LMX reference input expected is 245.76MHz, LMX output 491.52MHz
*/

/* LMX2594_REF-250M__5000M.txt */
const u32 LMX2594[] =
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
};



#define TMRCTR_BASEADDR         XPAR_R5_TIMER_BASEADDR
#define TMRCTR_INTERRUPT_ID     XPAR_FABRIC_R5_TIMER_INTR
#define INTC_BASEADDR           XPAR_GIC_R5_BASEADDR

#define TIMER_CNTR_0     0

#define INTC            XScuGic
#define INTC_HANDLER    XScuGic_InterruptHandler

#define RESET_VALUE             0xFA0A1F01                      //Time Interval of 1 sec

static XGpioPs PsGpio;
extern XGpioPs_Config XGpioPs_ConfigTable[XPAR_XGPIOPS_NUM_INSTANCES];
#define GPIO_BASEADDR   XPAR_XGPIOPS_0_BASEADDR

#define OUTPUT_PIN              23      /* Pin connected to LED/Output */

/************************** Variable Definitions *****************************/

static int TimerExpired;

INTC InterruptController;  /* The instance of the Interrupt Controller */
XTmrCtr TimerCounterInst;   /* The instance of the Timer Counter */

/*****************************************************************************/
/**
* This function is the handler which performs processing for the timer counter.
* It is called from an interrupt context such that the amount of processing
* performed should be minimized.  It is called when the timer counter expires
* if interrupts are enabled.
*
* This handler is application specific to handle timer counter interrupts.
* In this case the handler stops the timer and indicates the timer counter
* state to the application by setting the TimerExpired flag to high.
*
* @param        CallBackRef is a pointer to the callback function
* @param        TmrCtrNumber is the number of the timer to which this
*               handler is associated with.
*
* @return       None.
*
* @note         None.
*
******************************************************************************/
void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber)
{
    XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;
    if (NULL == InstancePtr)
        return;

    XTmrCtr_Stop(InstancePtr,TmrCtrNumber);
    TimerExpired = 1;
}

/*****************************************************************************/
/**
* The purpose of this function is to illustrate how to use the XGpioPs component.
* It initializes the PS GPIO and sets the direction of the Output Pin.
*
* @param        PsGpioInstancePtr is a pointer to the XGpioPs driver Instance
* @param        BaseAddr is the XPAR_<GPIOPS_instance>_BASEADDR value from      xparameters.h
* @return       XST_SUCCESS if the Test is successful, otherwise XST_FAILURE
*
*****************************************************************************/
int PsGpioSetup(XGpioPs* PsGpioInstancePtr, UINTPTR BaseAddr)
{
    int Status;
    XGpioPs_Config*GpioConfigPtr;
    GpioConfigPtr = XGpioPs_LookupConfig(GPIO_BASEADDR);

    if (GpioConfigPtr == NULL)
        return XST_FAILURE;

    Status = XGpioPs_CfgInitialize(PsGpioInstancePtr,
                                GpioConfigPtr,
                                GpioConfigPtr->BaseAddr);

    if( XST_SUCCESS != Status)
        return XST_FAILURE;

    XGpioPs_SetDirectionPin(PsGpioInstancePtr, OUTPUT_PIN,1);
    XGpioPs_SetOutputEnablePin(PsGpioInstancePtr, OUTPUT_PIN,1);

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function setups the interrupt system such that interrupts can occur
* for the timer counter. This function is application specific since the actual
* system may or may not have an interrupt controller.  The timer counter could
* be directly connected to a processor without an interrupt controller.  The
* user should modify this function to fit the application.
*
* @param        IntcInstancePtr is a pointer to the Interrupt Controller
*               driver Instance.
* @param        TmrCtrInstancePtr is a pointer to the XTmrCtr driver Instance.
* @param        BaseAddr is the XPAR_<TmrCtr_instance>_BASEADDR value from
*               xparameters.h.
* @param        IntrId is XPAR_<INTC_instance>_<TmrCtr_instance>_VEC_ID
*               value from xparameters.h.
* @param        TmrCtrNumber is the number of the timer to which this
*               handler is associated with.
*
* @return       XST_SUCCESS if the Test is successful, otherwise XST_FAILURE.
*
* @note         This function contains an infinite loop such that if interrupts
*               are not working it may never return.
*
******************************************************************************/
static int TmrCtrSetupIntrSystem(INTC* IntcInstancePtr,
                                 XTmrCtr* TmrCtrInstancePtr,
                                 UINTPTR BaseAddr,
                                 u16 IntrId,
                                 u8 TmrCtrNumber)
{
    int Status;

    XScuGic_Config *IntcConfig;

    IntcConfig = XScuGic_LookupConfig(INTC_BASEADDR);
    if (NULL == IntcConfig)
        return XST_FAILURE;

    Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                                    IntcConfig->CpuBaseAddress);

    if (Status != XST_SUCCESS)
        return XST_FAILURE;

    XScuGic_SetPriorityTriggerType(IntcInstancePtr, IntrId, 0xA0, 0x3);

    Status = XScuGic_Connect(IntcInstancePtr, IntrId,
                            (Xil_ExceptionHandler)XTmrCtr_InterruptHandler,
                             TmrCtrInstancePtr);

    if (Status != XST_SUCCESS)
        return Status;

    XScuGic_Enable(IntcInstancePtr, IntrId);

    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                (Xil_ExceptionHandler)
                                INTC_HANDLER,
                                IntcInstancePtr);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}


/*****************************************************************************/
/**
* This function does a setup of the timer counter device and driver. The purpose
* of this function is to illustrate how to use the XTmrCtr component.
* It initializes a timer counter in generate mode and sets the reset value, which
* decides the time before timer counter expires and raises an interrupt.
*
* This function uses interrupt driven mode of the timer counter.
*
* @param        IntcInstancePtr is a pointer to the Interrupt Controller
*               driver Instance
* @param        TmrCtrInstancePtr is a pointer to the XTmrCtr driver Instance
* @param        BaseAddr is the XPAR_<TmrCtr_instance>_BASEADDR value from
*               xparameters.h
* @param        IntrId is XPAR_<INTC_instance>_<TmrCtr_instance>_INTERRUPT_INTR
*               value from xparameters.h
* @param        TmrCtrNumber is the number of the timer to which this
*               handler is associated with.
*
* @return       XST_SUCCESS if the Test is successful, otherwise XST_FAILURE
*
* @note         This function contains an infinite loop such that if interrupts
*               are not working it may never return.
*
*****************************************************************************/
int TmrControllerSetup(INTC* IntcInstancePtr,
                        XTmrCtr* TmrCtrInstancePtr,
                        UINTPTR BaseAddr,
                        u16 IntrId,
                        u8 TmrCtrNumber)
{
    int Status;

    Status = XTmrCtr_Initialize(TmrCtrInstancePtr, BaseAddr);
    if (Status != XST_SUCCESS)
        return XST_FAILURE;

    Status = XTmrCtr_SelfTest(TmrCtrInstancePtr, TmrCtrNumber);
    if (Status != XST_SUCCESS)
        return XST_FAILURE;

    Status = TmrCtrSetupIntrSystem(IntcInstancePtr,
                                   TmrCtrInstancePtr,
                                   BaseAddr,
                                   IntrId,
                                   TmrCtrNumber);

    if (Status != XST_SUCCESS)
        return XST_FAILURE;

    XTmrCtr_SetHandler(TmrCtrInstancePtr, TimerCounterHandler,
                       TmrCtrInstancePtr);

    XTmrCtr_SetOptions(TmrCtrInstancePtr,TmrCtrNumber,
                      (XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION | XTC_CSR_INT_OCCURED_MASK ));

    XTmrCtr_SetResetValue(TmrCtrInstancePtr, TmrCtrNumber, RESET_VALUE);

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function is the main function of the Tmrctr example using Interrupts.
*
* @param        None.
*
* @return       XST_SUCCESS to indicate success, else XST_FAILURE to indicate a
*               Failure.
*
* @note         None.
*
******************************************************************************/
int main(void)
{
    int Status;
    int val;

    Status = PsGpioSetup(&PsGpio, GPIO_BASEADDR);

    if (XST_SUCCESS != Status)
        return XST_FAILURE;

/*
     Status = TmrControllerSetup(&InterruptController,
                                 &TimerCounterInst,
                                  TMRCTR_BASEADDR,
                                  TMRCTR_INTERRUPT_ID,
                                  TIMER_CNTR_0);

    if (Status != XST_SUCCESS)
        return XST_FAILURE;

*/

    Status = XTmrCtr_Initialize(&TimerCounterInst, TMRCTR_BASEADDR);
    if (Status != XST_SUCCESS)
        return XST_FAILURE;

    XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, RESET_VALUE);

    while (1)
    {
        if (1== XGpioPs_ReadPin(&PsGpio,OUTPUT_PIN))
            XGpioPs_WritePin(&PsGpio,OUTPUT_PIN,0);
        else
            XGpioPs_WritePin(&PsGpio,OUTPUT_PIN,1);

        XTmrCtr_Start(&TimerCounterInst, TIMER_CNTR_0);

       val = 1;

       while (val)
           val = XTmrCtr_GetValue(&TimerCounterInst, TIMER_CNTR_0);
    }

    return XST_SUCCESS;
}
