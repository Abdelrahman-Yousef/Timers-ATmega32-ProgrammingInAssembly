;
; Timer0_PhaseCorrectPWM.asm
;
; Created: 11/12/2023 1:55:44 PM
; Author : Options
;


; Replace with your application code
.INCLUDE "m32def.inc"

.ORG 0x00
MAIN:
LDI R16,0x00
OUT TCNT0,R16
LDI R16,0x1F
OUT OCR0,R16
LDI R16,0x74
OUT TCCR0,R16
SBI DDRB,PB3
LOOP:
NOP
NOP
NOP
RJMP LOOP
