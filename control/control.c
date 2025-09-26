#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_exception.h"
#include <stdbool.h>
#include <stdio.h>
#include "math.h"
#include "xplatform_info.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "xgpiops.h"
#include "xil_io.h"
#include "xgpio.h"
#include "xscugic.h"

bool ConfigAdc();

#define TMRCTR_BASEADDR         XPAR_R5_TIMER_BASEADDR
#define TMRCTR_INTERRUPT_ID     XPAR_FABRIC_R5_TIMER_INTR
#define INTC_BASEADDR           XPAR_GIC_R5_BASEADDR

#define TIMER_CNTR_0     0

#define INTC            XScuGic
#define INTC_HANDLER    XScuGic_InterruptHandler

#define RESET_VALUE             0xFFF0BDC1                      //Time Interval of 10 msec

static XGpioPs PsGpio;
extern XGpioPs_Config XGpioPs_ConfigTable[XPAR_XGPIOPS_NUM_INSTANCES];
#define GPIO_BASEADDR   XPAR_GPIO_LED_BASEADDR

#define OUTPUT_PIN              0      /* Pin connected to LED/Output */

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
    char cnt = 0;
    char *led = (char *)GPIO_BASEADDR;

    ConfigAdc();

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
        *led = cnt;
        cnt++;

        XTmrCtr_Start(&TimerCounterInst, TIMER_CNTR_0);

       val = 1;

       while (val)
           val = XTmrCtr_GetValue(&TimerCounterInst, TIMER_CNTR_0);
    }

    return XST_SUCCESS;
}
