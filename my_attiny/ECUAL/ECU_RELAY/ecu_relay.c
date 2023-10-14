/* 
 * File:   ecu_relay.h
 * Author: Reda Ibrahim
 *
 * Created on October 13, 2023, 3:07 PM
 */

/*section : Includes*/
#include "ecu_relay.h"

/*section : Function Definations */
/**
 * @brief 
 * @param RELAY
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType relay_intialize(relay_t *RELAY) {
    Std_ReturnType ret = E_OK;
    if (NULL == RELAY)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = RELAY->pin,
            .direction = OUTPUT,
            .logic = RELAY->relay_status};
        logic_t logic_obj = {pin_obj.logic};
        gpio_pin_direction_intialize(&pin_obj);
        gpio_pin_write_logic(&pin_obj, logic_obj);
    }
    return ret;
}

/**
 * @brief 
 * @param RELAY
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
Std_ReturnType relay_on(relay_t *RELAY) {
    Std_ReturnType ret = E_OK;
    if (NULL == RELAY)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = RELAY->pin,
            .direction = OUTPUT,
            .logic = RELAY->relay_status};
        gpio_pin_write_logic(&pin_obj, HIGH);
    }
    return ret;
}

/**
 * @brief 
 * @param RELAY
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
Std_ReturnType relay_off(relay_t *RELAY) {
    Std_ReturnType ret = E_OK;
    if (NULL == RELAY)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = RELAY->pin,
            .direction = OUTPUT,
            .logic = RELAY->relay_status};
        gpio_pin_write_logic(&pin_obj, LOW);
    }
    return ret;
}

/**
 * @brief 
 * @param RELAY
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType relay_toggle(relay_t *RELAY) {
    Std_ReturnType ret = E_OK;
    if (NULL == RELAY)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = RELAY->pin,
            .direction = OUTPUT,
            .logic = RELAY->relay_status};
        gpio_pin_toggle_logic(&pin_obj);
    }
    return ret;
}

/**
 * @brief 
 * @param RELAY
 * @param STATUS
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType relay_status(relay_t *RELAY ,relay_status_t *STATUS) {
    Std_ReturnType ret = E_OK;
    if (NULL == RELAY)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = RELAY->pin};
        logic_t logic_obj;
        gpio_pin_read_logic(&pin_obj, &logic_obj);
        *STATUS = logic_obj;
    }
    return ret;
}
