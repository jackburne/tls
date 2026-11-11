/*
 * File:   main.c
 * Author: jdb
 *
 * Created on 08 October 2026, 11:37
 */

#include "pic_configuration.h" // Contains all the pragma statements for pic configuration
#include <xc.h>
#include "io.h"

// ## Function declarations
void setup(void);


void main(void) {
    return;
}


// Initial setup on system boot
void setup(void) {
    configure_io();
    
}
