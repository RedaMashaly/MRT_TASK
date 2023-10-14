/* 
 * File:   ecu_button.c
 * Author: Reda Ibrahim
 *
 * Created on October 13, 2023, 3:07 PM
 */

/*section : Includes*/
#include "ecu_button.h"

/*section : Function Definations */
/**
 * @brief
 * @param BUTTON
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
Std_ReturnType button_intialize(button_t *BUTTON) {
    Std_ReturnType ret = E_OK;
    if (NULL == BUTTON)
        ret = E_NOT_OK;
    else {

        ret = gpio_pin_direction_intialize(&(BUTTON->button_pin));
    }
    return ret;
}
/**
 * @brief
 * @param BUTTON
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
Std_ReturnType button_status(button_t *BUTTON) {
    Std_ReturnType ret = E_OK;
    if (NULL == BUTTON)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = BUTTON->button_pin;
        logic_t logic_obj;
        gpio_pin_read_logic(&pin_obj, &logic_obj);
        BUTTON->button_pin.logic = logic_obj;
        if (BUTTON_ACTIVE_HIGH == BUTTON->button_connection) {
            if (HIGH == logic_obj) {
                BUTTON->button_state = BUTTON_PRESSED;
            } else {
                BUTTON->button_state = BUTTON_RELEASED;
            }
        } else if (BUTTON_ACTIVE_LOW == BUTTON->button_connection) {
            if (HIGH == logic_obj) {
                BUTTON->button_state = BUTTON_RELEASED;
            } else {
                BUTTON->button_state = BUTTON_PRESSED;
            }
        } else {
            ret = E_NOT_OK;
        }
    }
    return ret;
}