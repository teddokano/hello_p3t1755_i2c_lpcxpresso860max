#include	"pin_mux.h"
#include	"board.h"
#include	"fsl_debug_console.h"


#define EXAMPLE_I2C_MASTER_BASE		(I2C0_BASE)
#define I2C_MASTER_CLOCK_FREQUENCY	CLOCK_GetMainClkFreq()
#define EXAMPLE_I2C_MASTER			((I2C_Type *)EXAMPLE_I2C_MASTER_BASE)

#define	I2C_STOP					0
#define	I2C_REPEATED_START			1

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

void		i2c_init( const uint32_t frequency );
status_t	i2c_send( const uint8_t addr, uint8_t *data, uint8_t length, uint8_t repeated_start );
status_t	i2c_receive( const uint8_t addr, uint8_t *data, uint8_t length );
status_t	i2c_reg_w8( const uint8_t addr, const uint8_t reg, const uint8_t data );
status_t	i2c_reg_w16( const uint8_t addr, const uint8_t reg, const uint16_t data );
uint8_t		i2c_reg_r8( const uint8_t addr, const uint8_t reg );
uint16_t	i2c_reg_r16( const uint8_t addr, const uint8_t reg );
