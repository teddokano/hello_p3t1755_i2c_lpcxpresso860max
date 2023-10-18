#include	"fsl_i2c.h"

#include	"i2c.h"

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

void i2c_init( const uint32_t frequency )
{
	i2c_master_config_t	masterConfig;

	I2C_MasterGetDefaultConfig(&masterConfig);
	masterConfig.baudRate_Bps	= frequency;
	I2C_MasterInit( EXAMPLE_I2C_MASTER, &masterConfig, I2C_MASTER_CLOCK_FREQUENCY );
}

status_t i2c_send( const uint8_t addr, uint8_t *data, uint8_t length, uint8_t repeated_start )
{
	status_t	r;

	if ( kStatus_Success != ( r	= I2C_MasterStart( EXAMPLE_I2C_MASTER, addr, kI2C_Write ) ) )
		return r;

	if ( kStatus_Success != ( r	= I2C_MasterWriteBlocking( EXAMPLE_I2C_MASTER, data, length, repeated_start ? kI2C_TransferNoStopFlag : kI2C_TransferDefaultFlag ) ) )
		return r;

	return kStatus_Success;
}

status_t i2c_receive( const uint8_t addr, uint8_t *data, uint8_t length )
{
	status_t	r;

	if ( kStatus_Success != ( r	= I2C_MasterRepeatedStart(EXAMPLE_I2C_MASTER, addr, kI2C_Read) ) )
		return r;

	if ( kStatus_Success != ( r	= I2C_MasterReadBlocking(EXAMPLE_I2C_MASTER, data, length, kI2C_TransferDefaultFlag) ) )
		return r;

	return kStatus_Success;
}

status_t i2c_reg_w8( const uint8_t addr, const uint8_t reg, const uint8_t data )
{
	uint8_t	b[ 2 ]	= { reg, data };

	return i2c_send( addr, b, sizeof( b ), I2C_STOP );
}

status_t i2c_reg_w16( const uint8_t addr, const uint8_t reg, const uint16_t data )
{
	uint8_t	b[ 3 ]	= { reg, (data >> 8), data & 0xFF };

	return i2c_send( addr, b, sizeof( b ), I2C_STOP );
}

uint8_t i2c_reg_r8( const uint8_t addr, const uint8_t reg )
{
	uint8_t	b	= reg;
	i2c_send( addr, &b, 1, I2C_REPEATED_START );
	i2c_receive( addr, &b, 1 );
	
	return b;
}

uint16_t i2c_reg_r16( const uint8_t addr, const uint8_t reg )
{
	uint8_t	b[ 2 ]	= { reg, 0 };
	i2c_send( addr, b, 1, I2C_REPEATED_START );
	i2c_receive( addr, b, 2 );
	
	return (b[ 0 ] << 8) | b[ 1 ];
}
