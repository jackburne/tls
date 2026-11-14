/*
 * Filename: fsm_vector_masks.h
 * Author: jdb
 * Date: 11/11/2026
 * Revision Number: 1
 * Target Device: PIC18F452
 * Compiler: XC8
 * Summary: Defines the different bitfield masks used 
 * elsewhere in the FSM
*/

#ifndef FSM_VECTOR_MASKS_H
#define	FSM_VECTOR_MASKS_H

// Bit masks for the input vector
// bit11-15: Not Used
#define IN_WD_TIMER_DONE    (1u << 0)   // "Bad Sensor" Watchdog Timer has fired
#define IN_NC_TIMER_DONE    (1u << 1)   // "No Change away from Main Road" timer has fired
#define IN_MR_REQ           (1u << 2)   // Main Road Request
#define IN_SR_REQ           (1u << 3)   // Side Road Request (SR_REQ = !SR_LOOP_DONE && side_road_req)
#define IN_PC_REQ           (1u << 4)   // Pedestrian Waitlight/Pedestrian Request
#define IN_AMB_TIMER_DONE   (1u << 5)   // AMBER light Timer has fired
#define IN_RED_TIMER_DONE   (1u << 6)   // RED light Timer has fired
#define IN_WAIT_TIMER_DONE  (1u << 7)   // WAIT Timer fires
#define IN_SR_TIMER_DONE    (1u << 8)   // Side Road Timer (longer than RED timer, allows a faster transition to main road if MR_REQ=1)
#define IN_SLOW_TIMER_DONE  (1u << 9)   // "Sideroad Slow Change", i.e. no demand from Main Road
//#define IN_PC_LOOP_DONE     (1u << 10)  // Pedestrian Crossing done this loop?

// Useful macros to check input conditions
#define ALL_SET(v, m)   (((v) & (m) == (m))) // Are all the mask bits (m) set in the input vector (v)?
#define ANY_SET(v, m)   (((v) & (m)) != 0)   // Are ANY of the mask bits (m) set in the input vector (v)?
#define NONE_SET(v, m)  (((v) & (m)) == 0)   // Are NONE of the mask bits (m) set in the input vector (v)?

#endif	/* FSM_VECTOR_MASKS_H */

