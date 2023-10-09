/* 
 * File:   Attiny85.h
 * Author: Reda Ibrahim
 *
 * Created on October 9, 2023, 1:05 PM
 */

#ifndef ATTINY85_H
#define	ATTINY85_H

/*section : Includes*/

/*section : Declarations */

/*section : Macro Function Declarations */
#define HWREG8(_X)  (*((volatile uint8 *)(_X)))
#define PORTB (HWREG8(0x18))
#define DDRB  (HWREG8(0x17))
#define PINB  (HWREG8(0x16))

/*section : Data Type Declarations */

/*section : Function Declarations */

#endif	/* ATTINY85_H */

