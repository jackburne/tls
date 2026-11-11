/*
 * Filename: io.h
 * Author: jdb
 * Date: 11/11/2026
 * Revision Number: 1
 * Target Device: PIC18F452
 * Compiler: XC8
 * Summary: I/O definitions & functions for the traffic light system
*/

#ifndef IO_H
#define	IO_H

// ### Port Configuration ###
// Port A is analogue sensors for the main and side road
#define ROAD_SENSE_CFG TRISA
// Port B is the I/O for pedestrian buttons and lights
#define PED_CFG TRISB
// Port D is lighting
#define LIGHT_CFG TRISD


// ### Pin Assignments & Naming ###
// Pedestrian Button
#define PED_IN PORTBbits.RB0
// Pedestrian Lights
// Used to set all the WL bits without overwriting the value on RB0
#define PED_WL_MASK = 0xF0
// Macro to set write a value just to the upper 4 bits, whilst maintaing the
// value in the lower 4 bits (specifially RB0, but we don't care about 1-3)
#define PED_WL_SET(val) (LATB = (LATB & 0x0F) | (((val) & PED_WL_MASK) << 4))
// Use macro like: PED_WL_SET(0b1111) to turn all wait lights on

// Road Lights
#define PED_GRE PORTDbits.RD0
#define PED_RED PORTDbits.RD1
#define SR_GRE  PORTDbits.RD2
#define SR_AMB  PORTDbits.RD3
#define SR_RED  PORTDbits.RD4
#define MR_GRE  PORTDbits.RD5
#define MR_AMB  PORTDbits.RD6
#define MR_RED  PORTDbits.RD7


// ### Function Definitions ###
void configure_io (void);   // Initial setup of the IO
void set_wl (bool on_off);  // Set the ped wait lights on/off
void set_mr (bool gre, bool amb, bool red); // Set the lights on the main road
void set_sr (bool gre, bool amb, bool red); // Set the lights on the side road
void set_ped (bool gre_or_red); // 1: Ped is GREEN, 0: Ped is RED

#endif	/* IO_H */

