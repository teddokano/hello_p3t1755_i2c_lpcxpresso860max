#include	"wait.h"

volatile uint32_t g_systickCounter;


void SysTick_Handler( void )
{
	if ( g_systickCounter != 0U )
		g_systickCounter--;
}

void wait_ms( uint32_t n )
{
	g_systickCounter = n;
	
	while (g_systickCounter != 0U)
		;
}


