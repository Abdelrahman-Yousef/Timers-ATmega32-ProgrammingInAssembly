;
; Timer2_Wave_Generation.asm
;
; Created: 10/25/2023 3:02:22 PM
; Author : Options
;


; Replace with your application code
.INCLUDE "m32def.inc"

.ORG 0x00
MAIN:
SBI DDRD,PD7

LDI R16,0x00
OUT TCNT2,R16
LDI R16,0xC8
OUT OCR2,R16
LDI R16,0x19
OUT TCCR2,R16
LOOP: RJMP LOOP
