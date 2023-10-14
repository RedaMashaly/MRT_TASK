/* 
 * File:   hal_gpio.h
 * Author: Reda Ibrahim
 *
 * Created on October 9, 2023, 12:59 PM
 */

#ifndef HAL_GPIO_H
#define	HAL_GPIO_H

/*section : Includes*/
#include "../../MCAL/Attiny85.h"
#include "../mcal_std_types.h"
#include "../device_config.h"

/*section : Declarations */
#define BIT_MASK (uint8)1
#define PORT_PIN_MAX_NUMBER 6
#define PORT_PIN_Configerations CONFIG_ENABLE
#define PORT_Configerations CONFIG_ENABLE
/*section : Macro Function Declarations */

#define SET_BIT(REG, BIT_POSN)     (REG |= (BIT_MASK<<BIT_POSN))
#define CLEAR_BIT(REG, BIT_POSN)   (REG &= ~(BIT_MASK<<BIT_POSN))
#define TOGGLE_BIT(REG, BIT_POSN)  (REG ^= (BIT_MASK<<BIT_POSN))
#define READ_BIT(REG, BIT_POSN)    (((REG) >> (BIT_POSN)) & (BIT_MASK));
#define Write_Bit(REG, BIT_POSN, Bit_Val) ((Bit_Val) ? SET_BIT(REG, BIT_POSN) : CLEAR_BIT(REG, BIT_POSN))

/*section : Data Type Declarations */
typedef enum {
    LOW,
    HIGH
} logic_t;

typedef enum {
    OUTPUT,
    INPUT,
    INPUT_PULLUP
} direction_t;

typedef enum {
    pin0,
    pin1,
    pin2,
    pin3,
    pin4,
    pin5
} pin_index_t;

typedef struct {
    uint8 pin : 5; /* @ref pin_index_t */
    uint8 logic : 1; /* @ref logic_t */
    uint8 direction : 2; /* @ref direction_t */
} pin_config_t;
/*section : Function Declarations */
Std_ReturnType gpio_pin_direction_intialize(const pin_config_t *_pin_config);
Std_ReturnType gpio_pin_get_direction_status(const pin_config_t *_pin_config, direction_t *direction_status);
Std_ReturnType gpio_pin_write_logic(const pin_config_t *_pin_config, logic_t logic);
Std_ReturnType gpio_pin_read_logic(const pin_config_t *_pin_config, logic_t *logic);
Std_ReturnType gpio_pin_toggle_logic(const pin_config_t *_pin_config);


Std_ReturnType gpio_port_direction_intialize(uint8 status);
Std_ReturnType gpio_port_get_direction_status(uint8 *direction_status);
Std_ReturnType gpio_port_write_logic(uint8 logic);
Std_ReturnType gpio_port_read_logic(uint8 *logic);
Std_ReturnType gpio_port_toggle_logic(void);

#endif	/* HAL_GPIO_H */

