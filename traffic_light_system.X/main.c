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

#include "io.h"               // Handles IO bits
#include "fsm_vector_masks.h" // bit masking for easier input checks
#include "timers.h"


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
volatile bool watchdog_flag      = 0;
volatile bool nochange_flag      = 0;
volatile bool amb_timer_flag     = 0;
volatile bool red_timer_flag     = 0;
volatile bool pc_timer_flag      = 0;
volatile bool wait_timer_flag    = 0;
volatile bool fs_timer_flag      = 0;
// Have we done a sequence of lights this cycle of the FSM?
volatile bool side_road_done = 0;
volatile bool main_road_done = 0;
volatile bool ped_cross_done = 0;
// Are their cars or pedestrians waiting?
volatile bool main_road_req = 0;
volatile bool side_road_req = 0;
volatile bool ped_cross_req = 0;
uint16_t fsm_inputs; // FSM input vector
state_t state;       // Current Machine State
        
        
// ## Function declarations
void setup(void);                   // First-time boot setup
void configure_interrupts(void);    // Interrupts configuration
void manage_lights(void);           // Manages the light sequences, so there are never 2 green signals at once
void update_input_vector(void);     // Used to update the FSM's input vector after any interrupts have occurred, checked every loop
void enter_next_state(state_t);


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


// LP ISR handles road sensors and timers
void __interrupt(low_priority) low_isr(void) {
    // Wait Timer fires
    
    // Side Road Request
    if (PIE1bits.ADIE && PIR1bits.ADIF) { // ADC interrupt enabled && conversion is finished
        
    }
    
    return;
}


void main(void) {
    setup();
    while (1) {
        update_input_vector(); // Process any new async flags from interrupts
        switch (state) { // Check the transition requirements from each state
            case ST_ALL_RED:        // S2
                if (NONE_SET(fsm_inputs, (IN_PC_REQ | IN_SR_REQ)) 
                        && ALL_SET(fsm_inputs, IN_WAIT_TIMER_DONE)) {
                    enter_next_state(ST_MR_AMBER);
                } else if (ALL_SET(fsm_inputs, IN_PC_REQ | IN_WAIT_TIMER_DONE)) {
                    enter_next_state(ST_PED_GREEN);
                } else if (ALL_SET(fsm_inputs, (IN_SR_REQ | IN_WAIT_TIMER_DONE))) {
                    enter_next_state(ST_SR_AMBER_RED);
                }
                break;
            case ST_PED_GREEN:      // S3
                if (ANY_SET(fsm_inputs, IN_PC_TIMER_DONE)) {
                    enter_next_state(ST_ALL_RED);
                }
                break;
            case ST_SR_AMBER_RED:   // S4
                if (ANY_SET(fsm_inputs, IN_AMB_TIMER_DONE)) {
                    enter_next_state(ST_SR_GREEN);
                }
                break;
            case ST_SR_GREEN:       // S5
                if (ANY_SET(fsm_inputs, IN_FS_TIMER_DONE) ||
                        ALL_SET(fsm_inputs, (IN_RED_TIMER_DONE | IN_MR_REQ))) {
                    enter_next_state(ST_SR_AMBER);
                }
                break;
            case ST_SR_AMBER:       // S6
                if (ANY_SET(fsm_inputs, IN_AMB_TIMER_DONE)) {
                    enter_next_state(ST_ALL_RED);
                }
                break;
            case ST_MR_AMBER_RED:   // S7
                if (ANY_SET(fsm_inputs, IN_AMB_TIMER_DONE)) {
                    enter_next_state(ST_ALL_RED);
                }
                break;
            case ST_MR_GREEN:       // S0
                if (ANY_SET(fsm_inputs, IN_NC_TIMER_DONE) &&
                        ANY_SET(fsm_inputs, (IN_WD_TIMER_DONE | IN_SR_REQ | IN_PC_REQ))) {
                    enter_next_state(ST_MR_AMBER);
                }
                break;
            case ST_MR_AMBER:       // S1
                if (ANY_SET(fsm_inputs, IN_AMB_TIMER_DONE)) {
                    enter_next_state(ST_ALL_RED);
                }
                break;
        }
    }
    return;
}


// Called once per system loop, updates the FSM's input vector based on recent
// interrupts
void update_input_vector() {
    uint16_t in = 0b1111110000000000; // Temporary input vector of all 0's, 1's for the upper bits we don't use (9-15)
    
    // Check for Side Road Requests
    if (side_road_req && !side_road_done) in |= IN_SR_REQ; // Set SR_REQ bit}
    
    // Check for Pedestrian Crossing Requests
    if (ped_cross_req && !ped_cross_done) in |= IN_PC_REQ;
    
    // Check for Watchdog Timer (simple check for a bad sensor, if no change has occurred for ages, force one)
    if (watchdog_flag)                    in |= IN_WD_TIMER_DONE;
                
    // Has the "No Change" timer fired?*
    if (nochange_flag)                    in |= IN_NC_TIMER_DONE;
    
    // Check for amber & Red/Amber light timer
    if (amb_timer_flag)                   in |= IN_AMB_TIMER_DONE;
    
    // Check for Red Light Timer
    if (red_timer_flag)                   in |= IN_RED_TIMER_DONE;
    
    // Check Wait (All Red) Timer
    if (wait_timer_flag)                  in |= IN_WAIT_TIMER_DONE;
    
    // Check for the "Fast Switch" timer
    if (fs_timer_flag)                    in |= IN_FS_TIMER_DONE;
    
    // Update the real input vector after considering all the flags
    fsm_inputs = in;
}


// Handles any processing required by the new state (updating lights, flags,
// starting timers etc.)
void enter_next_state(state_t new_state) {
    switch (new_state) {
        case ST_MR_GREEN: // S0
            // Set Main Road to GREEN, all other red
            set_mr(3);
            set_sr(0);
            set_pc(0);
            // Clear the "No Change" & Watchdog flags
            watchdog_flag = 0;
            nochange_flag = 0;
            // Start the "No Change" & Watchdog timers
            start_nc_timer();
            start_wd_timer();
            break;
        case ST_MR_AMBER: // S1
            // Set Main Road to AMBER, all other RED
            set_mr(2);
            set_sr(0);
            set_pc(0);
            // Clearing the amber timer flag & Stop the Watchdog timer if 
            // running, start the amber timer
            amb_timer_flag = 0;
            stop_wd_timer();
            start_amb_timer();
            break;
        case ST_ALL_RED: // S2
            // All lights RED
            set_mr(0);
            set_sr(0);
            set_pc(0);
            // Clear wait timer flag & start the timer (waiting for crossing to clear)
            wait_timer_flag = 0;
            start_wait_timer();
        case ST_PED_GREEN: // S3
            // Ped Crossing GREEN, all other RED
            set_mr(0);
            set_sr(0);
            set_pc(1);
            // Pedestrian loop has now been done, switch off wait light
            ped_cross_done = 1;
            set_wl(0);
            // Clear the pc timer flag & start the timer
            pc_timer_flag = 0;
            start_pc_timer();
        case ST_SR_AMBER_RED: // S4
            // Side Road AMB/RED, all others RED
            set_mr(0);
            set_sr(1);
            set_pc(0);
            // Clear the amb timer flag & Start the the timer
            amb_timer_flag = 0;
            start_amb_timer();
        case ST_SR_GREEN: // S5
            // Side Road GREEN, all others RED
            set_mr(0);
            set_sr(3);
            set_pc(0);
            // Clear red and fast switch flags & Start the timers
            red_timer_flag = 0;
            fs_timer_flag = 0;
            start_red_timer();
            start_fast_switch_timer();
        case ST_SR_AMBER: // S6
            // Side Road AMBER, all others RED
            set_mr(0);
            set_sr(2);
            set_pc(0);
            // Side Road has now been done
            side_road_done = 1;
            // If running, stop the fast switch timer, and start the amber timer
            stop_fast_switch_timer();
            amb_timer_flag = 0;
            start_amb_timer();
        case ST_MR_AMBER_RED: // S7
            // Main Road AMB/RED, all others RED
            set_mr(1);
            set_sr(0);
            set_pc(0);
            // Clear the "done" and watchdog flags, this is a new loop
            side_road_done = 0;
            ped_cross_done = 0;
            watchdog_flag = 0;
            // Start Amber Light timer
            start_amb_timer();
    }
}



// Initial setup on system boot
void setup(void) {
    configure_io();
    //configure_interrupts();
    
    // Interrupts Configuration
    RCONbits.IPEN = 1; // Enables Interrupt Priorities
    INTCON = 0b11010000; // Enables GIE, PEIE and INT0 (RB0)
    INTCON2 = 0b00000001; // Enables PORTB PUps, INT0 as Falling Edge, RB interrupt High Priority
    
    // ### FSM Starting Conditions ###
    // State: S2 (All Red)
    state = ST_ALL_RED;
    // Inputs: Ped Done, SR Done, upper 6 bits always 1
    fsm_inputs = 0b000001100000000;
}
