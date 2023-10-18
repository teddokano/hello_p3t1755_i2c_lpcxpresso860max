/*
 *	Hello program for P3T1755 (Temp sensor)
 *
 *	Operation sample of P3T1755. Read temperature from the P3T1755 via I2C bus.
 *	This code works on LPCXpresso860-MAX board with MCUXpresso.
 *	Code is based on "lpcxpresso860max_lpc_i2c_polling_b2b_master"
 *	and "lpcxpresso860max_led_blinky" in MCUXpresso-SDK.
 *
 *	(c) Tedd OKANO  2023
 *	License : MIT
 */

#include	<stdio.h>
#include	"pin_mux.h"
#include	"board.h"
#include	"fsl_debug_console.h"

#include	"i2c.h"
#include	"wait.h"

#define P3T1755_ADDR	(0x98 >> 1)

enum registers	{
	Temp,
	Conf,
	T_LOW, 
	T_HIGH
};


void		mcu_init( void );

int main( void )
{
	mcu_init();
	i2c_init( 100 * 1000 );	//	setting I2C clock frequency in "Hz"

	PRINTF( "\r\nHello P3T1755-ARD\r\n\r\n" );
	PRINTF( "register dump..\r\n" );
	PRINTF( "  Conf   (0x%01X) : 0x%02X\r\n", Conf,   i2c_reg_r8(  P3T1755_ADDR, Conf   ) );
	PRINTF( "  T_LOW  (0x%01X) : 0x%02X\r\n", T_LOW,  i2c_reg_r16( P3T1755_ADDR, T_LOW  ) );
	PRINTF( "  T_HIGH (0x%01X) : 0x%02X\r\n", T_HIGH, i2c_reg_r16( P3T1755_ADDR, T_HIGH ) );
	PRINTF( "\r\n" );
	
	uint16_t	temperature;

    while ( 1 )
    {
    	temperature	= i2c_reg_r16( P3T1755_ADDR, Temp );

		PRINTF( "%.3f [deg-C] (read value from P3T1755 is 0x%04X)\r\n", temperature / 256.0, temperature );

		wait_ms( 1000 );
    }
}

void mcu_init( void )
{
	CLOCK_Select( BOARD_DEBUG_USART_CLK_ATTACH );
	CLOCK_Select( kI2C0_Clk_From_MainClk );

	BOARD_InitBootPins();
	BOARD_BootClockFRO48M();
	BOARD_InitDebugConsole();

	if ( SysTick_Config( SystemCoreClock / 1000U ) )
	{
		PRINTF( "Fail: SysTick_Config()\r\n" );
		while ( 1 );
	}
}
