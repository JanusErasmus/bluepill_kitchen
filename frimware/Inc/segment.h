/*
 * segment.h
 *
 *  Created on: 18 Jan 2020
 *      Author: jcera
 */

#ifndef INC_SEGMENT_H_
#define INC_SEGMENT_H_
#ifdef __cplusplus
extern "C" {
#endif

void segment_init();
void segment_run();
void segment_set(uint8_t hour, uint8_t min);
void segment_pwm(uint8_t pwm);

#ifdef __cplusplus
}
#endif




#endif /* INC_SEGMENT_H_ */
