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
#define IN_WD_TIMER_DONE    (1u << 0)
#define IN_NC_TIMER_DONE    (1u << 1)
#define IN_MR_REQ           (1u << 2)
#define IN_SR_REQ           (1u << 3)
#define IN_PC_REQ           (1u << 4)
#define IN_AMB_TIMER_DONE   (1u << 5)
#define IN_RED_TIMER_DONE   (1u << 6)
#define IN_WAIT_TIMER_DONE  (1u << 7)
#define IN_SR_TIMER_DONE    (1u << 8)
#define IN_SR_LOOP_DONE     (1u << 9)
#define IN_PC_LOOP_DONE     (1u << 10)

#endif	/* FSM_VECTOR_MASKS_H */

