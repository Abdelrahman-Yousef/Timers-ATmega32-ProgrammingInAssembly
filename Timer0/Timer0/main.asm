;
; Timer0.asm
;
; Created: 7/23/2023 6:09:45 PM
; Author : Options
;


; Replace with your application code

.INCLUDE "m32def.inc"

.ORG 0x00

MAIN:
; initilaize the stack pointer
LDI R20,HIGH(RAMEND)
OUT SPH,R20
LDI R20,LOW(RAMEND)
OUT SPL,R20

; make PINB5 output
SBI DDRB,5

APP:
SBI PORTB,5
RCALL DELAY
CBI PORTB,5
RCALL DELAY
RJMP APP

.ORG 0x100
DELAY:
LDI R20,0
OUT TCNT0,R20
LDI R20,0x01
OUT TCCR0,R20
LDI R20,0x01
OUT SFIOR,R20

AGAIN:
IN R20,TIFR
SBRS R20,TOV0
RJMP AGAIN
LDI R20,0
OUT TCCR0,R20
LDI R20,1<<TOV0
OUT TIFR,R20
RET



