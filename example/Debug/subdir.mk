################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../dependency1.c \
../dependency2.c \
../main.c \
../mod_under_test.c 

C_DEPS += \
./dependency1.d \
./dependency2.d \
./main.d \
./mod_under_test.d 

OBJS += \
./dependency1.o \
./dependency2.o \
./main.o \
./mod_under_test.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean--2e-

clean--2e-:
	-$(RM) ./dependency1.d ./dependency1.o ./dependency2.d ./dependency2.o ./main.d ./main.o ./mod_under_test.d ./mod_under_test.o

.PHONY: clean--2e-

