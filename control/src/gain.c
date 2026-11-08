#include "xil_io.h"
#include "xgpio_l.h"
#include "xparameters.h"
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

void TestGain(uint16_t val)
{
    XGpio_WriteReg(XPAR_AXI_RF_GAIN_BASEADDR, XGPIO_DATA_OFFSET, val);
}
