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

#include <stdbool.h>

// ### Port Configuration ###
// Port A is analogue sensors for the main and side road
#define ROAD_SENSE_CFG TRISA
// Port B is the I/O for pedestrian buttons and lights
#define PED_CFG TRISB
// Port D is lighting
#define LIGHT_CFG TRISD


// ### Pin Assignments & Naming ###
// Pedestrian Button
#define PED_IN INTCONbits.INT0F
// Pedestrian Lights
// Used to set all the WL bits without overwriting the value on RB0
#define PED_WL_MASK 0x0F
// Macro to set write a value just to the upper 4 bits, whilst maintaining the
// value in the lower 4 bits (specifically RB0, but we don't care about 1-3)
#define PED_WL_SET(val) (LATB = (LATB & 0x0F) | (((val) & PED_WL_MASK) << 4))
// Use macro like: PED_WL_SET(0b1111) to turn all wait lights on

// Road Lights
#define OUT_PED_GRE LATDbits.LATD0
#define OUT_PED_RED LATDbits.LATD1
#define OUT_SR_GRE  LATDbits.LATD2
#define OUT_SR_AMB  LATDbits.LATD3
#define OUT_SR_RED  LATDbits.LATD4
#define OUT_MR_GRE  LATDbits.LATD5
#define OUT_MR_AMB  LATDbits.LATD6
#define OUT_MR_RED  LATDbits.LATD7
// Using the Latched outputs instead of PORTx bits
// as this removes the need reading the value directly off the port,
// it will just assume the value is whatever the PORTx register holds
// which is better practice for the PICs


// ### Function Definitions ###
void configure_io (void);   // Initial setup of the IO
void set_wl (bool on_off);  // Set the ped wait lights on/off
void set_mr (int desired_light); // Set the lights on main road
void set_sr (int desired_light); // Set the lights on side road
void set_pc (int desired_light); // Set pedestrian crossing lights

#endif	/* IO_H */
