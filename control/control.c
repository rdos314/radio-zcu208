#include "xparameters.h"
#include "xtmrctr.h"
#include <stdbool.h>
#include <stdio.h>
#include "math.h"

bool ConfigAdc();
bool StartAdc();

#define TIMER_CNTR_0     0
#define RESET_VALUE             0xFFF0BDC1                      //Time Interval of 10 msec

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
    char *led = (char *)XPAR_GPIO_LED_BASEADDR;
    XTmrCtr TimerCounterInst;

    if (!ConfigAdc())
        return -1;

    sleep(2);
    
    if (!StartAdc())
        return -1;

    Status = XTmrCtr_Initialize(&TimerCounterInst, XPAR_R5_TIMER_BASEADDR);
    if (Status != XST_SUCCESS)
        return XST_FAILURE;

    XTmrCtr_SetOptions(&TimerCounterInst, 0, XTC_INT_MODE_OPTION);

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
