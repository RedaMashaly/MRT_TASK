/* 
 * File:   ecu_relay.h
 * Author: Reda Ibrahim
 *
 * Created on October 13, 2023, 3:07 PM
 */

#ifndef ECU_RELAY_H
#define	ECU_RELAY_H

/*section : Includes*/
#include "../../MCAL/GPIO/hal_gpio.h"
#include "ecu_relay_cfg.h"

/*section : Declarations */

/*section : Macro Function Declarations */

/*section : Data Type Declarations */
typedef enum{
    RELAY_OFF,
    RELAY_ON
}relay_status_t;

typedef struct{
    uint8 pin : 7;
    uint8 relay_status : 1;
}relay_t;

/*section : Function Declarations */
Std_ReturnType relay_intialize(relay_t *RELAY);
Std_ReturnType relay_on(relay_t *RELAY);
Std_ReturnType relay_off(relay_t *RELAY);
Std_ReturnType relay_toggle(relay_t *RELAY);
Std_ReturnType relay_status(relay_t *RELAY ,relay_status_t *STATUS);

#endif	/* ECU_RELAY_H */


