/* 
 * File:   ecu_button.h
 * Author: Reda Ibrahim
 *
 * Created on October 13, 2023, 3:07 PM
 */

#ifndef ECU_BUTTON_H
#define	ECU_BUTTON_H

/*section : Includes*/
#include "../../MCAL/GPIO/hal_gpio.h"
#include "ecu_button_cfg.h"

/*section : Declarations */

/*section : Macro Function Declarations */

/*section : Data Type Declarations */
typedef enum{
    BUTTON_RELEASED,
    BUTTON_PRESSED
}button_state_t;

typedef enum{
    BUTTON_ACTIVE_HIGH,
    BUTTON_ACTIVE_LOW
}button_active_t;

typedef struct{
    pin_config_t button_pin;
    button_state_t button_state;
    button_active_t button_connection;
}button_t;

/*section : Function Declarations */
Std_ReturnType button_intialize(button_t *BUTTON);
Std_ReturnType button_status(button_t *BUTTON);

#endif	/* ECU_BUTTON_H */

