saveNewTaskCtx:
	pushf					; Push flags register
	push 	cs				; Push code segment register
	push 	word [bp+4]		; Push pointer to task code (later to be popped into IP)
	sub 	sp, 14			; Allocate stack space for general purpose registers
	push 	word [bp+6]		; Push pointer to task stack (later to be popped into SP)
	push 	[sp+22]			; Set return address to top of stack 
	ret 					; so ret will popit and go back to where it was called

; void YKDispatcher(int saveCtxFlag){
; 	// if we need to save context (from delayTask)
; 	if(saveCtxFlag){
; 		saveCtx(); // Save the context by pushing values onto the stack
; 	// 	 Save the SP to the current TCB
		
; 	}
; 	// 	Update the current task to highest priority task 
; 	// change the SP to the new SP
; 	// Pop the registers from the stack
; 	// iret
; }
YKDispatcher:
	test 0, [bp+4]			; Is saveCtxFlag 0 or not?
	jnz saveCtx
updateTask:
	
saveCtx:
	pushf					; Push flags register
	push 	cs				; Push code segment register
	push 	ip				; Push instruciton pointer

	push 	ax				; Save the state
	push 	bx				;				|
	push 	cx				;				|
	push 	dx				;				|
	push 	si				;				|
	push 	di				;				|
	push 	bp				;				|
	push 	sp				;				|
	jmp		updateTask