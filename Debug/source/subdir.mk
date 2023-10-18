################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/hello_p3t1755.c \
../source/i2c.c \
../source/mtb.c \
../source/semihost_hardfault.c \
../source/wait.c 

C_DEPS += \
./source/hello_p3t1755.d \
./source/i2c.d \
./source/mtb.d \
./source/semihost_hardfault.d \
./source/wait.d 

OBJS += \
./source/hello_p3t1755.o \
./source/i2c.o \
./source/mtb.o \
./source/semihost_hardfault.o \
./source/wait.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_LPC865M201JBD64 -DCPU_LPC865M201JBD64_cm0plus -DFSL_SDK_ENABLE_I2C_DRIVER_TRANSACTIONAL_APIS=0 -DMCUXPRESSO_SDK -DPRINTF_FLOAT_ENABLE=1 -DSCANF_FLOAT_ENABLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -D__REDLIB__ -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/source" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/utilities" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/drivers" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/device" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/component/uart" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/CMSIS" -I"/Users/tedd/dev/lpc860/hello_p3t1755_i2c_lpcxpresso860max/board" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/hello_p3t1755.d ./source/hello_p3t1755.o ./source/i2c.d ./source/i2c.o ./source/mtb.d ./source/mtb.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o ./source/wait.d ./source/wait.o

.PHONY: clean-source

