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
#include <stdint.h>
#include "io.h" 
#include "fsm_vector_masks.h"


// Possible States, enum used for faster referencing
typedef enum {
    ST_MR_GREEN,        // S0
    ST_MR_AMBER,        // S1
    ST_ALL_RED,         // S2
    ST_PED_GREEN,       // S3
    ST_SR_AMBER_RED,    // S4
    ST_SR_GREEN,        // S5
    ST_SR_AMBER,        // S6
    ST_MR_AMBER_RED     // S7   
} state_t;


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
// FSM input vector
uint16_t fsm_inputs;
// Current Machine State
state_t state;
        
        
// ## Function declarations
void setup(void);                   // First-time boot setup
void configure_interrupts(void);    // Interrupts configuration
void manage_lights(void);           // Manages the light sequences, so there are never 2 green signals at once
void update_input_vector(void);     // Used to update the FSM's input vector after any interrupts have occurred, checked every loop
void enter_next_state(void);


// ISRs
// HP ISR only handles the ped button pressing
void __interrupt(high_priority) high_isr(void) {
    // INT0 Flag indicates Ped button is pressed & is INT0 Enabled?
    if (PED_IN && INTCONbits.INT0E) {
        PED_IN = 0; // Clear the flag
        ped_cross_req = 1; // Tell the FSM Peds want to cross
        set_wl(1); // Set the wait lights on
    }
    return;
}


// Handles road sensors and timers
void __interrupt(low_priority) low_isr(void) {
    // Wait Timer fires
    
    return;
}


void main(void) {
    setup();

    while (1) {
        update_input_vector();
        
        switch (state) {
            case ST_ALL_RED:
                // Transition to ST_MR_AMBER (S7)
                if (ANY_SET(fsm_input, (IN_PC_REQ | IN_SR_REQ)) && ) {
                    
                }
                break;
        }
    }
    return;
}


// Called once per system loop, updates the FSM's input vector based on recent
// interrupts
void update_input_vector() {
    
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
    
    // ### FSM Starting Conditions ###
    // State: S2 (All Red)
    state = ST_ALL_RED;
    // Inputs: Ped Done, SR Done
    fsm_inputs = 0b000001100000000;
}
