#include "xparameters.h"
#include "xtmrctr.h"
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "math.h"
#include "memory.h"

#define PI              3.1415926535897932384626433832795028841971693993751
#define DEG2RAD         (PI / 180.0)
#define RAD2DEG         (180.0 / PI)
#define SPEED_OF_LIGHT  299792458.0 // m/s
#define LOW_DIST        2.0 // m
#define HIGH_DIST       1.0 // m

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

int GenerateMorlet(double fs, double f, int periods, int16_t amp, double mdiff)
{
    int p;
    int size;
    double dval;
    double rho;
    double mult;
    double gaus;
    double incr;
    double i, r;
    double diff;

    diff = 1000000.0 * fs / SPEED_OF_LIGHT * mdiff;

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
        dval = (double)p + diff;
        gaus = exp(mult * dval * dval);
        r = gaus * cos(dval * incr);
        sample_arr[size+p] = (int16_t)(r * amp);

        dval = -(double)p + diff;
        gaus = exp(mult * dval * dval);
        r = gaus * cos(dval * incr);
        sample_arr[size-p] = (int16_t)(r * amp);
    }
	return 2 * size + 1;
}

int GenerateCos(double fs, double f, int periods, int16_t amp, double mdiff)
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
        dval = (double)p + mdiff;
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

void CalcLowDist(double compass_deg, double dist[3])
{
    double angle_rad = compass_deg * DEG2RAD;
    double xc = sin(angle_rad);
    double yc = cos(angle_rad);
    double xp[3];
    double yp[3];
    int i;
    double val;
    double avg;

    xp[0] = 0.0;
    yp[0] = LOW_DIST / sqrt(3.0);
    
    xp[1] = 0.5 * LOW_DIST;
    yp[1] = -0.5 * yp[0];
    
    xp[2] = -xp[1];
    yp[2] =  yp[1];

    avg = 0.0;
    for (i = 0; i < 3; i++)
    {
        val = -(xc * xp[i] + yc * yp[i]);
        avg += val;
        dist[i] = val;
    }
    
    avg = avg / 3.0;

    for (i = 0; i < 3; i++)
        dist[i] -= avg;    
}

void CalcHighDist(double compass_deg, double dist[3])
{
    double angle_rad = compass_deg * DEG2RAD;
    double xc = sin(angle_rad);
    double yc = cos(angle_rad);
    double xp[3];
    double yp[3];
    int i;
    double val;
    double avg;

    xp[0] = 0.0;
    yp[0] = HIGH_DIST / sqrt(3.0);
    
    xp[1] = 0.5 * HIGH_DIST;
    yp[1] = -0.5 * yp[0];
    
    xp[2] = -xp[1];
    yp[2] =  yp[1];

    avg = 0.0;
    for (i = 0; i < 3; i++)
    {
        val = -(xc * xp[i] + yc * yp[i]);
        avg += val;
        dist[i] = val;
    }
    
    avg = avg / 3.0;

    for (i = 0; i < 3; i++)
        dist[i] -= avg;    
}

void LoadLowZero(double fs, double f, int periods)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    int size;
    
	size = GenerateZero(fs, f, periods);
	LoadSamples(control, 0, sample_arr, size);
	LoadSamples(control, 1, sample_arr, size);
	LoadSamples(control, 2, sample_arr, size);
}

void LoadHighZero(double fs, double f, int periods)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    int size;
    
	size = GenerateZero(fs, f, periods);
	LoadSamples(control, 4, sample_arr, size);
	LoadSamples(control, 5, sample_arr, size);
	LoadSamples(control, 6, sample_arr, size);
}

void LoadLowMorlet(double fs, double f, int periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcLowDist(angle, dist);

    size = GenerateMorlet(fs, f, periods, amp, dist[0]);
	LoadSamples(control, 0, sample_arr, size);

    size = GenerateMorlet(fs, f, periods, amp, dist[1]);
	LoadSamples(control, 1, sample_arr, size);

    size = GenerateMorlet(fs, f, periods, amp, dist[2]);
	LoadSamples(control, 2, sample_arr, size);
}

void LoadHighMorlet(double fs, double f, int periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcHighDist(angle, dist);

    size = GenerateMorlet(fs, f, periods, amp, dist[0]);
	LoadSamples(control, 4, sample_arr, size);

    size = GenerateMorlet(fs, f, periods, amp, dist[1]);
	LoadSamples(control, 5, sample_arr, size);

    size = GenerateMorlet(fs, f, periods, amp, dist[2]);
	LoadSamples(control, 6, sample_arr, size);
}

void LoadLowCos(double fs, double f, int periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcLowDist(angle, dist);

    size = GenerateCos(fs, f, periods, amp, dist[0]);
    LoadSamples(control, 0, sample_arr, size);

    size = GenerateCos(fs, f, periods, amp, dist[1]);
	LoadSamples(control, 1, sample_arr, size);

    size = GenerateCos(fs, f, periods, amp, dist[2]);
	LoadSamples(control, 2, sample_arr, size);
}

void LoadHighCos(double fs, double f, int periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcHighDist(angle, dist);

    size = GenerateCos(fs, f, periods, amp, dist[0]);
	LoadSamples(control, 4, sample_arr, size);

    size = GenerateCos(fs, f, periods, amp, dist[1]);
	LoadSamples(control, 5, sample_arr, size);
    
    size = GenerateCos(fs, f, periods, amp, dist[2]);
	LoadSamples(control, 6, sample_arr, size);
}

void StartSim()
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;

	control->cmd = CMD_START_SIM;
	control->cmd = 0;
}

int main()
{
	LoadLowZero(4000.0, 46.0, 30);
//	LoadLowMorlet(4000.0, 46.0, 5, 25000, 45.0);
	LoadLowCos(4000.0, 46.0, 30, 25, 45.0);
	LoadLowZero(4000.0, 46.0, 30);

	LoadHighZero(4000.0, 189.0, 120);
//	LoadHighMorlet(4000.0, 189.0, 20, 25000, 45.0);
	LoadHighCos(4000.0, 189.0, 120, 25, 45.0);
	LoadHighZero(4000.0, 189.0, 120);

	StartSim();

    return 0;
}
