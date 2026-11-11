/*
 * Filename: io.c
 * Author: jdb
 * Date: 11/11/2026
 * Revision Number: 1
 * Target Device: PIC18F452
 * Compiler: XC8
 * Summary: Implements I/O definitions for the traffic light system
*/


#include <xc.h>
#include <stdbool.h>
#include "io.h"


// Initial I/O configuration
void configure_io (void) {
    // Port A RA0-3 are inputs, don't care about 4-6, 7 unused
    ROAD_SENSE_CFG = 0b00001111;
    ADCON1bits.PCFG = 0b0000; // Sets Port A as all analog inputs
    // Port B RB0 is input, everything else output
    PED_CFG = 0b00000001;
    // Port D is all the road and pedestrian lights, all digital outs
    LIGHT_CFG = 0b00000000;
}


// Sets the Pedestrian Wait Light ON or OFF
// 1: All WL ON, 0: All WL OFF
void set_wl (bool on_off) {
    if (on_off) {
        PED_WL_SET(0b1111);
    } else {
        PED_WL_SET(0b0000);
    }
}


// Set the main road lights
// 0: Red, 1: Amb/Red, 2: Amb, 3: Gre
void set_mr(int desired_light) {
    switch (desired_light) {
        case 0: // RED Only
            MR_RED = 1;
            MR_AMB = 0;
            MR_GRE = 0;
            break;
        case 1: // RED & AMBER
            MR_RED = 1;
            MR_AMB = 1;
            MR_GRE = 0;
            break;
        case 2: // AMBER Only
            MR_RED = 0;
            MR_AMB = 1;
            MR_GRE = 0;
            break;
        case 3: // GREEN Only
            MR_RED = 0;
            MR_AMB = 0;
            MR_GRE = 1;
            break;
        default: // Any other input forces an RED
            MR_RED = 1;
            MR_AMB = 0;
            MR_GRE = 0;
            break;
    }
}


// Set the side road lights
// 0: Red, 1: Amb/Red, 2: Amb, 3: Gre
void set_sr(int desired_light) {
    switch (desired_light) {
        case 0: // RED Only
            SR_RED = 1;
            SR_AMB = 0;
            SR_GRE = 0;
            break;
        case 1: // RED & AMBER
            SR_RED = 1;
            SR_AMB = 1;
            SR_GRE = 0;
            break;
        case 2: // AMBER Only
            SR_RED = 0;
            SR_AMB = 1;
            SR_GRE = 0;
            break;
        case 3: // GREEN Only
            SR_RED = 0;
            SR_AMB = 0;
            SR_GRE = 1;
            break;
        default: // Any other input forces an RED
            SR_RED = 1;
            SR_AMB = 0;
            SR_GRE = 0;
            break;
    }
}


// Set the pedestrian crossing lights
// 0: Red, 1: Gre
void set_pc(int desired_light) {
    switch (desired_light) {
        case 0: // RED Only
            PED_RED = 1;
            PED_GRE = 0;
            break;
        case 1: // GREEN Only
            PED_RED = 0;
            PED_GRE = 1;
            break;
        default: // Any other input forces an RED
            PED_RED = 1;
            PED_GRE = 0;
            break;
    }
}
