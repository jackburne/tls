# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 295 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v4.00/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2








# 1 "/opt/microchip/xc8/v4.00/pic/include/xc.h" 1 3
# 18 "/opt/microchip/xc8/v4.00/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/xc8debug.h" 1 3



# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/stdlib.h" 1 3



# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/musl_xc8.h" 1 3
# 5 "/opt/microchip/xc8/v4.00/pic/include/c99/stdlib.h" 2 3





# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/features.h" 1 3
# 11 "/opt/microchip/xc8/v4.00/pic/include/c99/stdlib.h" 2 3
# 21 "/opt/microchip/xc8/v4.00/pic/include/c99/stdlib.h" 3
# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 1 3
# 24 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "/opt/microchip/xc8/v4.00/pic/include/c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "/opt/microchip/xc8/v4.00/pic/include/c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "/opt/microchip/xc8/v4.00/pic/include/c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/xc8/v4.00/pic/include/xc.h" 2 3
# 1 "/opt/microchip/xc8/v4.00/pic/include/builtins.h" 1 3



# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/stdint.h" 1 3
# 26 "/opt/microchip/xc8/v4.00/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 1 3
# 133 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "/opt/microchip/xc8/v4.00/pic/include/c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "/opt/microchip/xc8/v4.00/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v4.00/pic/include/c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "/opt/microchip/xc8/v4.00/pic/include/c99/stdint.h" 2 3
# 5 "/opt/microchip/xc8/v4.00/pic/include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);

#pragma intrinsic(__nopf000)
extern void __nopf000(void);
#pragma intrinsic(__nopffff)
extern void __nopffff(void);
#pragma intrinsic(__nop0000)
extern void __nop0000(void);



#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "/opt/microchip/xc8/v4.00/pic/include/xc.h" 2 3








# 1 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 1 3



# 1 "/opt/microchip/xc8/v4.00/pic/include/xc.h" 1 3
# 5 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 2 3
# 1 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18_chip_select.h" 1 3
# 300 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18_chip_select.h" 3
# 1 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 1 3
# 36 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
    };
    struct {
        unsigned int AN0 :1;
        unsigned int AN1 :1;
        unsigned int AN2 :1;
        unsigned int AN3 :1;
        unsigned int :1;
        unsigned int AN4 :1;
        unsigned int OSC2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int VREFM :1;
        unsigned int VREFP :1;
        unsigned int T0CKI :1;
        unsigned int SS :1;
        unsigned int CLKO :1;
    };
    struct {
        unsigned int :5;
        unsigned int LVDIN :1;
    };
    struct {
        unsigned int ULPWUIN :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 181 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
    struct {
        unsigned int INT0 :1;
        unsigned int INT1 :1;
        unsigned int INT2 :1;
        unsigned int CCP2 :1;
        unsigned int :1;
        unsigned int PGM :1;
        unsigned int PGC :1;
        unsigned int PGD :1;
    };
    struct {
        unsigned int :3;
        unsigned int CCP2A :1;
    };
    struct {
        unsigned int :3;
        unsigned int CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 306 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
    struct {
        unsigned int T1OSO :1;
        unsigned int T1OSI :1;
        unsigned int :1;
        unsigned int SCK :1;
        unsigned int SDI :1;
        unsigned int SDO :1;
        unsigned int TX :1;
        unsigned int RX :1;
    };
    struct {
        unsigned int T1CKI :1;
        unsigned int CCP2 :1;
        unsigned int CCP1 :1;
        unsigned int SCL :1;
        unsigned int SDA :1;
        unsigned int :1;
        unsigned int CK :1;
        unsigned int DT :1;
    };
    struct {
        unsigned int :1;
        unsigned int PA2 :1;
        unsigned int PA1 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 473 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PORTD __attribute__((address(0xF83)));

__asm("PORTD equ 0F83h");


typedef union {
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
    struct {
        unsigned int PSP0 :1;
        unsigned int PSP1 :1;
        unsigned int PSP2 :1;
        unsigned int PSP3 :1;
        unsigned int PSP4 :1;
        unsigned int PSP5 :1;
        unsigned int PSP6 :1;
        unsigned int PSP7 :1;
    };
    struct {
        unsigned int :7;
        unsigned int SS2 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0xF83)));
# 594 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
    };
    struct {
        unsigned int AN5 :1;
        unsigned int AN6 :1;
        unsigned int AN7 :1;
    };
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int CS :1;
    };
    struct {
        unsigned int PD2 :1;
        unsigned int PC2 :1;
        unsigned int CCP10 :1;
    };
    struct {
        unsigned int RDE :1;
        unsigned int WRE :1;
        unsigned int PB2 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 706 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned int LATA0 :1;
        unsigned int LATA1 :1;
        unsigned int LATA2 :1;
        unsigned int LATA3 :1;
        unsigned int LATA4 :1;
        unsigned int LATA5 :1;
        unsigned int LATA6 :1;
    };
    struct {
        unsigned int LA0 :1;
        unsigned int LA1 :1;
        unsigned int LA2 :1;
        unsigned int LA3 :1;
        unsigned int LA4 :1;
        unsigned int LA5 :1;
        unsigned int LA6 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 806 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned int LATB0 :1;
        unsigned int LATB1 :1;
        unsigned int LATB2 :1;
        unsigned int LATB3 :1;
        unsigned int LATB4 :1;
        unsigned int LATB5 :1;
        unsigned int LATB6 :1;
        unsigned int LATB7 :1;
    };
    struct {
        unsigned int LB0 :1;
        unsigned int LB1 :1;
        unsigned int LB2 :1;
        unsigned int LB3 :1;
        unsigned int LB4 :1;
        unsigned int LB5 :1;
        unsigned int LB6 :1;
        unsigned int LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 918 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned int LATC0 :1;
        unsigned int LATC1 :1;
        unsigned int LATC2 :1;
        unsigned int LATC3 :1;
        unsigned int LATC4 :1;
        unsigned int LATC5 :1;
        unsigned int LATC6 :1;
        unsigned int LATC7 :1;
    };
    struct {
        unsigned int LC0 :1;
        unsigned int LC1 :1;
        unsigned int LC2 :1;
        unsigned int LC3 :1;
        unsigned int LC4 :1;
        unsigned int LC5 :1;
        unsigned int LC6 :1;
        unsigned int LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 1030 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char LATD __attribute__((address(0xF8C)));

__asm("LATD equ 0F8Ch");


typedef union {
    struct {
        unsigned int LATD0 :1;
        unsigned int LATD1 :1;
        unsigned int LATD2 :1;
        unsigned int LATD3 :1;
        unsigned int LATD4 :1;
        unsigned int LATD5 :1;
        unsigned int LATD6 :1;
        unsigned int LATD7 :1;
    };
    struct {
        unsigned int LD0 :1;
        unsigned int LD1 :1;
        unsigned int LD2 :1;
        unsigned int LD3 :1;
        unsigned int LD4 :1;
        unsigned int LD5 :1;
        unsigned int LD6 :1;
        unsigned int LD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0xF8C)));
# 1142 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char LATE __attribute__((address(0xF8D)));

__asm("LATE equ 0F8Dh");


typedef union {
    struct {
        unsigned int LATE0 :1;
        unsigned int LATE1 :1;
        unsigned int LATE2 :1;
    };
    struct {
        unsigned int LE0 :1;
        unsigned int LE1 :1;
        unsigned int LE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0xF8D)));
# 1194 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __attribute__((address(0xF92)));

__asm("DDRA equ 0F92h");


typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
    };
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 1297 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
    };
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
    };
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __attribute__((address(0xF92)));
# 1392 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __attribute__((address(0xF93)));

__asm("DDRB equ 0F93h");


typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
    struct {
        unsigned int :3;
        unsigned int CCP2 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 1516 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
    struct {
        unsigned int :3;
        unsigned int CCP2 :1;
    };
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __attribute__((address(0xF93)));
# 1632 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __attribute__((address(0xF94)));

__asm("DDRC equ 0F94h");


typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
    struct {
        unsigned int :1;
        unsigned int CCP2 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 1756 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
    struct {
        unsigned int :1;
        unsigned int CCP2 :1;
    };
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __attribute__((address(0xF94)));
# 1872 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TRISD __attribute__((address(0xF95)));

__asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __attribute__((address(0xF95)));

__asm("DDRD equ 0F95h");


typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0xF95)));
# 1987 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __attribute__((address(0xF95)));
# 2094 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TRISE __attribute__((address(0xF96)));

__asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __attribute__((address(0xF96)));

__asm("DDRE equ 0F96h");


typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
        unsigned int :1;
        unsigned int PSPMODE :1;
        unsigned int IBOV :1;
        unsigned int OBF :1;
        unsigned int IBF :1;
    };
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0xF96)));
# 2174 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
        unsigned int :1;
        unsigned int PSPMODE :1;
        unsigned int IBOV :1;
        unsigned int OBF :1;
        unsigned int IBF :1;
    };
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
    };
} DDREbits_t;
extern volatile DDREbits_t DDREbits __attribute__((address(0xF96)));
# 2246 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned int TMR1IE :1;
        unsigned int TMR2IE :1;
        unsigned int CCP1IE :1;
        unsigned int SSPIE :1;
        unsigned int TXIE :1;
        unsigned int RCIE :1;
        unsigned int ADIE :1;
        unsigned int PSPIE :1;
    };
    struct {
        unsigned int :4;
        unsigned int TX1IE :1;
        unsigned int RC1IE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 2323 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned int TMR1IF :1;
        unsigned int TMR2IF :1;
        unsigned int CCP1IF :1;
        unsigned int SSPIF :1;
        unsigned int TXIF :1;
        unsigned int RCIF :1;
        unsigned int ADIF :1;
        unsigned int PSPIF :1;
    };
    struct {
        unsigned int :4;
        unsigned int TX1IF :1;
        unsigned int RC1IF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 2400 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned int TMR1IP :1;
        unsigned int TMR2IP :1;
        unsigned int CCP1IP :1;
        unsigned int SSPIP :1;
        unsigned int TXIP :1;
        unsigned int RCIP :1;
        unsigned int ADIP :1;
        unsigned int PSPIP :1;
    };
    struct {
        unsigned int :4;
        unsigned int TX1IP :1;
        unsigned int RC1IP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 2477 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned int CCP2IE :1;
        unsigned int TMR3IE :1;
        unsigned int LVDIE :1;
        unsigned int BCLIE :1;
        unsigned int EEIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 2521 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned int CCP2IF :1;
        unsigned int TMR3IF :1;
        unsigned int LVDIF :1;
        unsigned int BCLIF :1;
        unsigned int EEIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 2565 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned int CCP2IP :1;
        unsigned int TMR3IP :1;
        unsigned int LVDIP :1;
        unsigned int BCLIP :1;
        unsigned int EEIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 2609 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xFA6)));

__asm("EECON1 equ 0FA6h");


typedef union {
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int WREN :1;
        unsigned int WRERR :1;
        unsigned int FREE :1;
        unsigned int :1;
        unsigned int CFGS :1;
        unsigned int EEPGD :1;
    };
    struct {
        unsigned int :6;
        unsigned int EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xFA6)));
# 2675 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xFA7)));

__asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __attribute__((address(0xFA8)));

__asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __attribute__((address(0xFA9)));

__asm("EEADR equ 0FA9h");




extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int RCD8 :1;
        unsigned int :5;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_RC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nRC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int :5;
        unsigned int SRENA :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 2812 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int RCD8 :1;
        unsigned int :5;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_RC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nRC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int :5;
        unsigned int SRENA :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 2920 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TXD8 :1;
        unsigned int :5;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_TX8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nTX8 :1;
    };
    struct {
        unsigned int TX9D1 :1;
        unsigned int TRMT1 :1;
        unsigned int BRGH1 :1;
        unsigned int :1;
        unsigned int SYNC1 :1;
        unsigned int TXEN1 :1;
        unsigned int TX91 :1;
        unsigned int CSRC1 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 3058 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TXD8 :1;
        unsigned int :5;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_TX8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nTX8 :1;
    };
    struct {
        unsigned int TX9D1 :1;
        unsigned int TRMT1 :1;
        unsigned int BRGH1 :1;
        unsigned int :1;
        unsigned int SYNC1 :1;
        unsigned int TXEN1 :1;
        unsigned int TX91 :1;
        unsigned int CSRC1 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 3188 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char T3CON __attribute__((address(0xFB1)));

__asm("T3CON equ 0FB1h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int NOT_T3SYNC :1;
    };
    struct {
        unsigned int TMR3ON :1;
        unsigned int TMR3CS :1;
        unsigned int nT3SYNC :1;
        unsigned int T3CCP1 :1;
        unsigned int T3CKPS :2;
        unsigned int T3CCP2 :1;
        unsigned int RD16 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3SYNC :1;
        unsigned int :1;
        unsigned int T3CKPS0 :1;
        unsigned int T3CKPS1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3INSYNC :1;
    };
    struct {
        unsigned int :3;
        unsigned int SOSCEN3 :1;
        unsigned int :3;
        unsigned int RD163 :1;
    };
    struct {
        unsigned int :7;
        unsigned int T3RD16 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0xFB1)));
# 3345 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0xFB2)));

__asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __attribute__((address(0xFB2)));

__asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __attribute__((address(0xFB3)));

__asm("TMR3H equ 0FB3h");




extern volatile unsigned char CCP2CON __attribute__((address(0xFBA)));

__asm("CCP2CON equ 0FBAh");


typedef union {
    struct {
        unsigned int CCP2M :4;
        unsigned int DC2B :2;
    };
    struct {
        unsigned int CCP2M0 :1;
        unsigned int CCP2M1 :1;
        unsigned int CCP2M2 :1;
        unsigned int CCP2M3 :1;
        unsigned int DC2B0 :1;
        unsigned int DC2B1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP2Y :1;
        unsigned int CCP2X :1;
    };
    struct {
        unsigned int :5;
        unsigned int DCCPX :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xFBA)));
# 3454 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xFBB)));

__asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __attribute__((address(0xFBB)));

__asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __attribute__((address(0xFBC)));

__asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __attribute__((address(0xFBD)));

__asm("CCP1CON equ 0FBDh");


typedef union {
    struct {
        unsigned int CCP1M :4;
        unsigned int DC1B :2;
    };
    struct {
        unsigned int CCP1M0 :1;
        unsigned int CCP1M1 :1;
        unsigned int CCP1M2 :1;
        unsigned int CCP1M3 :1;
        unsigned int DC1B0 :1;
        unsigned int DC1B1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP1Y :1;
        unsigned int CCP1X :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBD)));
# 3554 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBE)));

__asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBE)));

__asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __attribute__((address(0xFBF)));

__asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned int PCFG :4;
        unsigned int :2;
        unsigned int ADCS2 :1;
        unsigned int ADFM :1;
    };
    struct {
        unsigned int PCFG0 :1;
        unsigned int PCFG1 :1;
        unsigned int PCFG2 :1;
        unsigned int PCFG3 :1;
    };
    struct {
        unsigned int :3;
        unsigned int CHSN3 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 3643 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int GO_NOT_DONE :1;
    };
    struct {
        unsigned int ADON :1;
        unsigned int :1;
        unsigned int GO_nDONE :1;
        unsigned int CHS :3;
        unsigned int ADCS :2;
    };
    struct {
        unsigned int :2;
        unsigned int GO :1;
        unsigned int CHS0 :1;
        unsigned int CHS1 :1;
        unsigned int CHS2 :1;
        unsigned int ADCS0 :1;
        unsigned int ADCS1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_DONE :1;
    };
    struct {
        unsigned int :2;
        unsigned int nDONE :1;
    };
    struct {
        unsigned int :2;
        unsigned int DONE :1;
    };
    struct {
        unsigned int :2;
        unsigned int GO_DONE :1;
    };
    struct {
        unsigned int :7;
        unsigned int ADCAL :1;
    };
    struct {
        unsigned int :2;
        unsigned int GODONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 3784 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short ADRES __attribute__((address(0xFC3)));

__asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON2 __attribute__((address(0xFC5)));

__asm("SSPCON2 equ 0FC5h");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0xFC5)));
# 3867 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 3937 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int R_NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int D_NOT_A :1;
    };
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ :1;
        unsigned int I2C_START :1;
        unsigned int I2C_STOP :1;
        unsigned int I2C_DATA :1;
    };
    struct {
        unsigned int :2;
        unsigned int R :1;
        unsigned int :2;
        unsigned int D :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE :1;
        unsigned int :2;
        unsigned int DATA_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_WRITE :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :5;
        unsigned int I2C_DAT :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW :1;
        unsigned int START :1;
        unsigned int STOP :1;
        unsigned int DA :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_W :1;
        unsigned int :2;
        unsigned int NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 4194 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __attribute__((address(0xFCA)));

__asm("T2CON equ 0FCAh");


typedef union {
    struct {
        unsigned int T2CKPS :2;
        unsigned int TMR2ON :1;
        unsigned int TOUTPS :4;
    };
    struct {
        unsigned int T2CKPS0 :1;
        unsigned int T2CKPS1 :1;
        unsigned int :1;
        unsigned int TOUTPS0 :1;
        unsigned int TOUTPS1 :1;
        unsigned int TOUTPS2 :1;
        unsigned int TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFCA)));
# 4279 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFCB)));

__asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __attribute__((address(0xFCB)));

__asm("MEMCON equ 0FCBh");


typedef union {
    struct {
        unsigned int :7;
        unsigned int EBDIS :1;
    };
    struct {
        unsigned int :4;
        unsigned int WAIT0 :1;
    };
    struct {
        unsigned int :5;
        unsigned int WAIT1 :1;
    };
    struct {
        unsigned int WM0 :1;
    };
    struct {
        unsigned int :1;
        unsigned int WM1 :1;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFCB)));
# 4338 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int :7;
        unsigned int EBDIS :1;
    };
    struct {
        unsigned int :4;
        unsigned int WAIT0 :1;
    };
    struct {
        unsigned int :5;
        unsigned int WAIT1 :1;
    };
    struct {
        unsigned int WM0 :1;
    };
    struct {
        unsigned int :1;
        unsigned int WM1 :1;
    };
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __attribute__((address(0xFCB)));
# 4389 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFCC)));

__asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned int :2;
        unsigned int NOT_T1SYNC :1;
    };
    struct {
        unsigned int TMR1ON :1;
        unsigned int TMR1CS :1;
        unsigned int nT1SYNC :1;
        unsigned int T1OSCEN :1;
        unsigned int T1CKPS :2;
        unsigned int :1;
        unsigned int RD16 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1SYNC :1;
        unsigned int :1;
        unsigned int T1CKPS0 :1;
        unsigned int T1CKPS1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1INSYNC :1;
    };
    struct {
        unsigned int :3;
        unsigned int SOSCEN :1;
        unsigned int :3;
        unsigned int T1RD16 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 4503 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned int NOT_BOR :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_POR :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_PD :1;
    };
    struct {
        unsigned int :3;
        unsigned int NOT_TO :1;
    };
    struct {
        unsigned int :4;
        unsigned int NOT_RI :1;
    };
    struct {
        unsigned int nBOR :1;
        unsigned int nPOR :1;
        unsigned int nPD :1;
        unsigned int nTO :1;
        unsigned int nRI :1;
        unsigned int :2;
        unsigned int IPEN :1;
    };
    struct {
        unsigned int :7;
        unsigned int NOT_IPEN :1;
    };
    struct {
        unsigned int BOR :1;
        unsigned int POR :1;
        unsigned int PD :1;
        unsigned int TO :1;
        unsigned int RI :1;
        unsigned int :2;
        unsigned int nIPEN :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 4667 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned int SWDTEN :1;
    };
    struct {
        unsigned int SWDTE :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 4695 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char LVDCON __attribute__((address(0xFD2)));

__asm("LVDCON equ 0FD2h");


typedef union {
    struct {
        unsigned int LVDL :4;
        unsigned int LVDEN :1;
        unsigned int IRVST :1;
    };
    struct {
        unsigned int LVDL0 :1;
        unsigned int LVDL1 :1;
        unsigned int LVDL2 :1;
        unsigned int LVDL3 :1;
    };
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __attribute__((address(0xFD2)));
# 4753 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned int SCS :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 4773 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned int T0PS :3;
        unsigned int PSA :1;
        unsigned int T0SE :1;
        unsigned int T0CS :1;
        unsigned int T08BIT :1;
        unsigned int TMR0ON :1;
    };
    struct {
        unsigned int T0PS0 :1;
        unsigned int T0PS1 :1;
        unsigned int T0PS2 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 4843 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned int C :1;
        unsigned int DC :1;
        unsigned int Z :1;
        unsigned int OV :1;
        unsigned int N :1;
    };
    struct {
        unsigned int CARRY :1;
        unsigned int :1;
        unsigned int ZERO :1;
        unsigned int OVERFLOW :1;
        unsigned int NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 4935 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");
# 5066 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned int INT1IF :1;
        unsigned int INT2IF :1;
        unsigned int :1;
        unsigned int INT1IE :1;
        unsigned int INT2IE :1;
        unsigned int :1;
        unsigned int INT1IP :1;
        unsigned int INT2IP :1;
    };
    struct {
        unsigned int INT1F :1;
        unsigned int INT2F :1;
        unsigned int :1;
        unsigned int INT1E :1;
        unsigned int INT2E :1;
        unsigned int :1;
        unsigned int INT1P :1;
        unsigned int INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 5214 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned int :7;
        unsigned int NOT_RBPU :1;
    };
    struct {
        unsigned int RBIP :1;
        unsigned int :1;
        unsigned int TMR0IP :1;
        unsigned int :1;
        unsigned int INTEDG2 :1;
        unsigned int INTEDG1 :1;
        unsigned int INTEDG0 :1;
        unsigned int nRBPU :1;
    };
    struct {
        unsigned int :2;
        unsigned int T0IP :1;
        unsigned int :4;
        unsigned int RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 5291 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


extern volatile unsigned char INTCON1 __attribute__((address(0xFF2)));

__asm("INTCON1 equ 0FF2h");


typedef union {
    struct {
        unsigned int RBIF :1;
        unsigned int INT0IF :1;
        unsigned int TMR0IF :1;
        unsigned int RBIE :1;
        unsigned int INT0IE :1;
        unsigned int TMR0IE :1;
        unsigned int PEIE_GIEL :1;
        unsigned int GIE_GIEH :1;
    };
    struct {
        unsigned int :1;
        unsigned int INT0F :1;
        unsigned int T0IF :1;
        unsigned int :1;
        unsigned int INT0E :1;
        unsigned int T0IE :1;
        unsigned int PEIE :1;
        unsigned int GIE :1;
    };
    struct {
        unsigned int :6;
        unsigned int GIEL :1;
        unsigned int GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 5411 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
typedef union {
    struct {
        unsigned int RBIF :1;
        unsigned int INT0IF :1;
        unsigned int TMR0IF :1;
        unsigned int RBIE :1;
        unsigned int INT0IE :1;
        unsigned int TMR0IE :1;
        unsigned int PEIE_GIEL :1;
        unsigned int GIE_GIEH :1;
    };
    struct {
        unsigned int :1;
        unsigned int INT0F :1;
        unsigned int T0IF :1;
        unsigned int :1;
        unsigned int INT0E :1;
        unsigned int T0IE :1;
        unsigned int PEIE :1;
        unsigned int GIE :1;
    };
    struct {
        unsigned int :6;
        unsigned int GIEL :1;
        unsigned int GIEH :1;
    };
} INTCON1bits_t;
extern volatile INTCON1bits_t INTCON1bits __attribute__((address(0xFF2)));
# 5523 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");





extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");





extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned int STKPTR :5;
        unsigned int :1;
        unsigned int STKUNF :1;
        unsigned int STKFUL :1;
    };
    struct {
        unsigned int STKPTR0 :1;
        unsigned int STKPTR1 :1;
        unsigned int STKPTR2 :1;
        unsigned int STKPTR3 :1;
        unsigned int STKPTR4 :1;
        unsigned int :2;
        unsigned int STKOVF :1;
    };
    struct {
        unsigned int SP0 :1;
        unsigned int SP1 :1;
        unsigned int SP2 :1;
        unsigned int SP3 :1;
        unsigned int SP4 :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 5723 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");





extern const unsigned char _CONFIGs[14] __attribute__((address(0x300000)));

extern const unsigned char _CONFIG1H __attribute__((address(0x300001)));

typedef union {
    struct {
        unsigned int OSC :3;
        unsigned int :2;
        unsigned int OSCS :1;
    };
} _CONFIG1Hbits_t;
extern const _CONFIG1Hbits_t _CONFIG1Hbits __attribute__((address(0x300001)));


extern const unsigned char _CONFIG2L __attribute__((address(0x300002)));

typedef union {
    struct {
        unsigned int PWRT :1;
        unsigned int BOR :1;
        unsigned int BORV :2;
    };
} _CONFIG2Lbits_t;
extern const _CONFIG2Lbits_t _CONFIG2Lbits __attribute__((address(0x300002)));


extern const unsigned char _CONFIG2H __attribute__((address(0x300003)));

typedef union {
    struct {
        unsigned int WDT :1;
        unsigned int WDTPS :3;
    };
} _CONFIG2Hbits_t;
extern const _CONFIG2Hbits_t _CONFIG2Hbits __attribute__((address(0x300003)));


extern const unsigned char _CONFIG3H __attribute__((address(0x300005)));

typedef union {
    struct {
        unsigned int CCP2MUX :1;
    };
} _CONFIG3Hbits_t;
extern const _CONFIG3Hbits_t _CONFIG3Hbits __attribute__((address(0x300005)));


extern const unsigned char _CONFIG4L __attribute__((address(0x300006)));

typedef union {
    struct {
        unsigned int STVR :1;
        unsigned int :1;
        unsigned int LVP :1;
        unsigned int :4;
        unsigned int _DEBUG :1;
    };
} _CONFIG4Lbits_t;
extern const _CONFIG4Lbits_t _CONFIG4Lbits __attribute__((address(0x300006)));


extern const unsigned char _CONFIG5L __attribute__((address(0x300008)));

typedef union {
    struct {
        unsigned int CP0 :1;
        unsigned int CP1 :1;
        unsigned int CP2 :1;
        unsigned int CP3 :1;
    };
} _CONFIG5Lbits_t;
extern const _CONFIG5Lbits_t _CONFIG5Lbits __attribute__((address(0x300008)));


extern const unsigned char _CONFIG5H __attribute__((address(0x300009)));

typedef union {
    struct {
        unsigned int :6;
        unsigned int CPB :1;
        unsigned int CPD :1;
    };
} _CONFIG5Hbits_t;
extern const _CONFIG5Hbits_t _CONFIG5Hbits __attribute__((address(0x300009)));


extern const unsigned char _CONFIG6L __attribute__((address(0x30000A)));

typedef union {
    struct {
        unsigned int WRT0 :1;
        unsigned int WRT1 :1;
        unsigned int WRT2 :1;
        unsigned int WRT3 :1;
    };
} _CONFIG6Lbits_t;
extern const _CONFIG6Lbits_t _CONFIG6Lbits __attribute__((address(0x30000A)));


extern const unsigned char _CONFIG6H __attribute__((address(0x30000B)));

typedef union {
    struct {
        unsigned int :5;
        unsigned int WRTC :1;
        unsigned int WRTB :1;
        unsigned int WRTD :1;
    };
} _CONFIG6Hbits_t;
extern const _CONFIG6Hbits_t _CONFIG6Hbits __attribute__((address(0x30000B)));


extern const unsigned char _CONFIG7L __attribute__((address(0x30000C)));

typedef union {
    struct {
        unsigned int EBTR0 :1;
        unsigned int EBTR1 :1;
        unsigned int EBTR2 :1;
        unsigned int EBTR3 :1;
    };
} _CONFIG7Lbits_t;
extern const _CONFIG7Lbits_t _CONFIG7Lbits __attribute__((address(0x30000C)));


extern const unsigned char _CONFIG7H __attribute__((address(0x30000D)));

typedef union {
    struct {
        unsigned int :6;
        unsigned int EBTRB :1;
    };
} _CONFIG7Hbits_t;
extern const _CONFIG7Hbits_t _CONFIG7Hbits __attribute__((address(0x30000D)));

extern const unsigned char _IDLOCs[8] __attribute__((address(0x200000)));

extern const unsigned char _IDLOC0 __attribute__((address(0x200000)));


extern const unsigned char _IDLOC1 __attribute__((address(0x200001)));


extern const unsigned char _IDLOC2 __attribute__((address(0x200002)));


extern const unsigned char _IDLOC3 __attribute__((address(0x200003)));


extern const unsigned char _IDLOC4 __attribute__((address(0x200004)));


extern const unsigned char _IDLOC5 __attribute__((address(0x200005)));


extern const unsigned char _IDLOC6 __attribute__((address(0x200006)));


extern const unsigned char _IDLOC7 __attribute__((address(0x200007)));




extern const unsigned short _DEVID __attribute__((address(0x3FFFFE)));
# 5930 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/proc/pic18f452.h" 3
extern volatile __bit ACKDT __attribute__((address(0x7E2D)));


extern volatile __bit ACKEN __attribute__((address(0x7E2C)));


extern volatile __bit ACKSTAT __attribute__((address(0x7E2E)));


extern volatile __bit ADCAL __attribute__((address(0x7E17)));


extern volatile __bit ADCS0 __attribute__((address(0x7E16)));


extern volatile __bit ADCS1 __attribute__((address(0x7E17)));


extern volatile __bit ADCS2 __attribute__((address(0x7E0E)));


extern volatile __bit ADDEN __attribute__((address(0x7D5B)));


extern volatile __bit ADFM __attribute__((address(0x7E0F)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit AN0 __attribute__((address(0x7C00)));


extern volatile __bit AN1 __attribute__((address(0x7C01)));


extern volatile __bit AN2 __attribute__((address(0x7C02)));


extern volatile __bit AN3 __attribute__((address(0x7C03)));


extern volatile __bit AN4 __attribute__((address(0x7C05)));


extern volatile __bit AN5 __attribute__((address(0x7C20)));


extern volatile __bit AN6 __attribute__((address(0x7C21)));


extern volatile __bit AN7 __attribute__((address(0x7C22)));


extern volatile __bit BCLIE __attribute__((address(0x7D03)));


extern volatile __bit BCLIF __attribute__((address(0x7D0B)));


extern volatile __bit BCLIP __attribute__((address(0x7D13)));


extern volatile __bit BF __attribute__((address(0x7E38)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRGH __attribute__((address(0x7D62)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCP1 __attribute__((address(0x7C12)));


extern volatile __bit CCP10 __attribute__((address(0x7C22)));


extern volatile __bit CCP1IE __attribute__((address(0x7CEA)));


extern volatile __bit CCP1IF __attribute__((address(0x7CF2)));


extern volatile __bit CCP1IP __attribute__((address(0x7CFA)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DE8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DE9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DEA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DEB)));


extern volatile __bit CCP1X __attribute__((address(0x7DED)));


extern volatile __bit CCP1Y __attribute__((address(0x7DEC)));


extern volatile __bit CCP2A __attribute__((address(0x7C0B)));


extern volatile __bit CCP2IE __attribute__((address(0x7D00)));


extern volatile __bit CCP2IF __attribute__((address(0x7D08)));


extern volatile __bit CCP2IP __attribute__((address(0x7D10)));


extern volatile __bit CCP2M0 __attribute__((address(0x7DD0)));


extern volatile __bit CCP2M1 __attribute__((address(0x7DD1)));


extern volatile __bit CCP2M2 __attribute__((address(0x7DD2)));


extern volatile __bit CCP2M3 __attribute__((address(0x7DD3)));


extern volatile __bit CCP2X __attribute__((address(0x7DD5)));


extern volatile __bit CCP2Y __attribute__((address(0x7DD4)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CFGS __attribute__((address(0x7D36)));


extern volatile __bit CHS0 __attribute__((address(0x7E13)));


extern volatile __bit CHS1 __attribute__((address(0x7E14)));


extern volatile __bit CHS2 __attribute__((address(0x7E15)));


extern volatile __bit CHSN3 __attribute__((address(0x7E0B)));


extern volatile __bit CK __attribute__((address(0x7C16)));


extern volatile __bit CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKP __attribute__((address(0x7E34)));


extern volatile __bit CLKO __attribute__((address(0x7C06)));


extern volatile __bit CREN __attribute__((address(0x7D5C)));


extern volatile __bit CS __attribute__((address(0x7C22)));


extern volatile __bit CSRC __attribute__((address(0x7D67)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DEC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DED)));


extern volatile __bit DC2B0 __attribute__((address(0x7DD4)));


extern volatile __bit DC2B1 __attribute__((address(0x7DD5)));


extern volatile __bit DCCPX __attribute__((address(0x7DD5)));


extern volatile __bit DONE __attribute__((address(0x7E12)));


extern volatile __bit DT __attribute__((address(0x7C17)));


extern volatile __bit D_A __attribute__((address(0x7E3D)));


extern volatile __bit D_NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit D_nA __attribute__((address(0x7E3D)));


extern volatile __bit EBDIS __attribute__((address(0x7E5F)));


extern volatile __bit EEFS __attribute__((address(0x7D36)));


extern volatile __bit EEIE __attribute__((address(0x7D04)));


extern volatile __bit EEIF __attribute__((address(0x7D0C)));


extern volatile __bit EEIP __attribute__((address(0x7D14)));


extern volatile __bit EEPGD __attribute__((address(0x7D37)));


extern volatile __bit FERR __attribute__((address(0x7D5A)));


extern volatile __bit FREE __attribute__((address(0x7D34)));


extern volatile __bit GCEN __attribute__((address(0x7E2F)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E12)));


extern volatile __bit GODONE __attribute__((address(0x7E12)));


extern volatile __bit GO_DONE __attribute__((address(0x7E12)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E12)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E12)));


extern volatile __bit I2C_DAT __attribute__((address(0x7E3D)));


extern volatile __bit I2C_DATA __attribute__((address(0x7E3D)));


extern volatile __bit I2C_READ __attribute__((address(0x7E3A)));


extern volatile __bit I2C_START __attribute__((address(0x7E3B)));


extern volatile __bit I2C_STOP __attribute__((address(0x7E3C)));


extern volatile __bit IBF __attribute__((address(0x7CB7)));


extern volatile __bit IBOV __attribute__((address(0x7CB5)));


extern volatile __bit INT0 __attribute__((address(0x7C08)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1 __attribute__((address(0x7C09)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2 __attribute__((address(0x7C0A)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRVST __attribute__((address(0x7E95)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA4 __attribute__((address(0x7C4C)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA4 __attribute__((address(0x7C4C)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC3 __attribute__((address(0x7C5B)));


extern volatile __bit LATC4 __attribute__((address(0x7C5C)));


extern volatile __bit LATC5 __attribute__((address(0x7C5D)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LATD0 __attribute__((address(0x7C60)));


extern volatile __bit LATD1 __attribute__((address(0x7C61)));


extern volatile __bit LATD2 __attribute__((address(0x7C62)));


extern volatile __bit LATD3 __attribute__((address(0x7C63)));


extern volatile __bit LATD4 __attribute__((address(0x7C64)));


extern volatile __bit LATD5 __attribute__((address(0x7C65)));


extern volatile __bit LATD6 __attribute__((address(0x7C66)));


extern volatile __bit LATD7 __attribute__((address(0x7C67)));


extern volatile __bit LATE0 __attribute__((address(0x7C68)));


extern volatile __bit LATE1 __attribute__((address(0x7C69)));


extern volatile __bit LATE2 __attribute__((address(0x7C6A)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC3 __attribute__((address(0x7C5B)));


extern volatile __bit LC4 __attribute__((address(0x7C5C)));


extern volatile __bit LC5 __attribute__((address(0x7C5D)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LD0 __attribute__((address(0x7C60)));


extern volatile __bit LD1 __attribute__((address(0x7C61)));


extern volatile __bit LD2 __attribute__((address(0x7C62)));


extern volatile __bit LD3 __attribute__((address(0x7C63)));


extern volatile __bit LD4 __attribute__((address(0x7C64)));


extern volatile __bit LD5 __attribute__((address(0x7C65)));


extern volatile __bit LD6 __attribute__((address(0x7C66)));


extern volatile __bit LD7 __attribute__((address(0x7C67)));


extern volatile __bit LE0 __attribute__((address(0x7C68)));


extern volatile __bit LE1 __attribute__((address(0x7C69)));


extern volatile __bit LE2 __attribute__((address(0x7C6A)));


extern volatile __bit LVDEN __attribute__((address(0x7E94)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit LVDL0 __attribute__((address(0x7E90)));


extern volatile __bit LVDL1 __attribute__((address(0x7E91)));


extern volatile __bit LVDL2 __attribute__((address(0x7E92)));


extern volatile __bit LVDL3 __attribute__((address(0x7E93)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E12)));


extern volatile __bit NOT_IPEN __attribute__((address(0x7E87)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RC8 __attribute__((address(0x7D5E)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_TX8 __attribute__((address(0x7D66)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit OBF __attribute__((address(0x7CB6)));


extern volatile __bit OERR __attribute__((address(0x7D59)));


extern volatile __bit OSC2 __attribute__((address(0x7C06)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PB2 __attribute__((address(0x7C22)));


extern volatile __bit PC2 __attribute__((address(0x7C21)));


extern volatile __bit PCFG0 __attribute__((address(0x7E08)));


extern volatile __bit PCFG1 __attribute__((address(0x7E09)));


extern volatile __bit PCFG2 __attribute__((address(0x7E0A)));


extern volatile __bit PCFG3 __attribute__((address(0x7E0B)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PD2 __attribute__((address(0x7C20)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit PEN __attribute__((address(0x7E2A)));


extern volatile __bit PGC __attribute__((address(0x7C0E)));


extern volatile __bit PGD __attribute__((address(0x7C0F)));


extern volatile __bit PGM __attribute__((address(0x7C0D)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PSP0 __attribute__((address(0x7C18)));


extern volatile __bit PSP1 __attribute__((address(0x7C19)));


extern volatile __bit PSP2 __attribute__((address(0x7C1A)));


extern volatile __bit PSP3 __attribute__((address(0x7C1B)));


extern volatile __bit PSP4 __attribute__((address(0x7C1C)));


extern volatile __bit PSP5 __attribute__((address(0x7C1D)));


extern volatile __bit PSP6 __attribute__((address(0x7C1E)));


extern volatile __bit PSP7 __attribute__((address(0x7C1F)));


extern volatile __bit PSPIE __attribute__((address(0x7CEF)));


extern volatile __bit PSPIF __attribute__((address(0x7CF7)));


extern volatile __bit PSPIP __attribute__((address(0x7CFF)));


extern volatile __bit PSPMODE __attribute__((address(0x7CB4)));


extern volatile __bit __attribute__((__deprecated__)) RA0 __attribute__((address(0x7C00)));


extern volatile __bit __attribute__((__deprecated__)) RA1 __attribute__((address(0x7C01)));


extern volatile __bit __attribute__((__deprecated__)) RA2 __attribute__((address(0x7C02)));


extern volatile __bit __attribute__((__deprecated__)) RA3 __attribute__((address(0x7C03)));


extern volatile __bit __attribute__((__deprecated__)) RA4 __attribute__((address(0x7C04)));


extern volatile __bit __attribute__((__deprecated__)) RA5 __attribute__((address(0x7C05)));


extern volatile __bit __attribute__((__deprecated__)) RA6 __attribute__((address(0x7C06)));


extern volatile __bit __attribute__((__deprecated__)) RB0 __attribute__((address(0x7C08)));


extern volatile __bit __attribute__((__deprecated__)) RB1 __attribute__((address(0x7C09)));


extern volatile __bit __attribute__((__deprecated__)) RB2 __attribute__((address(0x7C0A)));


extern volatile __bit __attribute__((__deprecated__)) RB3 __attribute__((address(0x7C0B)));


extern volatile __bit __attribute__((__deprecated__)) RB4 __attribute__((address(0x7C0C)));


extern volatile __bit __attribute__((__deprecated__)) RB5 __attribute__((address(0x7C0D)));


extern volatile __bit __attribute__((__deprecated__)) RB6 __attribute__((address(0x7C0E)));


extern volatile __bit __attribute__((__deprecated__)) RB7 __attribute__((address(0x7C0F)));


extern volatile __bit RBIE __attribute__((address(0x7F93)));


extern volatile __bit RBIF __attribute__((address(0x7F90)));


extern volatile __bit RBIP __attribute__((address(0x7F88)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit __attribute__((__deprecated__)) RC0 __attribute__((address(0x7C10)));


extern volatile __bit __attribute__((__deprecated__)) RC1 __attribute__((address(0x7C11)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RC2 __attribute__((address(0x7C12)));


extern volatile __bit __attribute__((__deprecated__)) RC3 __attribute__((address(0x7C13)));


extern volatile __bit __attribute__((__deprecated__)) RC4 __attribute__((address(0x7C14)));


extern volatile __bit __attribute__((__deprecated__)) RC5 __attribute__((address(0x7C15)));


extern volatile __bit __attribute__((__deprecated__)) RC6 __attribute__((address(0x7C16)));


extern volatile __bit __attribute__((__deprecated__)) RC7 __attribute__((address(0x7C17)));


extern volatile __bit RC8_9 __attribute__((address(0x7D5E)));


extern volatile __bit RC9 __attribute__((address(0x7D5E)));


extern volatile __bit RCD8 __attribute__((address(0x7D58)));


extern volatile __bit RCEN __attribute__((address(0x7E2B)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RD __attribute__((address(0x7D30)));


extern volatile __bit __attribute__((__deprecated__)) RD0 __attribute__((address(0x7C18)));


extern volatile __bit __attribute__((__deprecated__)) RD1 __attribute__((address(0x7C19)));


extern volatile __bit __attribute__((__deprecated__)) RD16 __attribute__((address(0x7E6F)));


extern volatile __bit RD163 __attribute__((address(0x7D8F)));


extern volatile __bit __attribute__((__deprecated__)) RD2 __attribute__((address(0x7C1A)));


extern volatile __bit __attribute__((__deprecated__)) RD3 __attribute__((address(0x7C1B)));


extern volatile __bit __attribute__((__deprecated__)) RD4 __attribute__((address(0x7C1C)));


extern volatile __bit __attribute__((__deprecated__)) RD5 __attribute__((address(0x7C1D)));


extern volatile __bit __attribute__((__deprecated__)) RD6 __attribute__((address(0x7C1E)));


extern volatile __bit __attribute__((__deprecated__)) RD7 __attribute__((address(0x7C1F)));


extern volatile __bit RDE __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE0 __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE1 __attribute__((address(0x7C21)));


extern volatile __bit __attribute__((__deprecated__)) RE2 __attribute__((address(0x7C22)));


extern volatile __bit READ_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit RSEN __attribute__((address(0x7E29)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RX __attribute__((address(0x7C17)));


extern volatile __bit RX9 __attribute__((address(0x7D5E)));


extern volatile __bit RX9D __attribute__((address(0x7D58)));


extern volatile __bit R_NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit R_W __attribute__((address(0x7E3A)));


extern volatile __bit R_nW __attribute__((address(0x7E3A)));


extern volatile __bit SCK __attribute__((address(0x7C13)));


extern volatile __bit SCL __attribute__((address(0x7C13)));


extern volatile __bit SCS __attribute__((address(0x7E98)));


extern volatile __bit SDA __attribute__((address(0x7C14)));


extern volatile __bit SDI __attribute__((address(0x7C14)));


extern volatile __bit SDO __attribute__((address(0x7C15)));


extern volatile __bit SEN __attribute__((address(0x7E28)));


extern volatile __bit SMP __attribute__((address(0x7E3F)));


extern volatile __bit SOSCEN __attribute__((address(0x7E6B)));


extern volatile __bit SOSCEN3 __attribute__((address(0x7D8B)));


extern volatile __bit SP0 __attribute__((address(0x7FE0)));


extern volatile __bit SP1 __attribute__((address(0x7FE1)));


extern volatile __bit SP2 __attribute__((address(0x7FE2)));


extern volatile __bit SP3 __attribute__((address(0x7FE3)));


extern volatile __bit SP4 __attribute__((address(0x7FE4)));


extern volatile __bit SPEN __attribute__((address(0x7D5F)));


extern volatile __bit SREN __attribute__((address(0x7D5D)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SS __attribute__((address(0x7C05)));


extern volatile __bit SS2 __attribute__((address(0x7C1F)));


extern volatile __bit SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPOV __attribute__((address(0x7E36)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKPTR0 __attribute__((address(0x7FE0)));


extern volatile __bit STKPTR1 __attribute__((address(0x7FE1)));


extern volatile __bit STKPTR2 __attribute__((address(0x7FE2)));


extern volatile __bit STKPTR3 __attribute__((address(0x7FE3)));


extern volatile __bit STKPTR4 __attribute__((address(0x7FE4)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit SWDTE __attribute__((address(0x7E88)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit SYNC __attribute__((address(0x7D64)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit T08BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CKI __attribute__((address(0x7C04)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0IP __attribute__((address(0x7F8A)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T1CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1INSYNC __attribute__((address(0x7E6A)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1OSI __attribute__((address(0x7C11)));


extern volatile __bit T1OSO __attribute__((address(0x7C10)));


extern volatile __bit T1RD16 __attribute__((address(0x7E6F)));


extern volatile __bit T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7E50)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7E51)));


extern volatile __bit T3CCP1 __attribute__((address(0x7D8B)));


extern volatile __bit T3CCP2 __attribute__((address(0x7D8E)));


extern volatile __bit T3CKPS0 __attribute__((address(0x7D8C)));


extern volatile __bit T3CKPS1 __attribute__((address(0x7D8D)));


extern volatile __bit T3INSYNC __attribute__((address(0x7D8A)));


extern volatile __bit T3RD16 __attribute__((address(0x7D8F)));


extern volatile __bit T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS __attribute__((address(0x7E69)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2ON __attribute__((address(0x7E52)));


extern volatile __bit TMR3CS __attribute__((address(0x7D89)));


extern volatile __bit TMR3IE __attribute__((address(0x7D01)));


extern volatile __bit TMR3IF __attribute__((address(0x7D09)));


extern volatile __bit TMR3IP __attribute__((address(0x7D11)));


extern volatile __bit TMR3ON __attribute__((address(0x7D88)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TOUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit TOUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit TOUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit TOUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA4 __attribute__((address(0x7C94)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC3 __attribute__((address(0x7CA3)));


extern volatile __bit TRISC4 __attribute__((address(0x7CA4)));


extern volatile __bit TRISC5 __attribute__((address(0x7CA5)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRISD0 __attribute__((address(0x7CA8)));


extern volatile __bit TRISD1 __attribute__((address(0x7CA9)));


extern volatile __bit TRISD2 __attribute__((address(0x7CAA)));


extern volatile __bit TRISD3 __attribute__((address(0x7CAB)));


extern volatile __bit TRISD4 __attribute__((address(0x7CAC)));


extern volatile __bit TRISD5 __attribute__((address(0x7CAD)));


extern volatile __bit TRISD6 __attribute__((address(0x7CAE)));


extern volatile __bit TRISD7 __attribute__((address(0x7CAF)));


extern volatile __bit TRISE0 __attribute__((address(0x7CB0)));


extern volatile __bit TRISE1 __attribute__((address(0x7CB1)));


extern volatile __bit TRISE2 __attribute__((address(0x7CB2)));


extern volatile __bit TRMT __attribute__((address(0x7D61)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TX __attribute__((address(0x7C16)));


extern volatile __bit TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX8_9 __attribute__((address(0x7D66)));


extern volatile __bit TX9 __attribute__((address(0x7D66)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX9D __attribute__((address(0x7D60)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TXD8 __attribute__((address(0x7D60)));


extern volatile __bit TXEN __attribute__((address(0x7D65)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit UA __attribute__((address(0x7E39)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit VREFM __attribute__((address(0x7C02)));


extern volatile __bit VREFP __attribute__((address(0x7C03)));


extern volatile __bit WAIT0 __attribute__((address(0x7E5C)));


extern volatile __bit WAIT1 __attribute__((address(0x7E5D)));


extern volatile __bit WCOL __attribute__((address(0x7E37)));


extern volatile __bit WM0 __attribute__((address(0x7E58)));


extern volatile __bit WM1 __attribute__((address(0x7E59)));


extern volatile __bit __attribute__((__deprecated__)) WR __attribute__((address(0x7D31)));


extern volatile __bit WRE __attribute__((address(0x7C21)));


extern volatile __bit WREN __attribute__((address(0x7D32)));


extern volatile __bit WRERR __attribute__((address(0x7D33)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA __attribute__((address(0x7E3D)));


extern volatile __bit nADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nDONE __attribute__((address(0x7E12)));


extern volatile __bit nIPEN __attribute__((address(0x7E87)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRC8 __attribute__((address(0x7D5E)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nTX8 __attribute__((address(0x7D66)));


extern volatile __bit nW __attribute__((address(0x7E3A)));


extern volatile __bit nWRITE __attribute__((address(0x7E3A)));
# 301 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18_chip_select.h" 2 3
# 6 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 2 3
# 15 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char * a, unsigned int b, __far unsigned char * c);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);






# 1 "/opt/microchip/xc8/v4.00/pic/include/errata.h" 1 3
# 24 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 2 3
# 141 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 177 "/home/jdb/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8/pic/include/pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 34 "/opt/microchip/xc8/v4.00/pic/include/xc.h" 2 3
# 10 "main.c" 2

void main(void) {
    return;
}
