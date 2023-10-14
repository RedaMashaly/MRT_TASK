/* 
 * File:   application.c
 * Author: Reda Ibrahim
 *
 * Created on October 9, 2023, 12:29 PM
 */

/*section : Includes*/
#include <stdio.h>
#include <stdlib.h>
#include <util/delay.h>
#include "application.h"


/*section : Data Type Declarations */
led_t Led_1 = {
    .pin = pin1,
    .led_status = LED_OFF
};
relay_t Relay_1 = {
    .pin = pin2,
    .relay_status = RELAY_OFF
};
button_t Button_1 = {
    .button_pin.pin = pin3,
    .button_pin.direction = INPUT_PULLUP,
    .button_connection = BUTTON_ACTIVE_LOW
};
relay_status_t Relay_Status;

/**
 * @brief Application ain function
 * @return Status of the function
 *         (EXIT_SUCCESS)      : The function done successfully
 *         (EXIT_FAILAUR)  : The function has issue  
 */
int main() {
    uint8 ret = E_NOT_OK;
    ret = application_intialize();
    ret = relay_on(&Relay_1);
    /*program loop*/
    while (1) {

    }
    ret = button_status(&Button_1);
    if (BUTTON_PRESSED == Button_1.button_state) {
        _delay_ms(20);
        ret = led_toggle(&Led_1);
        while (BUTTON_PRESSED == Button_1.button_state);
    }
    ret = relay_status(&Relay_1, &Relay_Status);
    
    return (EXIT_SUCCESS);
}

/*section : Function Definations */

/**
 * @brief
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType application_intialize(void) {
    uint8 ret = E_NOT_OK;
    ret = led_intialize(&Led_1);
    ret = relay_intialize(&Relay_1);
    ret = button_intialize(&Button_1);
    return ret;
}