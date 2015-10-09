resetISR:
	call resetHandler ; Exit program

tickISR:
	push ax						; Save the state
	push bx						;				|
	push cx						;				|
	push dx						;				|
	push si						;				|
	push di						;				|
	push bp						;				|
	push es						;				|
	push ds						; Done saving state
	call YKEnterISR 	; Inc ISR call depth counter
	sti 							; Re-enable interrupts after saving stack
	call YKTickHandler  ; Call tick handler
	jmp  exitISR

keypressISR:
	; call saveStack
	push ax						; Save the state
	push bx						;				|
	push cx						;				|
	push dx						;				|
	push si						;				|
	push di						;				|
	push bp						;				|
	push es						;				|
	push ds						; Done saving state
	call YKEnterISR 	; Inc ISR call depth counter
	sti 							; Re-enable interrupts after saving stack
	call keyHandler 	; Call keypress handler
exitISR:
	cli 							; Disable interrupts
	call YKExitISR		; Dec ISR call depth counter
	mov	al, 0x20			; Load nonspecific EOI value (0x20) into register al
	out	0x20, al			; Write EOI to PIC (port 0x20)
	pop ds						; Restore previous state
	pop es						;				|
	pop bp						;				|
	pop di						;				|
	pop si						;				|
	pop dx						;				|
	pop cx						;				|
	pop bx						;				|
	pop ax						;	Done restoring prev. state
	iret 							; Restore execution and re-enable interrupts
; enterISR_save:
; 	push ax						; Save the state
; 	push bx						;				|
; 	push cx						;				|
; 	push dx						;				|
; 	push si						;				|
; 	push di						;				|
; 	push bp						;				|
; 	push es						;				|
; 	push ds						; Done saving state
; 	call YKEnterISR 	; Inc ISR call depth counter
; 	mov 	sp, bp
; 	pop 	bp
; 	sti 							; Re-enable interrupts after saving stack
; 	ret
; saveStack:
; 	push bp
; 	mov  bp, sp
; 	jmp  enterISR_save