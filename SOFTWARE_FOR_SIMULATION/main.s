subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	16F1829
include "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc\16f1829.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 52 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INDF0 equ 00h ;# 
# 72 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INDF1 equ 01h ;# 
# 92 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCL equ 02h ;# 
# 112 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STATUS equ 03h ;# 
# 175 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0L equ 04h ;# 
# 195 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0H equ 05h ;# 
# 219 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1L equ 06h ;# 
# 239 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1H equ 07h ;# 
# 259 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BSR equ 08h ;# 
# 311 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WREG equ 09h ;# 
# 331 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCLATH equ 0Ah ;# 
# 351 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INTCON equ 0Bh ;# 
# 429 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTA equ 0Ch ;# 
# 479 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTB equ 0Dh ;# 
# 518 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTC equ 0Eh ;# 
# 580 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR1 equ 011h ;# 
# 642 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR2 equ 012h ;# 
# 693 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR3 equ 013h ;# 
# 733 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR4 equ 014h ;# 
# 759 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR0 equ 015h ;# 
# 779 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1 equ 016h ;# 
# 786 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1L equ 016h ;# 
# 806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1H equ 017h ;# 
# 826 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T1CON equ 018h ;# 
# 898 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T1GCON equ 019h ;# 
# 968 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR2 equ 01Ah ;# 
# 988 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR2 equ 01Bh ;# 
# 1008 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T2CON equ 01Ch ;# 
# 1079 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CPSCON0 equ 01Eh ;# 
# 1139 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CPSCON1 equ 01Fh ;# 
# 1185 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISA equ 08Ch ;# 
# 1235 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISB equ 08Dh ;# 
# 1274 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISC equ 08Eh ;# 
# 1336 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE1 equ 091h ;# 
# 1398 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE2 equ 092h ;# 
# 1449 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE3 equ 093h ;# 
# 1489 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE4 equ 094h ;# 
# 1515 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OPTION_REG equ 095h ;# 
# 1598 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCON equ 096h ;# 
# 1649 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WDTCON equ 097h ;# 
# 1708 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCTUNE equ 098h ;# 
# 1766 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCCON equ 099h ;# 
# 1838 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCSTAT equ 09Ah ;# 
# 1900 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRES equ 09Bh ;# 
# 1907 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRESL equ 09Bh ;# 
# 1927 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRESH equ 09Ch ;# 
# 1947 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADCON0 equ 09Dh ;# 
# 2027 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADCON1 equ 09Eh ;# 
# 2099 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATA equ 010Ch ;# 
# 2144 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATB equ 010Dh ;# 
# 2183 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATC equ 010Eh ;# 
# 2245 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM1CON0 equ 0111h ;# 
# 2302 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM1CON1 equ 0112h ;# 
# 2368 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM2CON0 equ 0113h ;# 
# 2425 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM2CON1 equ 0114h ;# 
# 2491 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CMOUT equ 0115h ;# 
# 2517 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BORCON equ 0116h ;# 
# 2544 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FVRCON equ 0117h ;# 
# 2620 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
DACCON0 equ 0118h ;# 
# 2681 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
DACCON1 equ 0119h ;# 
# 2733 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SRCON0 equ 011Ah ;# 
# 2804 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SRCON1 equ 011Bh ;# 
# 2866 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
APFCON0 equ 011Dh ;# 
# 2900 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
APFCON1 equ 011Eh ;# 
# 2950 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELA equ 018Ch ;# 
# 2997 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELB equ 018Dh ;# 
# 3033 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELC equ 018Eh ;# 
# 3092 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADR equ 0191h ;# 
# 3099 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADRL equ 0191h ;# 
# 3119 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADRH equ 0192h ;# 
# 3139 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDAT equ 0193h ;# 
# 3146 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATL equ 0193h ;# 
# 3151 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATA equ 0193h ;# 
# 3184 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATH equ 0194h ;# 
# 3204 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EECON1 equ 0195h ;# 
# 3266 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EECON2 equ 0196h ;# 
# 3286 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
RCREG equ 0199h ;# 
# 3306 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TXREG equ 019Ah ;# 
# 3326 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRG equ 019Bh ;# 
# 3333 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRGL equ 019Bh ;# 
# 3353 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRGH equ 019Ch ;# 
# 3373 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
RCSTA equ 019Dh ;# 
# 3435 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TXSTA equ 019Eh ;# 
# 3497 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BAUDCON equ 019Fh ;# 
# 3549 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUA equ 020Ch ;# 
# 3607 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUB equ 020Dh ;# 
# 3655 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUC equ 020Eh ;# 
# 3725 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1BUF equ 0211h ;# 
# 3730 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPBUF equ 0211h ;# 
# 3763 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1ADD equ 0212h ;# 
# 3768 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPADD equ 0212h ;# 
# 3801 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1MSK equ 0213h ;# 
# 3806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPMSK equ 0213h ;# 
# 3839 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1STAT equ 0214h ;# 
# 3844 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPSTAT equ 0214h ;# 
# 3961 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON1 equ 0215h ;# 
# 3966 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON1 equ 0215h ;# 
# 3970 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON equ 0215h ;# 
# 4165 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON2 equ 0216h ;# 
# 4170 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON2 equ 0216h ;# 
# 4287 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON3 equ 0217h ;# 
# 4292 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON3 equ 0217h ;# 
# 4409 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2BUF equ 0219h ;# 
# 4429 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2ADD equ 021Ah ;# 
# 4449 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2MSK equ 021Bh ;# 
# 4469 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2STAT equ 021Ch ;# 
# 4531 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON1 equ 021Dh ;# 
# 4601 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON2 equ 021Eh ;# 
# 4663 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON3 equ 021Fh ;# 
# 4725 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1 equ 0291h ;# 
# 4732 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1L equ 0291h ;# 
# 4752 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1H equ 0292h ;# 
# 4772 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP1CON equ 0293h ;# 
# 4854 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PWM1CON equ 0294h ;# 
# 4924 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP1AS equ 0295h ;# 
# 4929 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ECCP1AS equ 0295h ;# 
# 5086 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PSTR1CON equ 0296h ;# 
# 5130 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2 equ 0298h ;# 
# 5137 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2L equ 0298h ;# 
# 5157 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2H equ 0299h ;# 
# 5177 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP2CON equ 029Ah ;# 
# 5259 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PWM2CON equ 029Bh ;# 
# 5329 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP2AS equ 029Ch ;# 
# 5411 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PSTR2CON equ 029Dh ;# 
# 5455 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPTMRS equ 029Eh ;# 
# 5460 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPTMRS0 equ 029Eh ;# 
# 5629 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3 equ 0311h ;# 
# 5636 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3L equ 0311h ;# 
# 5656 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3H equ 0312h ;# 
# 5676 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP3CON equ 0313h ;# 
# 5740 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4 equ 0318h ;# 
# 5747 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4L equ 0318h ;# 
# 5767 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4H equ 0319h ;# 
# 5787 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP4CON equ 031Ah ;# 
# 5851 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLA equ 038Ch ;# 
# 5909 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLB equ 038Dh ;# 
# 5957 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLC equ 038Eh ;# 
# 6027 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAP equ 0391h ;# 
# 6085 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAN equ 0392h ;# 
# 6143 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAF equ 0393h ;# 
# 6201 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBP equ 0394h ;# 
# 6249 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBN equ 0395h ;# 
# 6297 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBF equ 0396h ;# 
# 6345 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CLKRCON equ 039Ah ;# 
# 6421 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCON equ 039Ch ;# 
# 6472 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDSRC equ 039Dh ;# 
# 6525 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCARL equ 039Eh ;# 
# 6590 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCARH equ 039Fh ;# 
# 6655 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR4 equ 0415h ;# 
# 6675 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR4 equ 0416h ;# 
# 6695 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T4CON equ 0417h ;# 
# 6766 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR6 equ 041Ch ;# 
# 6786 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR6 equ 041Dh ;# 
# 6806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T6CON equ 041Eh ;# 
# 6877 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STATUS_SHAD equ 0FE4h ;# 
# 6909 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WREG_SHAD equ 0FE5h ;# 
# 6929 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BSR_SHAD equ 0FE6h ;# 
# 6949 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6969 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6989 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7009 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7029 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7049 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STKPTR equ 0FEDh ;# 
# 7069 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TOSL equ 0FEEh ;# 
# 7089 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TOSH equ 0FEFh ;# 
# 52 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INDF0 equ 00h ;# 
# 72 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INDF1 equ 01h ;# 
# 92 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCL equ 02h ;# 
# 112 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STATUS equ 03h ;# 
# 175 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0L equ 04h ;# 
# 195 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0H equ 05h ;# 
# 219 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1L equ 06h ;# 
# 239 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1H equ 07h ;# 
# 259 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BSR equ 08h ;# 
# 311 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WREG equ 09h ;# 
# 331 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCLATH equ 0Ah ;# 
# 351 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INTCON equ 0Bh ;# 
# 429 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTA equ 0Ch ;# 
# 479 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTB equ 0Dh ;# 
# 518 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTC equ 0Eh ;# 
# 580 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR1 equ 011h ;# 
# 642 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR2 equ 012h ;# 
# 693 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR3 equ 013h ;# 
# 733 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR4 equ 014h ;# 
# 759 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR0 equ 015h ;# 
# 779 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1 equ 016h ;# 
# 786 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1L equ 016h ;# 
# 806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1H equ 017h ;# 
# 826 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T1CON equ 018h ;# 
# 898 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T1GCON equ 019h ;# 
# 968 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR2 equ 01Ah ;# 
# 988 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR2 equ 01Bh ;# 
# 1008 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T2CON equ 01Ch ;# 
# 1079 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CPSCON0 equ 01Eh ;# 
# 1139 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CPSCON1 equ 01Fh ;# 
# 1185 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISA equ 08Ch ;# 
# 1235 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISB equ 08Dh ;# 
# 1274 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISC equ 08Eh ;# 
# 1336 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE1 equ 091h ;# 
# 1398 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE2 equ 092h ;# 
# 1449 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE3 equ 093h ;# 
# 1489 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE4 equ 094h ;# 
# 1515 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OPTION_REG equ 095h ;# 
# 1598 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCON equ 096h ;# 
# 1649 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WDTCON equ 097h ;# 
# 1708 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCTUNE equ 098h ;# 
# 1766 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCCON equ 099h ;# 
# 1838 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCSTAT equ 09Ah ;# 
# 1900 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRES equ 09Bh ;# 
# 1907 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRESL equ 09Bh ;# 
# 1927 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRESH equ 09Ch ;# 
# 1947 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADCON0 equ 09Dh ;# 
# 2027 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADCON1 equ 09Eh ;# 
# 2099 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATA equ 010Ch ;# 
# 2144 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATB equ 010Dh ;# 
# 2183 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATC equ 010Eh ;# 
# 2245 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM1CON0 equ 0111h ;# 
# 2302 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM1CON1 equ 0112h ;# 
# 2368 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM2CON0 equ 0113h ;# 
# 2425 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM2CON1 equ 0114h ;# 
# 2491 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CMOUT equ 0115h ;# 
# 2517 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BORCON equ 0116h ;# 
# 2544 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FVRCON equ 0117h ;# 
# 2620 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
DACCON0 equ 0118h ;# 
# 2681 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
DACCON1 equ 0119h ;# 
# 2733 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SRCON0 equ 011Ah ;# 
# 2804 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SRCON1 equ 011Bh ;# 
# 2866 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
APFCON0 equ 011Dh ;# 
# 2900 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
APFCON1 equ 011Eh ;# 
# 2950 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELA equ 018Ch ;# 
# 2997 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELB equ 018Dh ;# 
# 3033 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELC equ 018Eh ;# 
# 3092 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADR equ 0191h ;# 
# 3099 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADRL equ 0191h ;# 
# 3119 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADRH equ 0192h ;# 
# 3139 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDAT equ 0193h ;# 
# 3146 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATL equ 0193h ;# 
# 3151 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATA equ 0193h ;# 
# 3184 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATH equ 0194h ;# 
# 3204 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EECON1 equ 0195h ;# 
# 3266 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EECON2 equ 0196h ;# 
# 3286 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
RCREG equ 0199h ;# 
# 3306 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TXREG equ 019Ah ;# 
# 3326 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRG equ 019Bh ;# 
# 3333 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRGL equ 019Bh ;# 
# 3353 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRGH equ 019Ch ;# 
# 3373 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
RCSTA equ 019Dh ;# 
# 3435 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TXSTA equ 019Eh ;# 
# 3497 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BAUDCON equ 019Fh ;# 
# 3549 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUA equ 020Ch ;# 
# 3607 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUB equ 020Dh ;# 
# 3655 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUC equ 020Eh ;# 
# 3725 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1BUF equ 0211h ;# 
# 3730 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPBUF equ 0211h ;# 
# 3763 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1ADD equ 0212h ;# 
# 3768 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPADD equ 0212h ;# 
# 3801 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1MSK equ 0213h ;# 
# 3806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPMSK equ 0213h ;# 
# 3839 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1STAT equ 0214h ;# 
# 3844 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPSTAT equ 0214h ;# 
# 3961 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON1 equ 0215h ;# 
# 3966 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON1 equ 0215h ;# 
# 3970 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON equ 0215h ;# 
# 4165 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON2 equ 0216h ;# 
# 4170 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON2 equ 0216h ;# 
# 4287 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON3 equ 0217h ;# 
# 4292 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON3 equ 0217h ;# 
# 4409 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2BUF equ 0219h ;# 
# 4429 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2ADD equ 021Ah ;# 
# 4449 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2MSK equ 021Bh ;# 
# 4469 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2STAT equ 021Ch ;# 
# 4531 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON1 equ 021Dh ;# 
# 4601 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON2 equ 021Eh ;# 
# 4663 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON3 equ 021Fh ;# 
# 4725 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1 equ 0291h ;# 
# 4732 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1L equ 0291h ;# 
# 4752 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1H equ 0292h ;# 
# 4772 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP1CON equ 0293h ;# 
# 4854 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PWM1CON equ 0294h ;# 
# 4924 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP1AS equ 0295h ;# 
# 4929 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ECCP1AS equ 0295h ;# 
# 5086 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PSTR1CON equ 0296h ;# 
# 5130 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2 equ 0298h ;# 
# 5137 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2L equ 0298h ;# 
# 5157 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2H equ 0299h ;# 
# 5177 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP2CON equ 029Ah ;# 
# 5259 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PWM2CON equ 029Bh ;# 
# 5329 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP2AS equ 029Ch ;# 
# 5411 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PSTR2CON equ 029Dh ;# 
# 5455 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPTMRS equ 029Eh ;# 
# 5460 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPTMRS0 equ 029Eh ;# 
# 5629 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3 equ 0311h ;# 
# 5636 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3L equ 0311h ;# 
# 5656 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3H equ 0312h ;# 
# 5676 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP3CON equ 0313h ;# 
# 5740 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4 equ 0318h ;# 
# 5747 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4L equ 0318h ;# 
# 5767 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4H equ 0319h ;# 
# 5787 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP4CON equ 031Ah ;# 
# 5851 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLA equ 038Ch ;# 
# 5909 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLB equ 038Dh ;# 
# 5957 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLC equ 038Eh ;# 
# 6027 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAP equ 0391h ;# 
# 6085 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAN equ 0392h ;# 
# 6143 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAF equ 0393h ;# 
# 6201 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBP equ 0394h ;# 
# 6249 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBN equ 0395h ;# 
# 6297 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBF equ 0396h ;# 
# 6345 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CLKRCON equ 039Ah ;# 
# 6421 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCON equ 039Ch ;# 
# 6472 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDSRC equ 039Dh ;# 
# 6525 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCARL equ 039Eh ;# 
# 6590 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCARH equ 039Fh ;# 
# 6655 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR4 equ 0415h ;# 
# 6675 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR4 equ 0416h ;# 
# 6695 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T4CON equ 0417h ;# 
# 6766 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR6 equ 041Ch ;# 
# 6786 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR6 equ 041Dh ;# 
# 6806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T6CON equ 041Eh ;# 
# 6877 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STATUS_SHAD equ 0FE4h ;# 
# 6909 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WREG_SHAD equ 0FE5h ;# 
# 6929 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BSR_SHAD equ 0FE6h ;# 
# 6949 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6969 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6989 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7009 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7029 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7049 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STKPTR equ 0FEDh ;# 
# 7069 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TOSL equ 0FEEh ;# 
# 7089 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TOSH equ 0FEFh ;# 
# 52 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INDF0 equ 00h ;# 
# 72 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INDF1 equ 01h ;# 
# 92 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCL equ 02h ;# 
# 112 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STATUS equ 03h ;# 
# 175 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0L equ 04h ;# 
# 195 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0H equ 05h ;# 
# 219 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1L equ 06h ;# 
# 239 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1H equ 07h ;# 
# 259 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BSR equ 08h ;# 
# 311 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WREG equ 09h ;# 
# 331 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCLATH equ 0Ah ;# 
# 351 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INTCON equ 0Bh ;# 
# 429 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTA equ 0Ch ;# 
# 479 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTB equ 0Dh ;# 
# 518 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PORTC equ 0Eh ;# 
# 580 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR1 equ 011h ;# 
# 642 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR2 equ 012h ;# 
# 693 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR3 equ 013h ;# 
# 733 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIR4 equ 014h ;# 
# 759 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR0 equ 015h ;# 
# 779 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1 equ 016h ;# 
# 786 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1L equ 016h ;# 
# 806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR1H equ 017h ;# 
# 826 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T1CON equ 018h ;# 
# 898 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T1GCON equ 019h ;# 
# 968 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR2 equ 01Ah ;# 
# 988 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR2 equ 01Bh ;# 
# 1008 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T2CON equ 01Ch ;# 
# 1079 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CPSCON0 equ 01Eh ;# 
# 1139 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CPSCON1 equ 01Fh ;# 
# 1185 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISA equ 08Ch ;# 
# 1235 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISB equ 08Dh ;# 
# 1274 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TRISC equ 08Eh ;# 
# 1336 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE1 equ 091h ;# 
# 1398 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE2 equ 092h ;# 
# 1449 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE3 equ 093h ;# 
# 1489 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PIE4 equ 094h ;# 
# 1515 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OPTION_REG equ 095h ;# 
# 1598 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCON equ 096h ;# 
# 1649 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WDTCON equ 097h ;# 
# 1708 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCTUNE equ 098h ;# 
# 1766 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCCON equ 099h ;# 
# 1838 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
OSCSTAT equ 09Ah ;# 
# 1900 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRES equ 09Bh ;# 
# 1907 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRESL equ 09Bh ;# 
# 1927 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADRESH equ 09Ch ;# 
# 1947 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADCON0 equ 09Dh ;# 
# 2027 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ADCON1 equ 09Eh ;# 
# 2099 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATA equ 010Ch ;# 
# 2144 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATB equ 010Dh ;# 
# 2183 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
LATC equ 010Eh ;# 
# 2245 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM1CON0 equ 0111h ;# 
# 2302 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM1CON1 equ 0112h ;# 
# 2368 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM2CON0 equ 0113h ;# 
# 2425 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CM2CON1 equ 0114h ;# 
# 2491 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CMOUT equ 0115h ;# 
# 2517 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BORCON equ 0116h ;# 
# 2544 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FVRCON equ 0117h ;# 
# 2620 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
DACCON0 equ 0118h ;# 
# 2681 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
DACCON1 equ 0119h ;# 
# 2733 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SRCON0 equ 011Ah ;# 
# 2804 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SRCON1 equ 011Bh ;# 
# 2866 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
APFCON0 equ 011Dh ;# 
# 2900 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
APFCON1 equ 011Eh ;# 
# 2950 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELA equ 018Ch ;# 
# 2997 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELB equ 018Dh ;# 
# 3033 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ANSELC equ 018Eh ;# 
# 3092 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADR equ 0191h ;# 
# 3099 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADRL equ 0191h ;# 
# 3119 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEADRH equ 0192h ;# 
# 3139 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDAT equ 0193h ;# 
# 3146 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATL equ 0193h ;# 
# 3151 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATA equ 0193h ;# 
# 3184 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EEDATH equ 0194h ;# 
# 3204 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EECON1 equ 0195h ;# 
# 3266 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
EECON2 equ 0196h ;# 
# 3286 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
RCREG equ 0199h ;# 
# 3306 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TXREG equ 019Ah ;# 
# 3326 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRG equ 019Bh ;# 
# 3333 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRGL equ 019Bh ;# 
# 3353 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SPBRGH equ 019Ch ;# 
# 3373 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
RCSTA equ 019Dh ;# 
# 3435 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TXSTA equ 019Eh ;# 
# 3497 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BAUDCON equ 019Fh ;# 
# 3549 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUA equ 020Ch ;# 
# 3607 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUB equ 020Dh ;# 
# 3655 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WPUC equ 020Eh ;# 
# 3725 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1BUF equ 0211h ;# 
# 3730 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPBUF equ 0211h ;# 
# 3763 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1ADD equ 0212h ;# 
# 3768 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPADD equ 0212h ;# 
# 3801 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1MSK equ 0213h ;# 
# 3806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPMSK equ 0213h ;# 
# 3839 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1STAT equ 0214h ;# 
# 3844 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPSTAT equ 0214h ;# 
# 3961 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON1 equ 0215h ;# 
# 3966 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON1 equ 0215h ;# 
# 3970 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON equ 0215h ;# 
# 4165 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON2 equ 0216h ;# 
# 4170 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON2 equ 0216h ;# 
# 4287 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP1CON3 equ 0217h ;# 
# 4292 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSPCON3 equ 0217h ;# 
# 4409 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2BUF equ 0219h ;# 
# 4429 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2ADD equ 021Ah ;# 
# 4449 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2MSK equ 021Bh ;# 
# 4469 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2STAT equ 021Ch ;# 
# 4531 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON1 equ 021Dh ;# 
# 4601 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON2 equ 021Eh ;# 
# 4663 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
SSP2CON3 equ 021Fh ;# 
# 4725 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1 equ 0291h ;# 
# 4732 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1L equ 0291h ;# 
# 4752 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR1H equ 0292h ;# 
# 4772 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP1CON equ 0293h ;# 
# 4854 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PWM1CON equ 0294h ;# 
# 4924 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP1AS equ 0295h ;# 
# 4929 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
ECCP1AS equ 0295h ;# 
# 5086 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PSTR1CON equ 0296h ;# 
# 5130 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2 equ 0298h ;# 
# 5137 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2L equ 0298h ;# 
# 5157 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR2H equ 0299h ;# 
# 5177 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP2CON equ 029Ah ;# 
# 5259 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PWM2CON equ 029Bh ;# 
# 5329 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP2AS equ 029Ch ;# 
# 5411 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PSTR2CON equ 029Dh ;# 
# 5455 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPTMRS equ 029Eh ;# 
# 5460 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPTMRS0 equ 029Eh ;# 
# 5629 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3 equ 0311h ;# 
# 5636 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3L equ 0311h ;# 
# 5656 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR3H equ 0312h ;# 
# 5676 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP3CON equ 0313h ;# 
# 5740 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4 equ 0318h ;# 
# 5747 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4L equ 0318h ;# 
# 5767 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCPR4H equ 0319h ;# 
# 5787 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CCP4CON equ 031Ah ;# 
# 5851 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLA equ 038Ch ;# 
# 5909 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLB equ 038Dh ;# 
# 5957 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
INLVLC equ 038Eh ;# 
# 6027 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAP equ 0391h ;# 
# 6085 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAN equ 0392h ;# 
# 6143 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCAF equ 0393h ;# 
# 6201 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBP equ 0394h ;# 
# 6249 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBN equ 0395h ;# 
# 6297 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
IOCBF equ 0396h ;# 
# 6345 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
CLKRCON equ 039Ah ;# 
# 6421 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCON equ 039Ch ;# 
# 6472 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDSRC equ 039Dh ;# 
# 6525 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCARL equ 039Eh ;# 
# 6590 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
MDCARH equ 039Fh ;# 
# 6655 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR4 equ 0415h ;# 
# 6675 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR4 equ 0416h ;# 
# 6695 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T4CON equ 0417h ;# 
# 6766 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TMR6 equ 041Ch ;# 
# 6786 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PR6 equ 041Dh ;# 
# 6806 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
T6CON equ 041Eh ;# 
# 6877 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STATUS_SHAD equ 0FE4h ;# 
# 6909 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
WREG_SHAD equ 0FE5h ;# 
# 6929 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
BSR_SHAD equ 0FE6h ;# 
# 6949 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6969 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6989 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7009 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7029 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7049 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
STKPTR equ 0FEDh ;# 
# 7069 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TOSL equ 0FEEh ;# 
# 7089 "C:\PROGRA~1\Microchip\xc8\v3.00\pic\include\proc/pic16f1829.h"
TOSH equ 0FEFh ;# 
	debug_source C
	FNCALL	_main,_initcpu
	FNROOT	_main
	global	_PORTC
_PORTC	set	0xE
	global	_PORTB
_PORTB	set	0xD
	global	_PORTA
_PORTA	set	0xC
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_ADCON1bits
_ADCON1bits	set	0x9E
	global	_TRISC
_TRISC	set	0x8E
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISA
_TRISA	set	0x8C
	global	_OPTION_REG
_OPTION_REG	set	0x95
	global	_OSCCON
_OSCCON	set	0x99
	global	_LATC
_LATC	set	0x10E
	global	_LATB
_LATB	set	0x10D
	global	_LATA
_LATA	set	0x10C
	global	_LATC4
_LATC4	set	0x874
	global	_LATC3
_LATC3	set	0x873
	global	_LATC2
_LATC2	set	0x872
	global	_LATC1
_LATC1	set	0x871
	global	_LATC0
_LATC0	set	0x870
	global	_ANSELC
_ANSELC	set	0x18E
	global	_ANSELB
_ANSELB	set	0x18D
	global	_ANSELA
_ANSELA	set	0x18C
	global	_WPUC
_WPUC	set	0x20E
	global	_WPUB
_WPUB	set	0x20D
	global	_WPUA
_WPUA	set	0x20C
	global	_INLVLC
_INLVLC	set	0x38E
	global	_INLVLB
_INLVLB	set	0x38D
	global	_INLVLA
_INLVLA	set	0x38C
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTOSC"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config MCLRE = "OFF"
	config CP = "OFF"
	config CPD = "OFF"
	config BOREN = "OFF"
	config CLKOUTEN = "OFF"
	config IESO = "OFF"
	config FCMEN = "OFF"
	config WRT = "OFF"
	config PLLEN = "OFF"
	config STVREN = "OFF"
	config BORV = "LO"
	config LVP = "OFF"
	file	"main.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_channel_select:
       ds      1

	file	"main.s"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initcpu:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_initcpu:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      2       3
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0       0
;!                                              0 COMMON     2     2      0
;!                            _initcpu
;! ---------------------------------------------------------------------------------
;! (1) _initcpu                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initcpu
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK2            80      0       0      0.0%
;!BITBANK3            80      0       0      0.0%
;!BITBANK4            80      0       0      0.0%
;!BITBANK5            80      0       0      0.0%
;!BITBANK6            80      0       0      0.0%
;!BITBANK7            80      0       0      0.0%
;!BITBANK8            80      0       0      0.0%
;!BITBANK9            80      0       0      0.0%
;!BITBANK10           80      0       0      0.0%
;!BITBANK11           80      0       0      0.0%
;!BITBANK12           48      0       0      0.0%
;!BIGRAM            1008      0       0      0.0%
;!COMMON              14      2       3     21.4%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK2               80      0       0      0.0%
;!BANK3               80      0       0      0.0%
;!BANK4               80      0       0      0.0%
;!BANK5               80      0       0      0.0%
;!BANK6               80      0       0      0.0%
;!BANK7               80      0       0      0.0%
;!BANK8               80      0       0      0.0%
;!BANK9               80      0       0      0.0%
;!BANK10              80      0       0      0.0%
;!BANK11              80      0       0      0.0%
;!BANK12              48      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       3      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_initcpu
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"main.c"
	line	8
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	8
	
_main:	
;incstack = 0
	callstack 15
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	9
	
l697:	
	fcall	_initcpu
	line	13
	
l699:	
	movlb 2	; select bank2
	bsf	(2160/8)^0100h,(2160)&7	;volatile
	line	14
	
l701:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u17:
decfsz	wreg
	goto	u17
	decfsz	((??_main+0)+0),f
	goto	u17
	decfsz	((??_main+0)+0+1),f
	goto	u17
asmopt pop

	line	15
	
l703:	
	movlb 2	; select bank2
	bcf	(2160/8)^0100h,(2160)&7	;volatile
	line	16
	
l705:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u27:
decfsz	wreg
	goto	u27
	decfsz	((??_main+0)+0),f
	goto	u27
	decfsz	((??_main+0)+0+1),f
	goto	u27
asmopt pop

	line	19
	
l707:	
	movlb 2	; select bank2
	bsf	(2161/8)^0100h,(2161)&7	;volatile
	line	20
	
l709:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u37:
decfsz	wreg
	goto	u37
	decfsz	((??_main+0)+0),f
	goto	u37
	decfsz	((??_main+0)+0+1),f
	goto	u37
asmopt pop

	line	21
	
l711:	
	movlb 2	; select bank2
	bcf	(2161/8)^0100h,(2161)&7	;volatile
	line	22
	
l713:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u47:
decfsz	wreg
	goto	u47
	decfsz	((??_main+0)+0),f
	goto	u47
	decfsz	((??_main+0)+0+1),f
	goto	u47
asmopt pop

	line	25
	
l715:	
	movlb 2	; select bank2
	bsf	(2162/8)^0100h,(2162)&7	;volatile
	line	26
	
l717:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u57:
decfsz	wreg
	goto	u57
	decfsz	((??_main+0)+0),f
	goto	u57
	decfsz	((??_main+0)+0+1),f
	goto	u57
asmopt pop

	line	27
	
l719:	
	movlb 2	; select bank2
	bcf	(2162/8)^0100h,(2162)&7	;volatile
	line	28
	
l721:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u67:
decfsz	wreg
	goto	u67
	decfsz	((??_main+0)+0),f
	goto	u67
	decfsz	((??_main+0)+0+1),f
	goto	u67
asmopt pop

	line	31
	
l723:	
	movlb 2	; select bank2
	bsf	(2163/8)^0100h,(2163)&7	;volatile
	line	32
	
l725:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u77:
decfsz	wreg
	goto	u77
	decfsz	((??_main+0)+0),f
	goto	u77
	decfsz	((??_main+0)+0+1),f
	goto	u77
asmopt pop

	line	33
	
l727:	
	movlb 2	; select bank2
	bcf	(2163/8)^0100h,(2163)&7	;volatile
	line	34
	
l729:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u87:
decfsz	wreg
	goto	u87
	decfsz	((??_main+0)+0),f
	goto	u87
	decfsz	((??_main+0)+0+1),f
	goto	u87
asmopt pop

	line	36
	
l731:	
	movlb 2	; select bank2
	bsf	(2164/8)^0100h,(2164)&7	;volatile
	line	37
	
l733:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u97:
decfsz	wreg
	goto	u97
	decfsz	((??_main+0)+0),f
	goto	u97
	decfsz	((??_main+0)+0+1),f
	goto	u97
asmopt pop

	line	38
	
l735:	
	movlb 2	; select bank2
	bcf	(2164/8)^0100h,(2164)&7	;volatile
	line	39
	
l737:	
	asmopt push
asmopt off
movlw  3
movwf	((??_main+0)+0+1)
movlw	138
movwf	((??_main+0)+0)
	movlw	86
u107:
decfsz	wreg
	goto	u107
	decfsz	((??_main+0)+0),f
	goto	u107
	decfsz	((??_main+0)+0+1),f
	goto	u107
asmopt pop

	goto	l699
	global	start
	ljmp	start
	callstack 0
	line	44
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_initcpu

;; *************** function _initcpu *****************
;; Defined at:
;;		line 4 in file "initcpu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"initcpu.c"
	line	4
global __ptext1
__ptext1:	;psect for function _initcpu
psect	text1
	file	"initcpu.c"
	line	4
	
_initcpu:	
;incstack = 0
	callstack 15
; Regs used in _initcpu: [wreg+status,2+status,0]
	line	7
	
l679:	
	movlw	06Ah
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	8
	movlw	0FFh
	movwf	(149)^080h	;volatile
	line	10
	
l681:	
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	11
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	12
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	13
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	14
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	15
	
l683:	
	movlw	0FFh
	movlb 7	; select bank7
	movwf	(908)^0380h	;volatile
	line	17
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	18
	movlb 1	; select bank1
	clrf	(141)^080h	;volatile
	line	19
	movlb 2	; select bank2
	clrf	(269)^0100h	;volatile
	line	20
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	21
	movlb 4	; select bank4
	clrf	(525)^0200h	;volatile
	line	22
	
l685:	
	movlw	0FFh
	movlb 7	; select bank7
	movwf	(909)^0380h	;volatile
	line	24
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	25
	movlb 1	; select bank1
	clrf	(142)^080h	;volatile
	line	26
	movlb 2	; select bank2
	clrf	(270)^0100h	;volatile
	line	27
	movlb 3	; select bank3
	clrf	(398)^0180h	;volatile
	line	28
	movlb 4	; select bank4
	clrf	(526)^0200h	;volatile
	line	29
	
l687:	
	movlw	0FFh
	movlb 7	; select bank7
	movwf	(910)^0380h	;volatile
	line	31
	
l689:	
	movlb 1	; select bank1
	bcf	(158)^080h,7	;volatile
	line	33
	
l691:	
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(158)^080h,f	;volatile
	line	34
	
l693:	
	bcf	(158)^080h,2	;volatile
	line	35
	
l695:	
	bcf	(157)^080h,0	;volatile
	line	37
	
l71:	
	return
	callstack 0
GLOBAL	__end_of_initcpu
	__end_of_initcpu:
	signat	_initcpu,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
