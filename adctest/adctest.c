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
#define HIGH_DIST       0.5 // m
#define FS              4000.0

#define CMD_LOAD		1
#define CMD_START_ADC	2
#define CMD_START_SIM	3
#define CMD_STOP		4
#define CMD_CONFIG		5

#define CONFIG_MIN_ENV             0
#define CONFIG_MIN_INCR            1
#define CONFIG_MAX_INCR            2
#define CONFIG_MAX_DOA_DIFF        3
#define CONFIG_MIN_SAMPLES         4
#define CONFIG_INV_SAMPLE_DIST     5
#define CONFIG_SHADOW_ANGLE        6
#define CONFIG_SAMPLE_FACTOR       7
#define CONFIG_SAMPLE_DIST         8
#define CONFIG_ANTENNA_PROMILLE    9
#define CONFIG_MAX_ANTENNA_ERROR  10

struct bram_control_t
{
	uint32_t cmd;
	uint32_t status;
	int16_t sample_arr[4092];
};

struct bram_config_t
{
	uint32_t cmd;
	uint32_t status;
	int32_t config_arr[255];
};

static int16_t sample_arr[4092];
static int16_t config_count = 1;
static int32_t config_low_arr[255];
static int32_t config_high_arr[255];

void SetConfig(int index, int low_value, int high_value)
{
    if (index >= config_count)
        config_count = index + 1;
    
    config_low_arr[index] = low_value;
    config_high_arr[index] = high_value;
}

void LoadConfig()
{
	int i;
	volatile struct bram_config_t *config = (volatile struct bram_config_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	char counter = config->status & 0xFF;
	
	for (i = 0;  i < config_count; i++)
		config->config_arr[i] = config_low_arr[i];
	
	config->cmd = CMD_CONFIG | (0 << 8) | (config_count << 16);
	
	while ((config->status & 0xFF) == counter)
		;
	
	config->cmd = 0;
	
	for (i = 0;  i < config_count; i++)
		config->config_arr[i] = config_high_arr[i];
	
	config->cmd = CMD_CONFIG | (1 << 8) | (config_count << 16);
	
	while ((config->status & 0xFF) == counter)
		;
	
	config->cmd = 0;
}

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

int GenerateMorlet(double f, double periods, int16_t amp, double mdiff)
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

    diff = 1000000.0 * FS / SPEED_OF_LIGHT * mdiff;

    incr = 2.0 * PI * f / FS;

    dval = periods * FS / f;
    size = (int)(dval + 0.5);
    if ((size % 2) == 0)
        size++;

    size = size / 2;

    rho = periods / incr;
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

int GenerateCos(double f, double periods, int16_t amp, double mdiff)
{
    int p;
    int size;
    double dval;
    double incr;
    double r;

    incr = 2.0 * PI * f / FS;

    dval = periods * FS / f;
    size = (int)(dval + 0.5);

    for (p = 0; p < size; p++)
    {
        dval = (double)p + mdiff;
        r = cos(dval * incr);
        sample_arr[p] = (int16_t)(r * amp);
    }
	return size;
}

int GenerateZero(double f, double periods)
{
    int p;
    int size;
    double dval;

    dval = periods * FS / f;
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

void LoadLowZero(double f, double periods)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    int size;
    
	size = GenerateZero(f, periods);
	LoadSamples(control, 0, sample_arr, size);
	LoadSamples(control, 1, sample_arr, size);
	LoadSamples(control, 2, sample_arr, size);
}

void LoadHighZero(double f, double periods)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
    int size;
    
	size = GenerateZero(f, periods);
	LoadSamples(control, 4, sample_arr, size);
	LoadSamples(control, 5, sample_arr, size);
	LoadSamples(control, 6, sample_arr, size);
}

void LoadLowMorlet(double f, double periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcLowDist(angle, dist);

    size = GenerateMorlet(f, periods, amp, dist[0]);
	LoadSamples(control, 0, sample_arr, size);

    size = GenerateMorlet(f, periods, amp, dist[1]);
	LoadSamples(control, 1, sample_arr, size);

    size = GenerateMorlet(f, periods, amp, dist[2]);
	LoadSamples(control, 2, sample_arr, size);
}

void LoadHighMorlet(double f, double periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcHighDist(angle, dist);

    size = GenerateMorlet(f, periods, amp, dist[0]);
	LoadSamples(control, 4, sample_arr, size);

    size = GenerateMorlet(f, periods, amp, dist[1]);
	LoadSamples(control, 5, sample_arr, size);

    size = GenerateMorlet(f, periods, amp, dist[2]);
	LoadSamples(control, 6, sample_arr, size);
}

void LoadLowCos(double f, double periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcLowDist(angle, dist);

    size = GenerateCos(f, periods, amp, dist[0]);
    LoadSamples(control, 0, sample_arr, size);

    size = GenerateCos(f, periods, amp, dist[1]);
	LoadSamples(control, 1, sample_arr, size);

    size = GenerateCos(f, periods, amp, dist[2]);
	LoadSamples(control, 2, sample_arr, size);
}

void LoadHighCos(double f, double periods, int16_t amp, double angle)
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;
	int size;
    double dist[3];
    
    CalcHighDist(angle, dist);

    size = GenerateCos(f, periods, amp, dist[0]);
	LoadSamples(control, 4, sample_arr, size);

    size = GenerateCos(f, periods, amp, dist[1]);
	LoadSamples(control, 5, sample_arr, size);
    
    size = GenerateCos(f, periods, amp, dist[2]);
	LoadSamples(control, 6, sample_arr, size);
}

void StartSim()
{
	volatile struct bram_control_t *control = (volatile struct bram_control_t *)XPAR_AXI_BRAM_CTRL_0_BASEADDR;

	control->cmd = CMD_START_SIM;
	control->cmd = 0;
}

int CalcIncr(double f, int decimate)
{
    double incr = (double)decimate * f / FS * (double)0x100000;
    return (int)incr;
}

int CalcSamples(double f, double periods)
{
    double s = FS / f * periods;
    return (int)s;
}

int CalcSampleDistance(double dist, int decimate)
{
    int scale = 1 << 16;
    double d_samples = dist * FS / (double)decimate * 1000.0 * 1000.0 / SPEED_OF_LIGHT;
    return (int)(d_samples * scale + 0.5);
}

int CalcInvSampleDistance(double dist, int decimate)
{
    int scale = 1 << 28;
    double d_samples = dist * FS / (double)decimate * 1000.0 * 1000.0 / SPEED_OF_LIGHT;
    double inv_dij = (1.0 / d_samples) * scale;
    return (int)(inv_dij + 0.5);
}

int CalcShadowAngle(double angle)
{
    int scale = 1 << 19;
    double diff = 1.0 - cos(angle * PI / 180.0);
    return (int)(diff * scale + 0.5);
}

int CalcSampleFactor(double dist)
{
    int scale = 1 << 12;
    double diff = dist * FS  * 1000.0 * 1000.0 / SPEED_OF_LIGHT / 3.0;
    return (int)(diff * scale + 0.5);
}

int CalcPhaseError(double dist, int decimate)
{
    int scale = 1 << 14;
    double diff = dist * FS / (double)decimate  * 1000.0 * 1000.0 / SPEED_OF_LIGHT * 2.0;
    return (int)(diff * scale + 0.5);
}

int CalcAntennaPromille(double dist, int decimate)
{
    int scale = 1 << 4;
    double diff = SPEED_OF_LIGHT / FS * (double)decimate / 1000.0 / 2.0 / dist;
    return (int)(diff * scale + 0.5);
}

int main()
{
    int i;
    double a;

    SetConfig(CONFIG_MIN_ENV, 25, 25);
    SetConfig(CONFIG_MIN_INCR, CalcIncr(42.0, 8), CalcIncr(185.0, 8));
    SetConfig(CONFIG_MAX_INCR, CalcIncr(50.0, 8), CalcIncr(195.0, 8));
    SetConfig(CONFIG_MAX_DOA_DIFF, 100, 100);
    SetConfig(CONFIG_MIN_SAMPLES, CalcSamples(46.0, 1.5), CalcSamples(189.0, 1.5));
    SetConfig(CONFIG_INV_SAMPLE_DIST, CalcInvSampleDistance(LOW_DIST, 8), CalcInvSampleDistance(HIGH_DIST, 8));
    SetConfig(CONFIG_SHADOW_ANGLE, CalcShadowAngle(15.0), CalcShadowAngle(15.0));
    SetConfig(CONFIG_SAMPLE_FACTOR, CalcSampleFactor(LOW_DIST), CalcSampleFactor(HIGH_DIST));
    SetConfig(CONFIG_SAMPLE_DIST, CalcSampleDistance(LOW_DIST, 8), CalcSampleDistance(HIGH_DIST, 8));
    SetConfig(CONFIG_ANTENNA_PROMILLE, CalcAntennaPromille(LOW_DIST, 8), CalcAntennaPromille(HIGH_DIST, 8));
    SetConfig(CONFIG_MAX_ANTENNA_ERROR, 50, 100);
    LoadConfig();

    for (i = 0; i < 36; i++)
    {
        a = (double)i * 10.0;

    	LoadLowZero(46.0, 40.0);
	    LoadLowMorlet(46.0, 20.0, 10000, a);
//	    LoadLowCos(46.0, 30.0, 25000, 45.0);
    	LoadLowZero(46.0, 30.0);

	    LoadHighZero(189.0, 120.0);
	    LoadHighMorlet(189.0, 20.0, 10000, a);
//  	LoadHighCos(189.0, 120.0, 25000, 45.0);
	    LoadHighZero(189.0, 120.0);

    	StartSim();
    }

    return 0;
}
