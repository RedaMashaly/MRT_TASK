#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/my_attiny.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/my_attiny.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECUAL/ECU_LED/ecu_led.c MCAL/GPIO/hal_gpio.c MCAL/device_config.c application.c ECUAL/ECU_RELAY/ecu_relay.c ECUAL/ECU_BUTTON/ecu_button.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL/device_config.o ${OBJECTDIR}/application.o ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d ${OBJECTDIR}/MCAL/device_config.o.d ${OBJECTDIR}/application.o.d ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o ${OBJECTDIR}/MCAL/device_config.o ${OBJECTDIR}/application.o ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o

# Source Files
SOURCEFILES=ECUAL/ECU_LED/ecu_led.c MCAL/GPIO/hal_gpio.c MCAL/device_config.c application.c ECUAL/ECU_RELAY/ecu_relay.c ECUAL/ECU_BUTTON/ecu_button.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/my_attiny.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny85
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o: ECUAL/ECU_LED/ecu_led.c  .generated_files/flags/default/abfe64c816bedfe3443f40ef510a40e1d6d6bb86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/ECU_LED" 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o -o ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o ECUAL/ECU_LED/ecu_led.c 
	
${OBJECTDIR}/MCAL/GPIO/hal_gpio.o: MCAL/GPIO/hal_gpio.c  .generated_files/flags/default/6547911acf2e65a551e6632b66d21303a157a256 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o MCAL/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL/device_config.o: MCAL/device_config.c  .generated_files/flags/default/fff7012878d811ceed1db57f4e651d75ff704e70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/device_config.o.d 
	@${RM} ${OBJECTDIR}/MCAL/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/device_config.o.d" -MT "${OBJECTDIR}/MCAL/device_config.o.d" -MT ${OBJECTDIR}/MCAL/device_config.o -o ${OBJECTDIR}/MCAL/device_config.o MCAL/device_config.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/5b3cb76a7d7b37a41fd064dc5577089905e3e4ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o: ECUAL/ECU_RELAY/ecu_relay.c  .generated_files/flags/default/be76d368d07019f6ce1302515647b7106cde5cf5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/ECU_RELAY" 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d" -MT "${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d" -MT ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o -o ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o ECUAL/ECU_RELAY/ecu_relay.c 
	
${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o: ECUAL/ECU_BUTTON/ecu_button.c  .generated_files/flags/default/d67b55ba535d95fd6903ed3740a66bed82f34e54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/ECU_BUTTON" 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d" -MT "${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d" -MT ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o -o ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o ECUAL/ECU_BUTTON/ecu_button.c 
	
else
${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o: ECUAL/ECU_LED/ecu_led.c  .generated_files/flags/default/317afa2a278008c7032a06b82231153582d38ec6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/ECU_LED" 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d" -MT "${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o.d" -MT ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o -o ${OBJECTDIR}/ECUAL/ECU_LED/ecu_led.o ECUAL/ECU_LED/ecu_led.c 
	
${OBJECTDIR}/MCAL/GPIO/hal_gpio.o: MCAL/GPIO/hal_gpio.c  .generated_files/flags/default/7e19cb096531165f8d823cfdf2507b2f771706a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d" -MT "${OBJECTDIR}/MCAL/GPIO/hal_gpio.o.d" -MT ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o -o ${OBJECTDIR}/MCAL/GPIO/hal_gpio.o MCAL/GPIO/hal_gpio.c 
	
${OBJECTDIR}/MCAL/device_config.o: MCAL/device_config.c  .generated_files/flags/default/4b0e935c71233d7b27326448713f55d3bad3a3ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/device_config.o.d 
	@${RM} ${OBJECTDIR}/MCAL/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/device_config.o.d" -MT "${OBJECTDIR}/MCAL/device_config.o.d" -MT ${OBJECTDIR}/MCAL/device_config.o -o ${OBJECTDIR}/MCAL/device_config.o MCAL/device_config.c 
	
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/adf798130728b0efa9f23794c3375a82136ffb1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o: ECUAL/ECU_RELAY/ecu_relay.c  .generated_files/flags/default/97b7cf640cda57a77c93630265cd1080e56051b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/ECU_RELAY" 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d" -MT "${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o.d" -MT ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o -o ${OBJECTDIR}/ECUAL/ECU_RELAY/ecu_relay.o ECUAL/ECU_RELAY/ecu_relay.c 
	
${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o: ECUAL/ECU_BUTTON/ecu_button.c  .generated_files/flags/default/6aa57c23ac8589b5637a54338994d8eb8aad5fb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/ECU_BUTTON" 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d" -MT "${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o.d" -MT ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o -o ${OBJECTDIR}/ECUAL/ECU_BUTTON/ecu_button.o ECUAL/ECU_BUTTON/ecu_button.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/my_attiny.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/my_attiny.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/my_attiny.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/my_attiny.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/my_attiny.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/my_attiny.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/my_attiny.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/my_attiny.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/my_attiny.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/my_attiny.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/my_attiny.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
