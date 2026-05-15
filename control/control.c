#include "xparameters.h"
#include "xtmrctr.h"
#include <stdbool.h>
#include <stdio.h>
#include "math.h"

bool ConfigAdc();
bool StartAdc();

#define TIMER_CNTR_0     0
#define RESET_VALUE             0xFFF0BDC1                      //Time Interval of 10 msec


#define PI              3.1415926535897932384626433832795028841971693993751
#define SPEED_OF_LIGHT  299792458.0 // m/s
#define LOW_DIST        2.0 // m
#define HIGH_DIST       0.5 // m
#define FS              4000.0

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

struct bram_config_t
{
	uint32_t cmd;
	uint32_t status;
	int32_t config_arr[255];
};

static int16_t config_count = 1;

static int32_t config_low_arr[255];
static int32_t config_high_arr[255];

/*****************************************************************************/
/**
* SetConfig
*
******************************************************************************/
void SetConfig(int index, int low_value, int high_value)
{
    if (index >= config_count)
        config_count = index + 1;
    
    config_low_arr[index] = low_value;
    config_high_arr[index] = high_value;
}

/*****************************************************************************/
/**
* loadConfig
*
******************************************************************************/
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
