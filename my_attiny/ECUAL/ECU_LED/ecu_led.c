
/* 
 * File:   ecu_led.h
 * Author: Reda Ibrahim
 *
 * Created on October 13, 2023, 3:07 PM
 */

/*section : Includes*/
#include "ecu_led.h"

/*section : Function Definations */
/**
 * @brief 
 * @param LED
 * @return Status of the function 
 *         (E_OK)      : The function done successfully 
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType led_intialize(led_t *LED) {
    Std_ReturnType ret = E_OK;
    if (NULL == LED)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = LED->pin,
            .direction = OUTPUT,
            .logic = LED->led_status};
        logic_t logic_obj = {pin_obj.logic};
        gpio_pin_direction_intialize(&pin_obj);
        gpio_pin_write_logic(&pin_obj, logic_obj);
    }
    return ret;
}

/**
 * @brief 
 * @param LED
 * @return Status of the function 
 *         (E_OK)      : The function done successfully 
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType led_on(led_t *LED) {
    Std_ReturnType ret = E_OK;
    if (NULL == LED)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = LED->pin,
            .direction = OUTPUT,
            .logic = LED->led_status};
        gpio_pin_write_logic(&pin_obj, HIGH);
    }
    return ret;
}

/**
 * @brief 
 * @param LED
 * @return Status of the function 
 *         (E_OK)      : The function done successfully 
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType led_off(led_t *LED) {
    Std_ReturnType ret = E_OK;
    if (NULL == LED)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = LED->pin,
            .direction = OUTPUT,
            .logic = LED->led_status};
        gpio_pin_write_logic(&pin_obj, LOW);
    }
    return ret;
}

/**
 * @brief 
 * @param LED
 * @return Status of the function 
 *         (E_OK)      : The function done successfully 
 *         (E_NOT_OK)  : The function has issue  
 */
Std_ReturnType led_toggle(led_t *LED) {
    Std_ReturnType ret = E_OK;
    if (NULL == LED)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = LED->pin,
            .direction = OUTPUT,
            .logic = LED->led_status};
        gpio_pin_toggle_logic(&pin_obj);
    }
    return ret;
}

/**
 * @brief 
 * @param LED
 * @param STATUS
 * @return Status of the function 
 *         (E_OK)      : The function done successfully 
 *         (E_NOT_OK)  : The function has issue  Status of the function 
 */
Std_ReturnType led_status(led_t *LED ,led_status_t *STATUS) {
    Std_ReturnType ret = E_OK;
    if (NULL == LED)
        ret = E_NOT_OK;
    else {
        pin_config_t pin_obj = {.pin = LED->pin};
        logic_t logic_obj;
        gpio_pin_read_logic(&pin_obj, &logic_obj);
        *STATUS = logic_obj;
    }
    return ret;
}