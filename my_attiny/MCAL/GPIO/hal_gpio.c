/* 
 * File:   hal_gpio.c
 * Author: Reda Ibrahim
 *
 * Created on October 9, 2023, 12:59 PM
 */

/*section : Includes*/
#include "../GPIO/hal_gpio.h"
/*section : Function Definations */

/**
 * @brief
 * @param _pin_config
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_PIN_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_pin_direction_intialize(const pin_config_t *_pin_config) {
    Std_ReturnType ret = E_OK;
    if (NULL == _pin_config || _pin_config -> pin > PORT_PIN_MAX_NUMBER - 1)
        ret = E_NOT_OK;
    else {
        switch (_pin_config -> direction) {
            case OUTPUT:
                SET_BIT(DDRB, _pin_config -> pin);
                CLEAR_BIT(PORTB, _pin_config -> pin);
                break;
            case INPUT:
                CLEAR_BIT(DDRB, _pin_config -> pin);
                CLEAR_BIT(PORTB, _pin_config -> pin);
                break;
            case INPUT_PULLUP:
            
                CLEAR_BIT(DDRB, _pin_config -> pin);
                SET_BIT(PORTB, _pin_config -> pin);
            
                break;
            default: ret = E_NOT_OK;
                break;
        }
    }
    return ret;
}
#endif

/**
 * @brief
 * @param _pin_config pointer to configrations @ref pin_config_t
 * @param direction_status
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_PIN_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_pin_get_direction_status(const pin_config_t *_pin_config, direction_t *direction_status) {
    Std_ReturnType ret = E_OK;
    if (NULL == _pin_config || NULL == direction_status || _pin_config -> pin > PORT_PIN_MAX_NUMBER - 1)
        ret = E_NOT_OK;
    else {
        *direction_status = READ_BIT(DDRB, _pin_config -> pin);
    }
    return ret;
}
#endif
/**
 * @brief
 * @param _pin_config pointer to configrations @ref pin_config_t
 * @param logic
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_PIN_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_pin_write_logic(const pin_config_t *_pin_config, logic_t logic) {
    Std_ReturnType ret = E_OK;
    if (NULL == _pin_config || _pin_config -> pin > PORT_PIN_MAX_NUMBER - 1)
        ret = E_NOT_OK;
    else {
        switch (logic) {
            case LOW:
                CLEAR_BIT(PORTB, _pin_config -> pin);
                break;
            case HIGH:
                SET_BIT(PORTB, _pin_config -> pin);
                break;
            default: ret = E_NOT_OK;
                break;
        }
    }
    return ret;
}
#endif
/**
 * @brief
 * @param _pin_config pointer to configrations @ref pin_config_t
 * @param logic
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_PIN_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_pin_read_logic(const pin_config_t *_pin_config, logic_t *logic) {
    Std_ReturnType ret = E_OK;
    if (NULL == _pin_config || NULL == logic || _pin_config -> pin > PORT_PIN_MAX_NUMBER - 1)
        ret = E_NOT_OK;
    else {
        *logic = READ_BIT(PINB, _pin_config -> pin);
    }
    return ret;
}
#endif

/**
 * @brief
 * @param _pin_config pointer to configrations @ref pin_config_t
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_PIN_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_pin_toggle_logic(const pin_config_t *_pin_config) {
    Std_ReturnType ret = E_OK;
    if (NULL == _pin_config || _pin_config -> pin > PORT_PIN_MAX_NUMBER - 1)
        ret = E_NOT_OK;
    else {
        TOGGLE_BIT(PORTB, _pin_config -> pin);
    }
    return ret;
}
#endif

/**
 * @brief
 * @param status
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_port_direction_intialize(uint8 status) {
    Std_ReturnType ret = E_OK;
    switch (status) {
        case OUTPUT:
            DDRB = 0xff;
            PORTB = 0x00;
            break;
        case INPUT:
            DDRB = 0x00;
            PORTB = 0x00;
            break;
        case INPUT_PULLUP:
            DDRB = 0x00;
            PORTB = 0xff;
            break;
        default: ret = E_NOT_OK;
            break;
    }
    return ret;
}
#endif

/**
 * @brief
 * @param direction_status
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_port_get_direction_status(uint8 *direction_status) {
    Std_ReturnType ret = E_OK;
    if (NULL == direction_status)
        ret = E_NOT_OK;
    else {
        *direction_status = DDRB;
    }
    return ret;
}
#endif

/**
 * @brief
 * @param logic
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_port_write_logic(uint8 logic) {
    Std_ReturnType ret = E_OK;
    
        PORTB = logic;
    
    return ret;
}
#endif

/**
 * @brief
 * @param logic
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_port_read_logic(uint8 *logic) {
    Std_ReturnType ret = E_OK;
    if (NULL == logic)
        ret = E_NOT_OK;
    else {
        *logic = PINB;
    }
    return ret;
}
#endif

/**
 * @brief
 * @return Status of the function
 *         (E_OK)      : The function done successfully
 *         (E_NOT_OK)  : The function has issue 
 */
#if PORT_Configerations == CONFIG_ENABLE

Std_ReturnType gpio_port_toggle_logic(void) {
    Std_ReturnType ret = E_OK;
    PORTB = ~PORTB;
    return ret;
}
#endif