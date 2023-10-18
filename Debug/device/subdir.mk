################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../device/system_LPC865.c 

C_DEPS += \
./device/system_LPC865.d 

OBJS += \
./device/system_LPC865.o 


# Each subdirectory must supply rules for building sources it contributes
device/%.o: ../device/%.c device/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_LPC865M201JBD64 -DCPU_LPC865M201JBD64_cm0plus -DFSL_SDK_ENABLE_I2C_DRIVER_TRANSACTIONAL_APIS=0 -DMCUXPRESSO_SDK -DPRINTF_FLOAT_ENABLE=1 -DSCANF_FLOAT_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -D__REDLIB__ -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/source" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/utilities" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/drivers" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/device" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/component/uart" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/CMSIS" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/board" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-device

clean-device:
	-$(RM) ./device/system_LPC865.d ./device/system_LPC865.o

.PHONY: clean-device

