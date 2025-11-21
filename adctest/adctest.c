#include "xparameters.h"
#include "xtmrctr.h"
#include <stdbool.h>
#include <stdio.h>
#include "math.h"

#define CMD_LOAD	1

struct bram_control_t
{
	uint32_t cmd;
	uint32_t status;
	uint16_t sample_arr[4092];
};

static uint16_t sample_arr[4092];

void LoadSamples(volatile struct bram_control_t *control, char channel, uint16_t *arr, int size)
{
	int i;
	char counter = control->status & 0xFF;
	
	for (i = 0;  i < size; i++)
		control->sample_arr[i] = arr[i];
	
	control->cmd = CMD_LOAD | (channel << 8) | (size << 16);
	
	while ((control->status & 0xFF) == counter)
		;
	
	control->cmd = 0;
}

int main()
{
	int i;
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	
	for (i = 0;  i < 10; i++)
		sample_arr[i] = i + 1;

	LoadSamples(control, 5, sample_arr, 10);
	LoadSamples(control, 1, sample_arr, 10);

    return 0;
}
