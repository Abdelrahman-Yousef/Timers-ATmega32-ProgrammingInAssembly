;
; Timer1_FastPWM.asm
;
; Created: 11/14/2023 8:39:10 AM
; Author : Options
;


; Replace with your application code

.INCLUDE "m32def.inc"

.ORG 0x00
MAIN:
SBI DDRD,PD5
SBI DDRD,PD4

LDI R16,0x00
OUT TCNT1H,R16
OUT TCNT1L,R16
LDI R16,HIGH(0x31)
OUT OCR1AH,R16
LDI R16,LOW(0x31)
OUT OCR1AL,R16
LDI R16,HIGH(0x18)
OUT OCR1BH,R16
LDI R16,LOW(0x18)
OUT OCR1BL,R16
LDI R16,HIGH(0x7C)
OUT ICR1H,R16
LDI R16,LOW(0x7C)
OUT ICR1L,R16
LDI R16,0xA2
OUT TCCR1A,R16
LDI R16,0x19
OUT TCCR1B,R16

LOOP: RJMP LOOP



