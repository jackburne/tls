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
        //LATB = 0xF0;        
    } else {
        PED_WL_SET(0b0000);
    }
}


// Set the main road lights
// 0: Red, 1: Amb/Red, 2: Amb, 3: Gre
void set_mr(int desired_light) {
    switch (desired_light) {
        case 0: // RED Only
            OUT_MR_RED = 1;
            OUT_MR_AMB = 0;
            OUT_MR_GRE = 0;
            break;
        case 1: // RED & AMBER
            OUT_MR_RED = 1;
            OUT_MR_AMB = 1;
            OUT_MR_GRE = 0;
            break;
        case 2: // AMBER Only
            OUT_MR_RED = 0;
            OUT_MR_AMB = 1;
            OUT_MR_GRE = 0;
            break;
        case 3: // GREEN Only
            OUT_MR_RED = 0;
            OUT_MR_AMB = 0;
            OUT_MR_GRE = 1;
            break;
        default: // Any other input forces an RED
            OUT_MR_RED = 1;
            OUT_MR_AMB = 0;
            OUT_MR_GRE = 0;
            break;
    }
}


// Set the side road lights
// 0: Red, 1: Amb/Red, 2: Amb, 3: Gre
void set_sr(int desired_light) {
    switch (desired_light) {
        case 0: // RED Only
            OUT_SR_RED = 1;
            OUT_SR_AMB = 0;
            OUT_SR_GRE = 0;
            break;
        case 1: // RED & AMBER
            OUT_SR_RED = 1;
            OUT_SR_AMB = 1;
            OUT_SR_GRE = 0;
            break;
        case 2: // AMBER Only
            OUT_SR_RED = 0;
            OUT_SR_AMB = 1;
            OUT_SR_GRE = 0;
            break;
        case 3: // GREEN Only
            OUT_SR_RED = 0;
            OUT_SR_AMB = 0;
            OUT_SR_GRE = 1;
            break;
        default: // Any other input forces an RED
            OUT_SR_RED = 1;
            OUT_SR_AMB = 0;
            OUT_SR_GRE = 0;
            break;
    }
}


// Set the pedestrian crossing lights
// 0: Red, 1: Gre
void set_pc(int desired_light) {
    switch (desired_light) {
        case 0: // RED Only
            OUT_PED_RED = 1;
            OUT_PED_GRE = 0;
            break;
        case 1: // GREEN Only
            OUT_PED_RED = 0;
            OUT_PED_GRE = 1;
            break;
        default: // Any other input forces an RED
            OUT_PED_RED = 1;
            OUT_PED_GRE = 0;
            break;
    }
}
