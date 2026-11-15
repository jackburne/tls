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


// 3 Second time for Amber Light
void start_amb_timer() {
    INTCONbits.TMR0IF = 0;  // Clearing the T0 Interrupt Flag
    TMR0L = 115;            // Amber timer Starting Value
    T0CON = 0b11000100;     // Amber timer configuration
    /* 
     * TMR0ON: 1, Timer0 Enabled & Started
     * T08BIT: 1, Timer0 8-bit mode
     * T0CS  : 0, Internal Instruction Clock
     * T0SE  : 0, Source Edge Select, we dont care, not using external clock
     * PSA   : 0, Prescaler Enabled
     * T0PS  : 100, 1:32 Prescale
     */
}


// 1 Second All Red Light
void start_red_timer() {
    INTCONbits.TMR0IF = 0;  // Clearing the T0 Interrupt Flag
    TMR0L = 209;            // Red timer Starting Value
    T0CON = 0b11000100;     // Red timer configuration
    /* 
     * TMR0ON: 1, Timer0 Enabled & Started
     * T08BIT: 1, Timer0 8-bit mode
     * T0CS  : 0, Internal Instruction Clock
     * T0SE  : 0, Source Edge Select, we dont care, not using external clock
     * PSA   : 0, Prescaler Enabled
     * T0PS  : 100, 1:32 Prescale
     */
}


// 2 minute "No Change" Timer
void start_nc_timer() {
    INTCONbits.TMR0IF = 0;  // Clearing the T0 Interrupt Flag
    TMR0 = 20535;           // NC timer Starting Value
    T0CON = 0b10000000;     // NC timer configuration
    /* 
     * TMR0ON: 1, Timer0 Enabled & Started
     * T08BIT: 0, Timer0 16-bit mode
     * T0CS  : 0, Internal Instruction Clock
     * T0SE  : 0, Source Edge Select, we dont care, not using external clock
     * PSA   : 0, Prescaler Enabled
     * T0PS  : 000, 1:2 Prescale
     */
}


// 14 second Pedestrian Timer

