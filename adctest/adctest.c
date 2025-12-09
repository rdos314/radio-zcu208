#include "xparameters.h"
#include "xtmrctr.h"
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "math.h"
#include "memory.h"

#define PI              3.1415926535897932384626433832795028841971693993751

#define CMD_LOAD		1
#define CMD_START_ADC	2
#define CMD_START_SIM	3
#define CMD_STOP		4

struct bram_control_t
{
	uint32_t cmd;
	uint32_t status;
	int16_t sample_arr[4092];
};

static int16_t sample_arr[4092];

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

void StartSim(volatile struct bram_control_t *control)
{
	control->cmd = CMD_START_SIM;
	control->cmd = 0;
}

int GenerateMorlet(double fs, double f, int periods, int16_t amp)
{
    int p;
    int size;
    double dval;
    double rho;
    double mult;
    double gaus;
    double incr;
    double i, r;

    incr = 2.0 * PI * f / fs;

    dval = (double)periods * fs / f;
    size = (int)(dval + 0.5);
    if ((size % 2) == 0)
        size++;

    size = size / 2;

    rho = (double)periods / incr;
    mult = -0.5 / rho / rho;

    for (p = 0; p <= size; p++)
    {
        dval = (double)p;
        gaus = exp(mult * dval * dval);
        r = gaus * cos(dval * incr);
        sample_arr[size+p] = (int16_t)(r * amp);
        sample_arr[size-p] = (int16_t)(r * amp);
    }
	return 2 * size + 1;
}

int GenerateCos(double fs, double f, int periods, int16_t amp)
{
    int p;
    int size;
    double dval;
    double incr;
    double r;

    incr = 2.0 * PI * f / fs;

    dval = (double)periods * fs / f;
    size = (int)(dval + 0.5);

    for (p = 0; p < size; p++)
    {
        dval = (double)p;
        r = cos(dval * incr);
        sample_arr[p] = (int16_t)(r * amp);
    }
	return size;
}

int GenerateZero(double fs, double f, int periods)
{
    int p;
    int size;
    double dval;

    dval = (double)periods * fs / f;
    size = (int)(dval + 0.5);

    for (p = 0; p < size; p++)
        sample_arr[p] = 0;

	return size;
}

int main()
{
	int i;
	int size;
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	
	for (i = 0;  i < 256; i++)
		sample_arr[i] = i + 1;

	size = GenerateZero(4000.0, 46.0, 30);

	LoadSamples(control, 0, sample_arr, size);
	LoadSamples(control, 1, sample_arr, size);
	LoadSamples(control, 2, sample_arr, size);

	size = GenerateMorlet(4000.0, 46.0, 5, 25000);
//	size = GenerateCos(4000.0, 46.0, 30, 25000);

	LoadSamples(control, 0, sample_arr, size);
	LoadSamples(control, 1, sample_arr, size);
	LoadSamples(control, 2, sample_arr, size);

	size = GenerateZero(4000.0, 46.0, 30);

	LoadSamples(control, 0, sample_arr, size);
	LoadSamples(control, 1, sample_arr, size);
	LoadSamples(control, 2, sample_arr, size);

	size = GenerateZero(4000.0, 190.0, 120);

	LoadSamples(control, 4, sample_arr, size);
	LoadSamples(control, 5, sample_arr, size);
	LoadSamples(control, 6, sample_arr, size);

	size = GenerateMorlet(4000.0, 190.0, 20, 25000);
//	size = GenerateCos(4000.0, 190.0, 120, 25000);

	LoadSamples(control, 4, sample_arr, size);
	LoadSamples(control, 5, sample_arr, size);
	LoadSamples(control, 6, sample_arr, size);

	size = GenerateZero(4000.0, 190.0, 120);

	LoadSamples(control, 4, sample_arr, size);
	LoadSamples(control, 5, sample_arr, size);
	LoadSamples(control, 6, sample_arr, size);

	StartSim(control);

    return 0;
}
