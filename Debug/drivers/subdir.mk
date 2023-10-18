################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i2c.c \
../drivers/fsl_inputmux.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_swm.c \
../drivers/fsl_syscon.c \
../drivers/fsl_usart.c 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i2c.d \
./drivers/fsl_inputmux.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_swm.d \
./drivers/fsl_syscon.d \
./drivers/fsl_usart.d 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i2c.o \
./drivers/fsl_inputmux.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_swm.o \
./drivers/fsl_syscon.o \
./drivers/fsl_usart.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_LPC865M201JBD64 -DCPU_LPC865M201JBD64_cm0plus -DFSL_SDK_ENABLE_I2C_DRIVER_TRANSACTIONAL_APIS=0 -DMCUXPRESSO_SDK -DPRINTF_FLOAT_ENABLE=1 -DSCANF_FLOAT_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -D__REDLIB__ -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/source" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/utilities" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/drivers" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/device" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/component/uart" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/CMSIS" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/board" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_i2c.d ./drivers/fsl_i2c.o ./drivers/fsl_inputmux.d ./drivers/fsl_inputmux.o ./drivers/fsl_power.d ./drivers/fsl_power.o ./drivers/fsl_reset.d ./drivers/fsl_reset.o ./drivers/fsl_swm.d ./drivers/fsl_swm.o ./drivers/fsl_syscon.d ./drivers/fsl_syscon.o ./drivers/fsl_usart.d ./drivers/fsl_usart.o

.PHONY: clean-drivers

