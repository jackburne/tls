/*
 * Filename: timers.c
 * Author: jdb
 * Date: 15/11/2026
 * Revision Number: 1
 * Target Device: PIC18F452
 * Compiler: XC8
 * Summary: Implements the different timer configurations
*/

#include <xc.h>
#include "timers.h"

static volatile uint16_t timer_count[TMR_COUNT]; // Array to store timer "ticks"
volatile uint8_t timer_expired = 0; // bitfield to store which "timers" have expired/completed


void configure_timer() {
    T0CON = 0b000010011;
    /* TIMER0 Configuration Bits
     * 
     * TMR0ON  : 1, Don't start ticking immediately
     * T08BIT  : 0, 16-bit mode
     * T0CS    : 0, Use system clock
     * T0SE    : 0, Don't care, not using external clock
     * PSA     : 0, Prescale assigned
     * T0PS0:2 : 011, 1:16 prescale
     */
    TMR0H = TMR0H_VAL; // Preload "28036" into the TMR0L and H registers
    TMR0L = TMR0L_VAL;
    T0CONbits.TMR0ON = 1; // Start the timer after preloading
}


void tmr0_start(timer_id_t id, uint16_t ticks) {
    INTCONbits.GIEH = 0;         // Disable peripheral interrupts
    timer_count[id] = ticks;      // Number of "ticks" to run the timer for
    timer_expired &= ~(1u << id); // Unset/Clear the expiry flag for this timer so it doesnt instantly toggle off
    INTCONbits.GIEH = 1;         // Re-enable peripheral interrupts
}


void tmr0_stop(timer_id_t id) {
    INTCONbits.GIEH = 0;         // Disable peripheral interrupts
    timer_count[id] = 0;          // Clear the tick count for the timer
    timer_expired &= ~(1u << id); // Unset/toggle the expiry flag for the timer
    INTCONbits.GIEH = 1;         // Re-enable peripheral interrupts
}


// Every time we count "n" milliseconds, update all our SW timers with 1 "tick"
void tmr0_tick() {
    for (uint8_t i = 0; i < TMR_COUNT; i++) { // For every timer in our enum
        if (timer_count[i] > 0) { // Is the timer running? (i.e. it's count is non-zero)
            timer_count[i]--;     // Decrement it
            if (timer_count[i] == 0) { // Then recheck if it's 0
                timer_expired |= (1u << i); // If yes, toggle it's "expired" flag
            }
        }
    }
}


// 3 Second time for Amber Light
void start_amb_timer() {
    tmr0_start(TMR_AMB, MS_TO_TICK(2000));
}


// 1 minute timer before Side Road goes red again
void start_red_timer() {
    tmr0_start(TMR_RED, MS_TO_TICK(1000));
}


void stop_red_timer() {
    tmr0_stop(TMR_RED);
}


// 2 minute "No Change" Timer
void start_nc_timer() {
    //tmr0_start(TMR_NC, MS_TO_TICK(120000));
    tmr0_start(TMR_NC, MS_TO_TICK(2000)); // Test Case, 2 seconds so I dont wait ages
}


// 14 second Pedestrian Timer
void start_pc_timer() {
    tmr0_start(TMR_PC, MS_TO_TICK(14000));
}


// 1 second "All red" wait timer, for crossing to clear
void start_wait_timer() {
    tmr0_start(TMR_WAIT, MS_TO_TICK(1000));
}


// 5 minute "Watchdog timer", if not change happens for 5 mins, do a complete loop
void start_wd_timer() {
    tmr0_start(TMR_WD, MS_TO_TICK(300000));
}


// Stop the watchdog timer if we transition for any reason
void stop_wd_timer() {
    tmr0_stop(TMR_WD);
}


// "Fast Switch" away form side road if there is main road demand
// Always shorter than RED timer, 30 seconds
void start_fast_switch_timer() {
    tmr0_start(TMR_FS, MS_TO_TICK(30000));
}


// Stop the fast swtich if we moved on the RED timer
void stop_fast_switch_timer() {
    tmr0_stop(TMR_FS);
}
