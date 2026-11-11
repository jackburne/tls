# Code Plan

## File breakdown

### Main.c
Handles initial seutp and manages the FSM

### io.c & io.h
These files are used to define and manage the pic ports. They setup the ports and associated SFRs, as well as manage reading and writing to the different pins

### adc.h & adc.c
These files will handle the co-processing required condition the analog signals from the road sensors

### timer.h & timer.c
Has functions for setting up the different HW timers as we need them for the different states. Actual handling of the timers is performed by the ISRs in main.c


## Function Breakdown

### high priority ISR
This will exclusively handle the pedestrian crossing button and watchdog timer (i.e. how long since the last transition away from the main road).

### low prioriy ISR
This will handle the bulk of the interrupts, mostly the different timers that fire, and update their corresponding states for the FSM to interpret

## manage_lights
This function is in charge of changing the lights between the main road, side road and pedestrian crossing. It will only allow a single green crossing to be set at once, and sets off the timers for the transitions from G-A-R and R-AR-G etc.

