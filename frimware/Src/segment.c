#include <stdint.h>
#include "main.h"
#include "stm32f1xx_hal.h"

static const uint32_t digits[] ={
		0x400, //0
		0x658, //1
		0x0C0, //2
		0x048, //3
		0x218, //4
		0x108, //5
		0x100, //6
		0x458, //7
		0x000, //8
		0x008  //9
};

static uint8_t seg = 0;
static uint8_t counter = 1;
static uint8_t _pwm = 0;
static uint8_t hour_tens = 0;
static uint8_t hour_ones = 1;
static uint8_t min_tens = 2;
static uint8_t min_ones = 3;

void segment_init()
{
	HAL_GPIO_WritePin(SEG_A_GPIO_Port, SEG_A_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SEG_B_GPIO_Port, SEG_B_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SEG_C_GPIO_Port, SEG_C_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SEG_D_GPIO_Port, SEG_D_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SEG_E_GPIO_Port, SEG_E_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SEG_F_GPIO_Port, SEG_F_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SEG_G_GPIO_Port, SEG_G_Pin, GPIO_PIN_SET);
}

void segment_run()
{
	//pulse width
	if(counter < _pwm) {
		GPIOB->ODR &= ~(0xF000);
	}

	if(counter-- > 0)
		return;

	//counter overrun, restart and go to next digit
	counter = 128;

	//ensure all digits are off
	GPIOB->ODR &= ~(0xF000);
	switch(seg)
	{
	case 0:
		if(hour_tens == 0)
			GPIOB->ODR = 0x7D8;
		else
			GPIOB->ODR = digits[hour_tens];

		HAL_GPIO_WritePin(SEG_HT_GPIO_Port, SEG_HT_Pin, GPIO_PIN_SET);
		seg++;
		break;
	case 1:
		GPIOB->ODR = digits[hour_ones];
		HAL_GPIO_WritePin(SEG_HT_GPIO_Port, SEG_HO_Pin, GPIO_PIN_SET);
		seg++;
		break;
	case 2:
		GPIOB->ODR = digits[min_tens];
		HAL_GPIO_WritePin(SEG_HT_GPIO_Port, SEG_MT_Pin, GPIO_PIN_SET);
		seg++;
		break;
	case 3:
		GPIOB->ODR = digits[min_ones];
		HAL_GPIO_WritePin(SEG_HT_GPIO_Port, SEG_MO_Pin, GPIO_PIN_SET);
		seg = 0;
		break;
	}
}

void segment_set(uint8_t hour, uint8_t min)
{
	uint8_t val = hour / 10;
	if(val <= 9)
		hour_tens = val;

	val = hour % 10;
	if(val <= 9)
		hour_ones = val;

	val = min / 10;
	if(val <= 9)
		min_tens = val;

	val = min % 10;
	if(val <= 9)
		min_ones = val;

}

void segment_pwm(uint8_t pwm)
{
	_pwm = pwm;
}
