/* 
 * File:   device_config.c
 * Author: Reda Ibrahim
 *
 * Created on October 9, 2023, 1:27 PM
 */
#include "device_config.h"

// ATtiny85 Configuration Bit Settings

// 'C' source line config statements

#include <avr/io.h>

FUSES = {
	.low = 0x62, // LOW {SUT_CKSEL=INTRCOSC_8MHZ_6CK_14CK_64MS, CKOUT=CLEAR, CKDIV8=SET}
	.high = 0xDF, // HIGH {BODLEVEL=DISABLED, EESAVE=CLEAR, WDTON=CLEAR, SPIEN=SET, DWEN=CLEAR, RSTDISBL=CLEAR}
	.extended = 0xFF, // EXTENDED {SELFPRGEN=CLEAR}
};

LOCKBITS = 0xFF; // {LB=NO_LOCK}


