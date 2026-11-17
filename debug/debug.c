#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

// Configuration Bits for PIC16F18875-I/PT (32 MHz HFINTOSC, 5V)
#pragma config FEXTOSC = OFF
#pragma config RSTOSC = HFINT32    // 32 MHz internal oscillator (8 MIPS = 125 ns/inst)
#pragma config CLKOUTEN = OFF
#pragma config CSWEN = ON
#pragma config FCMEN = OFF
#pragma config MCLRE = ON          // Master Clear enabled (10k pull-up on RE3)
#pragma config PWRTE = ON
#pragma config WDTE = OFF
#pragma config LVP = ON            // Low-voltage programming compatible with PICkit 5 / Snap

#define _XTAL_FREQ 32000000UL

// --- Pin Definitions ---
#define CS_PIN          PORTCbits.RC2
#define MISO_LAT        LATCbits.LATC4

#define LATCH_DATA_LAT  LATD           // RD0-RD7: Shared 8-bit bus (LED latches + both LCDs)
#define LATCH_ADDR_LAT  LATA           // RA0-RA2: Latch address A0-A2 (for 8 LED latches)
#define LATCH_WR_LAT    LATAbits.LATA4 // RA4: Active-low WR strobe for LED latches

#define LCD0_E_LAT      LATEbits.LATE1 // RE1: Enable strobe for LCD 0 (active HIGH, 1.0 us)
#define LCD1_E_LAT      LATEbits.LATE2 // RE2: Enable strobe for LCD 1 (active HIGH, 1.0 us)
#define LCD_DI_LAT      LATAbits.LATA5 // RA5: 0 = Command, 1 = Display Data
#define LCD_CS1_LAT     LATAbits.LATA6 // RA6: Left 64x64 controller select
#define LCD_CS2_LAT     LATAbits.LATA7 // RA7: Right 64x64 controller select

// --- Protocol Address Map ---
#define CMD_READ_BIT            0x80
#define ADDR_KEY_CODE           0x00   // Read 1 byte: pending key code (wire = 0x80)
#define ADDR_DEVICE_ID          0x01   // Read 1 byte: returns 0xA5 (wire = 0x81)
#define DEVICE_ID_MAGIC         0xA5

#define ADDR_METER_CH0          0x02   // Write 1 byte (0..16): Ch 0 16-LED dB bar (Latches 0 & 1)
#define ADDR_METER_CH1          0x03   // Write 1 byte (0..16): Ch 1 16-LED dB bar (Latches 2 & 3)
#define ADDR_STATUS_CH0         0x04   // Write 1 byte: [7:5]=sec, [4:3]=blend(0..2), [2:0]=err(0..7)
#define ADDR_STATUS_CH1         0x05   // Write 1 byte: [7:5]=sec, [4:3]=blend(0..2), [2:0]=err(0..7)
#define ADDR_GENERIC_LEDS       0x10   // Write 1 byte: Bits [7:2] = 6 generic LEDs on Latch 6

#define ADDR_LCD0_START         0x18   // Write 1+ bytes: LCD 0 stream (ctrl = addr & 0x07)
#define ADDR_LCD0_END           0x1F
#define ADDR_LCD1_START         0x20   // Write 1+ bytes: LCD 1 stream (ctrl = addr & 0x07)
#define ADDR_LCD1_END           0x27

#define ADDR_EEPROM_CH0_START   0x40   // Read/Write 4 bytes: Ch 0 EEPROM DWORDs (0..31)
#define ADDR_EEPROM_CH1_START   0x60   // Read/Write 4 bytes: Ch 1 EEPROM DWORDs (32..63)
#define ADDR_EEPROM_START       0x40
#define ADDR_EEPROM_END         0x7F
#define TOTAL_CONFIG_DWORDS     0x40   // 64 DWORDs = 256 bytes (100% of EEPROM)

// --- Lookup Tables (Stored in Program Flash) ---
// 16-LED cumulative thermometer bargraph lookup (0..16 lit LEDs)
static const uint16_t vu_bar_lut[] = {
    0x0000, 0x0001, 0x0003, 0x0007,
    0x000F, 0x001F, 0x003F, 0x007F,
    0x00FF, 0x01FF, 0x03FF, 0x07FF,
    0x0FFF, 0x1FFF, 0x3FFF, 0x7FFF,
    0xFFFF
};

// Maps 15-degree compass blend (0 = 0 deg, 1 = 15 deg, 2 = 30 deg) to 7-step PWM duty
static const uint8_t blend_duty_lut[] = {0, 2, 5, 5};

// --- Key Ring Buffer ---
#define KEY_BUF_SIZE 16
static volatile uint8_t key_buf[KEY_BUF_SIZE];
static volatile uint8_t key_head = 0;
static volatile uint8_t key_tail = 0;

// Macro avoids XC8 advisory (1510) for shared call graphs between main() and isr()
#define key_available() (key_head != key_tail)

// --- Compass & Error PWM State (Updated in ISR, Driven in main() @ 62.5 kHz) ---
static volatile uint8_t comp_sec[]   = {0, 0}; // Primary LED index (0..7)
static volatile uint8_t comp_duty[]  = {0, 0}; // Next-LED duty (0, 2, or 5 out of 7)
static volatile uint8_t err_duty[]   = {0, 0}; // Error LED duty (0..7 out of 7)
static volatile uint8_t latch6_static = 0x00;   // Upper 6 bits [7:2] of Latch 6

// --- RAM-Cached EEPROM Configuration (256 Bytes) ---
static volatile uint32_t config_ram[TOTAL_CONFIG_DWORDS];
static volatile uint64_t config_dirty_mask = 0ULL;

// --- SPI Client State Machine ---
typedef enum 
{
    SPI_STATE_CMD = 0,
    SPI_STATE_DATA
} spi_state_t;

static volatile spi_state_t spi_state = SPI_STATE_CMD;
static volatile uint8_t spi_cmd = 0;
static volatile uint8_t spi_byte_idx = 0;
static volatile uint8_t spi_tx_buf[4];
static volatile uint8_t spi_rx_buf[4];

// --- Key Queue Helpers ---
static void key_push(uint8_t keycode) 
{
    uint8_t next = (uint8_t)((key_head + 1) & (KEY_BUF_SIZE - 1));
    if (next != key_tail) 
	{
        key_buf[key_head] = keycode;
        key_head = next;
    }
    if (CS_PIN == 1 && SSP1CON1bits.SSPEN == 0) 
	{
        MISO_LAT = key_available() ? 1 : 0;
    }
}

static inline uint8_t key_pop_isr(void) 
{
    if (key_head == key_tail) 
	{
        return 0x00;
    }
    uint8_t k = key_buf[key_tail];
    key_tail = (uint8_t)((key_tail + 1) & (KEY_BUF_SIZE - 1));
    return k;
}

// --- Write 8-bit Value to LED Output Latch (0..7) ---
static inline void latch_write_isr(uint8_t latch_addr, uint8_t data) 
{
    LATCH_DATA_LAT = data;
    // Set A0-A2 on RA0-RA2 while preserving LCD control bits (RA5-RA7) and keeping WR (RA4) HIGH
    LATCH_ADDR_LAT = (uint8_t)((LATCH_ADDR_LAT & 0xE0) | (latch_addr & 0x07) | 0x10);
    NOP();              // Address/Data setup (~125 ns)
    LATCH_WR_LAT = 0;   // Assert WR low
    NOP();
    LATCH_WR_LAT = 1;   // Latch on rising edge
}

// Thread-safe latch write wrapper for main() loop
static inline void latch_write_main(uint8_t latch_addr, uint8_t data) 
{
    uint8_t gie_state = INTCONbits.GIE;
    INTCONbits.GIE = 0;
    latch_write_isr(latch_addr, data);
    INTCONbits.GIE = gie_state;
}

// --- Write 16-LED Cumulative dB Bargraph (0..16 LEDs) ---
static inline void meter_write_isr(uint8_t base_latch, uint8_t led_count) 
{
    if (led_count > 16) 
	{
        led_count = 16;
    }
    uint16_t mask = vu_bar_lut[led_count];
    latch_write_isr(base_latch,     (uint8_t)(mask & 0xFF));
    latch_write_isr(base_latch + 1, (uint8_t)(mask >> 8));
}

// --- Write 8-bit Command/Data to KS0108 Graphic LCD (1.0 us E Strobe) ---
static inline void lcd_write_isr(uint8_t lcd_id, uint8_t ctrl, uint8_t data) 
{
    LCD_CS1_LAT = (ctrl & 0x01) ? 1 : 0;
    LCD_CS2_LAT = (ctrl & 0x02) ? 1 : 0;
    LCD_DI_LAT  = (ctrl & 0x04) ? 1 : 0;
    LATCH_DATA_LAT = data;

    // Setup time tAS (>= 140 ns required -> 2 NOPs = 250 ns)
    NOP();
    NOP();

    // Pulse Enable (E) HIGH for 1.0 us (8 NOPs at 32 MHz)
    if (lcd_id == 0) 
	{
        LCD0_E_LAT = 1;
        NOP(); NOP(); NOP(); NOP();
        NOP(); NOP(); NOP(); NOP();
        LCD0_E_LAT = 0;
    } 
	else 
	{
        LCD1_E_LAT = 1;
        NOP(); NOP(); NOP(); NOP();
        NOP(); NOP(); NOP(); NOP();
        LCD1_E_LAT = 0;
    }

    // Hold time tAH / tDHW (>= 20 ns required -> 2 NOPs = 250 ns)
    NOP();
    NOP();
}

// --- EEPROM Access (PIC16F18875 256-Byte Data EEPROM at 0x7000) ---
static uint8_t eeprom_read_byte(uint8_t addr) 
{
    NVMADRH = 0x70;
    NVMADRL = addr;
    NVMCON1bits.NVMREGS = 1;
    NVMCON1bits.RD = 1;
    return NVMDATL;
}

static void eeprom_write_byte(uint8_t addr, uint8_t data) 
{
    NVMADRH = 0x70;
    NVMADRL = addr;
    NVMDATL = data;
    NVMCON1bits.NVMREGS = 1;
    NVMCON1bits.WREN = 1;

    uint8_t gie_state = INTCONbits.GIE;
    INTCONbits.GIE = 0;
    NVMCON2 = 0x55;
    NVMCON2 = 0xAA;
    NVMCON1bits.WR = 1;
    INTCONbits.GIE = gie_state;

    while (NVMCON1bits.WR);
    NVMCON1bits.WREN = 0;
}

static void config_load_from_eeprom(void) 
{
    for (uint8_t i = 0; i < TOTAL_CONFIG_DWORDS; i++) 
	{
        uint8_t base = (uint8_t)(i * 4U);
        uint32_t val = 0;
        val |= ((uint32_t)eeprom_read_byte(base + 0)) << 0;
        val |= ((uint32_t)eeprom_read_byte(base + 1)) << 8;
        val |= ((uint32_t)eeprom_read_byte(base + 2)) << 16;
        val |= ((uint32_t)eeprom_read_byte(base + 3)) << 24;
        config_ram[i] = val;
    }
}

static void config_flush_dirty_to_eeprom(void) 
{
    for (uint8_t i = 0; i < TOTAL_CONFIG_DWORDS; i++) 
	{
        uint64_t bit_mask = (1ULL << i);
        if (config_dirty_mask & bit_mask) 
		{
            INTCONbits.GIE = 0;
            uint32_t val = config_ram[i];
            config_dirty_mask &= ~bit_mask;
            INTCONbits.GIE = 1;

            uint8_t base = (uint8_t)(i * 4U);
            eeprom_write_byte(base + 0, (uint8_t)(val >> 0));
            eeprom_write_byte(base + 1, (uint8_t)(val >> 8));
            eeprom_write_byte(base + 2, (uint8_t)(val >> 16));
            eeprom_write_byte(base + 3, (uint8_t)(val >> 24));
        }
    }
}

// --- Interrupt Service Routine (CS Pin Change + SPI Byte Complete) ---
void __interrupt() isr(void) 
{
    // 1. CS Pin Change Interrupt (RC2)
    if (PIE0bits.IOCIE && IOCCFbits.IOCCF2) 
	{
        IOCCFbits.IOCCF2 = 0;

        if (CS_PIN == 0) 
		{
            spi_state = SPI_STATE_CMD;
            spi_byte_idx = 0;
            SSP1CON1bits.SSPOV = 0;
            SSP1CON1bits.WCOL = 0;
            SSP1BUF = 0x00;
            SSP1CON1bits.SSPEN = 1; // Hands RC4 (MISO) to MSSP1 SDO1
            PIR3bits.SSP1IF = 0;
            PIE3bits.SSP1IE = 1;
        } 
		else 
		{
            PIE3bits.SSP1IE = 0;
            SSP1CON1bits.SSPEN = 0; // Returns RC4 (MISO) to GPIO LATC4
            MISO_LAT = key_available() ? 1 : 0;
        }
    }

    // 2. MSSP1 SPI Byte Complete Interrupt
    if (PIE3bits.SSP1IE && PIR3bits.SSP1IF) 
	{
        PIR3bits.SSP1IF = 0;
        uint8_t rx = SSP1BUF;

        if (spi_state == SPI_STATE_CMD) 
		{
            spi_cmd = rx;
            spi_byte_idx = 0;
            spi_state = SPI_STATE_DATA;

            bool is_read = (spi_cmd & CMD_READ_BIT) != 0;
            uint8_t addr = spi_cmd & 0x7F;

            if (is_read) 
			{
                if (addr == ADDR_KEY_CODE) 
				{
                    SSP1BUF = key_pop_isr();
				} 
				else if (addr == ADDR_DEVICE_ID) 
				{
					SSP1BUF = DEVICE_ID_MAGIC; // 0xA5 diagnostic ping
				} 
				else if (addr >= ADDR_EEPROM_START && addr <= ADDR_EEPROM_END) 
				{
					uint8_t idx = (uint8_t)(addr - ADDR_EEPROM_START);
					uint32_t val = config_ram[idx];
					spi_tx_buf[0] = (uint8_t)(val >> 0);
					spi_tx_buf[1] = (uint8_t)(val >> 8);
					spi_tx_buf[2] = (uint8_t)(val >> 16);
					spi_tx_buf[3] = (uint8_t)(val >> 24);
					SSP1BUF = spi_tx_buf[0];
				} 
				else 
				{
					SSP1BUF = 0xFF;
				}
			} 
			else 
			{
				SSP1BUF = 0x00;
			}
		} 
		else 
		{
			bool is_read = (spi_cmd & CMD_READ_BIT) != 0;
			uint8_t addr = spi_cmd & 0x7F;
			if (is_read) 
			{
				spi_byte_idx++;
				if (addr >= ADDR_EEPROM_START && addr <= ADDR_EEPROM_END && spi_byte_idx < 4) 
				{
					SSP1BUF = spi_tx_buf[spi_byte_idx];
				} 
				else 
				{
					SSP1BUF = 0x00;
				}
			} 
			else 
			{
				if (addr == ADDR_METER_CH0) 
				{
					meter_write_isr(0, rx); // Latches 0 & 1
				} 
				else if (addr == ADDR_METER_CH1) 
				{
					meter_write_isr(2, rx); // Latches 2 & 3
				} 
				else if (addr == ADDR_STATUS_CH0) 
				{
					comp_sec[0]  = (rx >> 5) & 0x07;
					comp_duty[0] = blend_duty_lut[(rx >> 3) & 0x03];
					err_duty[0]  = rx & 0x07;
				} 
				else if (addr == ADDR_STATUS_CH1) 
				{
					comp_sec[1]  = (rx >> 5) & 0x07;
					comp_duty[1] = blend_duty_lut[(rx >> 3) & 0x03];
					err_duty[1]  = rx & 0x07;
				} 
				else if (addr == ADDR_GENERIC_LEDS) 
				{
					// Updates the 6 generic LEDs on Bits [7:2] of Latch 6; PWM loop merges Error LEDs on [1:0]
					latch6_static = rx;
				}
				else if (addr >= ADDR_LCD0_START && addr <= ADDR_LCD0_END) 
				{
                    // LCD 0 multi-byte streaming
					lcd_write_isr(0, (uint8_t)(addr & 0x07), rx);
				} 
				else if (addr >= ADDR_LCD1_START && addr <= ADDR_LCD1_END) 
				{
                    // LCD 1 multi-byte streaming
					lcd_write_isr(1, (uint8_t)(addr & 0x07), rx);
				}
				else if (addr >= ADDR_EEPROM_START && addr <= ADDR_EEPROM_END) 
				{
                    // Config EEPROM DWORD write (4 bytes)
					if (spi_byte_idx < 4) 
					{
						spi_rx_buf[spi_byte_idx++] = rx;
						if (spi_byte_idx == 4) 
						{
							uint8_t idx = (uint8_t)(addr - ADDR_EEPROM_START);
							uint32_t val = ((uint32_t)spi_rx_buf << 0)  |
											((uint32_t)spi_rx_buf << 8)  |
											((uint32_t)spi_rx_buf << 16) |
											((uint32_t)spi_rx_buf << 24);
							config_ram[idx] = val;
							config_dirty_mask |= (1ULL << idx);
						}
					}
				}
				SSP1BUF = 0x00;
			}
		}
	}
}

// --- Hardware Initialization ---
static void hardware_init(void) 
{
	ANSELA = 0x00;
	ANSELB = 0x00;
	ANSELC = 0x00;
	ANSELD = 0x00;
	ANSELE = 0x00;
	
// PORTA: RA0-RA2 (A0-A2), RA3 unused (output low), RA4 (WR=1), RA5-RA7 (LCD_DI, CS1, CS2)
	LATA  = 0x10;
	TRISA = 0x00; // All PORTA pins outputs (no external resistor needed on RA3)

// PORTD: RD0-RD7 shared data bus
	LATD  = 0x00;
	TRISD = 0x00;

// PORTE: RE0 keypad col 4 (input w/ pull-up), RE1 (LCD0_E=0), RE2 (LCD1_E=0)
	LATE  = 0x00;
	TRISE = 0x01;
	WPUE  = 0x01;
	
// PORTB: RB0-RB3 keypad rows (outputs, idle high), RB4-RB5 unused (outputs low), RB6-RB7 ICSP
	LATB  = 0x0F;
	TRISB = 0xC0; // Only RB6 and RB7 are inputs
	WPUB  = 0xC0; // Internal weak pull-ups on RB6/RB7 when PICkit 5 is unplugged

// PORTC: RC2=CS (in), RC3=SCK (in), RC4=MISO (out), RC5=MOSI (in)
//        RC0, RC1, RC6, RC7 = keypad cols 0..3 (inputs w/ pull-ups)
	LATC  = 0x00;
	TRISC = 0xEF;
	WPUC  = 0xC3;

// Clear all 8 LED latches at boot
	for (uint8_t i = 0; i < 8; i++) 
	{
		latch_write_isr(i, 0x00);
	}

// PPS Setup for MSSP1 SPI Client
	bool state = INTCONbits.GIE;
	INTCONbits.GIE = 0;
	PPSLOCK = 0x55;
	PPSLOCK = 0xAA;
	PPSLOCKbits.PPSLOCKED = 0;
	SSP1CLKPPS = 0x13; // RC3 -> SCK1
	SSP1DATPPS = 0x15; // RC5 -> SDI1 (MOSI)
	SSP1SSPPS  = 0x12; // RC2 -> SS1 (CS)
	RC4PPS     = 0x15; // SDO1 (MISO) -> RC4
	PPSLOCK = 0x55;
	PPSLOCK = 0xAA;
	PPSLOCKbits.PPSLOCKED = 1;
	INTCONbits.GIE = state;

// MSSP1: SPI Mode 0 Client with SS enabled (SSPEN starts 0)
	SSP1STAT = 0x40;
	SSP1CON1 = 0x04;

// Timer2: 16.0 us period (62.5 kHz tick -> 8.93 kHz 7-step PWM, polled in main)
	T2CLKCON = 0x01; // Fosc/4 = 8 MHz
	T2CON    = 0x80; // TMR2 ON, Prescaler 1:1, Postscaler 1:1
	T2PR     = 127;  // 128 * 125 ns = 16.0 us
	PIR4bits.TMR2IF = 0;
	PIE4bits.TMR2IE = 0;

// IOC on RC2 (CS) both edges
	IOCCPbits.IOCCP2 = 1;
	IOCCNbits.IOCCN2 = 1;
	IOCCFbits.IOCCF2 = 0;
	PIE0bits.IOCIE = 1;
	INTCONbits.PEIE = 1;
	INTCONbits.GIE = 1;
}

// --- Polled 7-Step PWM Task (62.5 kHz / 7 = 8.93 kHz Refresh Rate) ---
static void pwm_led_update_task(void) 
{	
	static uint8_t pwm_phase = 0;

	if (++pwm_phase >= 7) 
	{
		pwm_phase = 0; // Counts 0..6: duty=0 -> 0% off, duty=7 -> 100% solid on
	}

// Channel 0 Compass (Latch 4)
	uint8_t s0   = comp_sec[0];
	uint8_t n0   = (uint8_t)((s0 + 1) & 0x07);
	uint8_t led4 = (pwm_phase >= comp_duty[0]) ? (uint8_t)(1U << s0) : (uint8_t)(1U << n0);
	latch_write_main(4, led4);

// Channel 1 Compass (Latch 5)
	uint8_t s1   = comp_sec[0];
	uint8_t n1   = (uint8_t)((s1 + 1) & 0x07);
	uint8_t led5 = (pwm_phase >= comp_duty[0]) ? (uint8_t)(1U << s1) : (uint8_t)(1U << n1);
	latch_write_main(5, led5);

// Error LEDs on Latch 6 (Bit 0 = Ch 0 Error, Bit 1 = Ch 1 Error, Bits [7:2] = static)
	uint8_t led6 = latch6_static & 0xFC;
	if (pwm_phase < err_duty[0]) led6 |= 0x01;
	if (pwm_phase < err_duty[1]) led6 |= 0x02;
	latch_write_main(6, led6);
}

// --- 4x5 Debounced Keypad Matrix Scanner ---
static void keypad_scan_task(void) 
{
	static uint8_t last_raw = 0xFF;
	static uint8_t stable_count = 0;
	static bool key_held = false;
	uint8_t detected = 0xFF;

	for (uint8_t row = 0; row < 4; row++) 
	{
		LATB = (uint8_t)((LATB | 0x0F) & ~(1U << row));
		__delay_us(5);
		uint8_t cols = 0;
		if (!PORTCbits.RC0) cols |= (1U << 0);
		if (!PORTCbits.RC1) cols |= (1U << 1);
		if (!PORTCbits.RC6) cols |= (1U << 2);
		if (!PORTCbits.RC7) cols |= (1U << 3);
		if (!PORTEbits.RE0) cols |= (1U << 4);
		if (cols != 0) 
		{
			for (uint8_t col = 0; col < 5; col++) 
			{
				if (cols & (1U << col)) 
				{
					detected = (uint8_t)(row * 5 + col + 1);
					break;
				}
			}
		}
	}
	LATB |= 0x0F;

	if (detected == last_raw) 
	{
		if (stable_count < 4) 
		{
			stable_count++;
		} 
		else if (detected != 0xFF && !key_held) 
		{
			key_held = true;
			key_push(detected);
		} 
		else if (detected == 0xFF) 
		{
			key_held = false;
		}
	} 
	else 
	{
		last_raw = detected;
		stable_count = 0;
	}
}

void main(void) 
{
	hardware_init();
	config_load_from_eeprom();

	if (CS_PIN == 1) 
	{
		MISO_LAT = key_available() ? 1 : 0;
	}
	
	uint16_t tick_5ms = 0;

	while (1) 
	{
// Poll Timer2 every 16.0 us (62.5 kHz -> 8.93 kHz 7-step PWM)
		if (PIR4bits.TMR2IF) 
		{
			PIR4bits.TMR2IF = 0;
			pwm_led_update_task();

// Every 312 ticks (~5.0 ms), scan the 4x5 keypad matrix
			if (++tick_5ms >= 312) 
			{
				tick_5ms = 0;
				keypad_scan_task();
			}
		}
	
// Flush any modified config DWORDs to physical EEPROM in the background
		config_flush_dirty_to_eeprom();
	}
}
