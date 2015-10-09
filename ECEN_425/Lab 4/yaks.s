saveSP:
	push	bp 											; save old bp on the stack
  mov		bp, sp									; set bp to sp
  mov 	si, word [YKCurrTask]		; save sp in current task's tcb
	mov	 	[si], sp								; 
	mov		sp, bp									; restore sp to where it was
	pop		bp											; restore old bp
	ret 													; return 

saveNewTaskCtx:
	push	bp 											; save old bp on the stack
  mov		ax, sp									; set ax to sp
	mov 	sp, word [bp+6]					; Set sp to the task stack passed into YKNewTask function
	pushf													; Push flags register
	push 	cs											; Push code segment register
	push 	word [bp+4]							; Push pointer to task code (later to be popped into IP)
	sub 	sp, 18									; Allocate stack space for general purpose registers (dont care what they hold)
	mov		si, word [bp-2] 				; mov tmp into si
  mov		word [si], sp 					; set stack pointer for tmp (new TCB)
	mov		sp, ax									; restore sp to where it was
	pop		bp											; restore old bp
	ret 													; return
YKDispatcher:
	push 	bp
  mov		bp, sp									; set bp to sp
  mov 	ax, word[bp+4]					; get saveCtxFlag put it in ax
	test 	ax, ax									; Is saveCtxFlag 0 ?
	jne 		saveCtx 								; If not, jmp to saveCtx
updateTask:
	mov 	si, word [YKReadyTask]	; Put YKReadyTask in si
	mov 	word [YKCurrTask], si		; update YKCurrTask to YKReadyTask
	mov		ax, word [si]						; Put ready task's sp into ax
	mov 	sp, ax									; set sp to YKCurrTask->sp (first word)
	pop 	ax											; Pop the general purpose registers
	pop 	bx											;				|
	pop 	cx											;				|
	pop 	dx											;				|
	pop 	si											;	Pop the offset registers (not sp or ip)
	pop 	di											;				|
	pop 	bp											;				|
	pop 	es											;				|
	pop 	ds											; Done restoring state
	iret 													; Pop ip, cs and flags
saveCtx:
	push 	si											; save si, since we are using it to set the TCB's sp
	mov 	si, word [YKCurrTask]		; save sp in current task's tcb
	mov	 	[si], sp								; 
	; mov 	word [YKCurrTask], sp		; Set the stack pointer in the current task
	pop 	si											; restore si
	pushf													; Push flags register
	push 	cs											; Push code segment register
	push 	word [bp+2]							; Push instruction ptr 
	push 	ax											; Save the registers
	push 	bx											;				|
	push 	cx											;				|
	push 	dx											;				|
	push 	si											;	Save the offset registers (not sp or ip)
	push 	di											;				|
	push 	bp											;				|
	push 	es											;				|
	push 	ds											; Done saving state
	jmp		updateTask

YKEnterMutex:
	cli 													; Disable interrupts
	ret

YKExitMutex:
	sti 													; Enable interrupts
	ret