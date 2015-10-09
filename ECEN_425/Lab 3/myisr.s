resetISR:
	call resetHandler ; Exit program
tickISR:
saveState:
	push ax						; Save the state
	push bx						;				|
	push cx						;				|
	push dx						;				|
	push si						;				|
	push di						;				|
	push bp						;				|
	push es						;				|
	push ds						; Done saving state
	; push word [sp+18]
	; ret
	; call saveState
	sti 							; Re-enable interrupts after saving stack
	call tickHandler  ; Call tick handler
	cli 							; Disable interrupts
	jmp restoreState
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
keypressISR:
	push ax						; Save the state
	push bx						;				|
	push cx						;				|
	push dx						;				|
	push si						;				|
	push di						;				|
	push bp						;				|
	push es						;				|
	push ds						; Done saving state
	call saveState
	sti 							; Re-enable interrupts after saving stack
	call keyHandler 	; Call keypress handler
	cli 							; Disable interrupts
restoreState:
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
