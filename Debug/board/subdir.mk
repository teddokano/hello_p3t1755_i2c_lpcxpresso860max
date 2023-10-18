################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/pin_mux.c 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/pin_mux.d 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/pin_mux.o 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_LPC865M201JBD64 -DCPU_LPC865M201JBD64_cm0plus -DFSL_SDK_ENABLE_I2C_DRIVER_TRANSACTIONAL_APIS=0 -DMCUXPRESSO_SDK -DPRINTF_FLOAT_ENABLE=1 -DSCANF_FLOAT_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -D__REDLIB__ -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/source" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/utilities" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/drivers" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/device" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/component/uart" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/CMSIS" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/board" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-board

clean-board:
	-$(RM) ./board/board.d ./board/board.o ./board/clock_config.d ./board/clock_config.o ./board/pin_mux.d ./board/pin_mux.o

.PHONY: clean-board

