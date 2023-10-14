/* 
 * File:   ecu_led.h
 * Author: Reda Ibrahim
 *
 * Created on October 13, 2023, 3:07 PM
 */

#ifndef ECU_LED_H
#define	ECU_LED_H

/*section : Includes*/
#include "../../MCAL/GPIO/hal_gpio.h"
#include "ecu_led_cfg.h"

/*section : Declarations */

/*section : Macro Function Declarations */

/*section : Data Type Declarations */
typedef enum{
    LED_OFF,
    LED_ON
}led_status_t;

typedef struct{
    uint8 pin : 7;
    uint8 led_status : 1;
}led_t;

/*section : Function Declarations */
Std_ReturnType led_intialize(led_t *LED);
Std_ReturnType led_on(led_t *LED);
Std_ReturnType led_off(led_t *LED);
Std_ReturnType led_toggle(led_t *LED);
Std_ReturnType led_status(led_t *LED ,led_status_t *STATUS);

#endif	/* ECU_LED_H */

