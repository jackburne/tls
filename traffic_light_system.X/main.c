/*
 * Filename: main.c
 * Author: jdb
 * Date: 11/11/2026
 * Revision Number: 1
 * Target Device: PIC18F452
 * Compiler: XC8
 * Summary: Main source file, handles setup & FSM transitions
*/

#include "pic_configuration.h" // Contains all the pragma statements for pic configuration
#include <xc.h>
#include <stdbool.h>
#include "io.h" 


// ### Global Variables for tracking fsm inputs
bool watchdog_flag = 0;
// Have we done a sequence of lights this cycle of the FSM?
bool side_road_done = 0;
bool main_road_done = 0;
bool ped_cross_done = 0;
// Are their cars or pedestrians waiting?
volatile bool main_road_req = 0;
volatile bool side_road_req = 0;
volatile bool ped_cross_req = 0;


// ## Function declarations
void setup(void);                   // First-time boot setup
void configure_interrupts(void);    // Interrupts configuration
void manage_lights(void);                 // Manages the light sequences, so there are never 2 green signals at once


// ISRs
void __interrupt(high_priority) high_isr(void) {
    // INT0 Flag indicates Ped button is pressed & is INT0 Enabled?
    if (INTCONbits.INT0F && INTCONbits.INT0E) {
        INTCONbits.INT0F = 0; // Clear the flag
        ped_cross_req = 1; // Tell the FSM Peds want to cross
        set_wl(1); // Set the wait lights on
    }
}


void main(void) {
    setup();
    
    while (1) {
        
    }
    return;
}


void manage_lights() {
    
}


// Initial setup on system boot
void setup(void) {
    configure_io();
    //configure_interrupts();
    
    // Interrupts Configuration
    // TODO: Add IPEN=1 to enable high/low priority interrupts
    INTCON = 0b11010000; // Enables GIE, PEIE and INT0 (RB0)
    INTCON2 = 0b00000001; // Enables PORTB PUps, INT0 as Falling Edge, RB interrupt High Priority
    // FSM Starting state
}
