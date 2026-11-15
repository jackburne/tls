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

// Function definitions
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

