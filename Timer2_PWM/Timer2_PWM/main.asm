;
; Timer2_PWM.asm
;
; Created: 11/12/2023 4:19:09 PM
; Author : Options
;


; Replace with your application code
.ORG 0x00
MAIN:
LDI R16,0x00
OUT TCNT2,R16
LDI R16,0x1F
OUT OCR2,R16
LDI R16,0x76
OUT TCCR2,R16
SBI DDRD,PD7
LOOP: RJMP LOOP
