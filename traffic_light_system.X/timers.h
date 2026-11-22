/*
 * Filename: timers.h
 * Author: jdb
 * Date: 11/11/2026
 * Revision Number: 1
 * Target Device: PIC18F452
 * Compiler: XC8
 * Summary: Defines the different timer configurations
*/

#ifndef TIMERS_H
#define	TIMERS_H

#define MS_PER_TICK(ms) ((ms) / 100) // 100ms clock ticks

extern volatile uint8_t tmr0_expired; // Each bit represents one of the timers 
                                      // in the enum below

typedef enum {
    TMR_AMB,
    TMR_PC,
    TMR_WAIT,
    TMR_FS,
    TMR_WD,
    TMR_COUNT // Represents the length of this enum -1
} timer_id_t;


// Function definitions
// HW clock start/stop functions
void tmr0_start(timer_id_t id, uint16_t ticks);
void tmr0_stop(timer_id_t);
// software "timer" functions
void start_nc_timer(void);
void start_wd_timer(void);
void start_amb_timer(void);
void start_red_timer(void);
void start_pc_timer(void);
void start_wait_timer(void);
void start_fast_switch_timer(void);
void stop_wd_timer(void);
void stop_fast_switch_timer(void);

#endif	/* TIMERS_H */

