; Generated by c86 (BYU-NASM) 5.1 (beta) from yakc.i
	CPU	8086
	ALIGN	2
	jmp	main	; Jump to program start
	ALIGN	2
YKInitialize:
	; >>>>> Line:	20
	; >>>>> void YKInitialize(void){ 
	jmp	L_yakc_1
L_yakc_2:
	; >>>>> Line:	28
	; >>>>> YKIdleCount = 0; 
	mov	word [YKIdleCount], 0
	; >>>>> Line:	29
	; >>>>> YKoolRunnings = 0; 
	mov	word [YKoolRunnings], 0
	; >>>>> Line:	30
	; >>>>> YKIntDepth = 0; 
	mov	word [YKIntDepth], 0
	; >>>>> Line:	31
	; >>>>> YKCtxSwCount = 0; 
	mov	word [YKCtxSwCount], 0
	; >>>>> Line:	32
	; >>>>> YKTickNum = 0; 
	mov	word [YKTickNum], 0
	; >>>>> Line:	34
	; >>>>> YKAvailTCBList = &(YKTCBArray[0]); 
	mov	word [YKAvailTCBList], YKTCBArray
	; >>>>> Line:	35
	; >>>>> for (i = 0; i <= 10; i++){ 
	mov	word [bp-2], 0
	jmp	L_yakc_4
L_yakc_3:
	; >>>>> Line:	36
	; >>>>> if(i == 0) 
	mov	ax, word [bp-2]
	test	ax, ax
	jne	L_yakc_7
	; >>>>> Line:	37
	; >>>>> YKTCBArray[i].prev = 0; 
	mov	cx, 12
	imul	cx
	add	ax, YKTCBArray
	mov	si, ax
	add	si, 10
	mov	word [si], 0
	jmp	L_yakc_8
L_yakc_7:
	; >>>>> Line:	39
	; >>>>> YKTCBArray[i].prev = &(YKTCBArray[i-1]); 
	mov	ax, word [bp-2]
	dec	ax
	mov	cx, 12
	imul	cx
	add	ax, YKTCBArray
	push	ax
	mov	ax, word [bp-2]
	mov	cx, 12
	imul	cx
	mov	dx, ax
	add	dx, YKTCBArray
	mov	si, dx
	add	si, 10
	pop	ax
	mov	word [si], ax
L_yakc_8:
	; >>>>> Line:	41
	; >>>>> if(i == 10) 
	cmp	word [bp-2], 10
	jne	L_yakc_9
	; >>>>> Line:	42
	; >>>>> TCBList; 
	mov	ax, word [bp-2]
	mov	cx, 12
	imul	cx
	add	ax, YKTCBArray
	mov	si, ax
	add	si, 8
	mov	word [si], 0
	jmp	L_yakc_10
L_yakc_9:
	; >>>>> Line:	44
	; >>>>> YKTCBArray[i].next = &(YKTCBArray[i+1]); 
	mov	ax, word [bp-2]
	inc	ax
	mov	cx, 12
	imul	cx
	add	ax, YKTCBArray
	push	ax
	mov	ax, word [bp-2]
	mov	cx, 12
	imul	cx
	mov	dx, ax
	add	dx, YKTCBArray
	mov	si, dx
	add	si, 8
	pop	ax
	mov	word [si], ax
L_yakc_10:
L_yakc_6:
	inc	word [bp-2]
L_yakc_4:
	cmp	word [bp-2], 10
	jle	L_yakc_3
L_yakc_5:
	; >>>>> Line:	47
	; >>>>> YKNewTask(&YKIdleTask, &idleTaskStack[256], 100); 
	mov	al, 100
	push	ax
	lea	ax, [bp-6]
	push	ax
	mov	ax, YKIdleTask
	push	ax
	call	YKNewTask
	add	sp, 6
	mov	sp, bp
	pop	bp
	ret
L_yakc_1:
	push	bp
	mov	bp, sp
	sub	sp, 518
	jmp	L_yakc_2
	ALIGN	2
YKIdleTask:
	; >>>>> Line:	50
	; >>>>> void YKIdleTask(void){ 
	jmp	L_yakc_12
L_yakc_13:
	; >>>>> Line:	52
	; >>>>> while(1){ 
	jmp	L_yakc_15
L_yakc_14:
	; >>>>> Line:	53
	; >>>>> YKIdleCount++; 
	inc	word [YKIdleCount]
L_yakc_15:
	jmp	L_yakc_14
L_yakc_16:
	mov	sp, bp
	pop	bp
	ret
L_yakc_12:
	push	bp
	mov	bp, sp
	jmp	L_yakc_13
L_yakc_22:
	DB	"Priority: ",0
L_yakc_21:
	DB	"new TCB values: sp: ",0
L_yakc_20:
	DB	"Taskcode ptr val: ",0
L_yakc_19:
	DB	"Taskstack ptr val: ",0
L_yakc_18:
	DB	"New task called ...",0xA,0
	ALIGN	2
YKNewTask:
	; >>>>> Line:	57
	; >>>>> void YKNewTask(void (*task)(void), void *taskStack, unsigned char priority){ 
	jmp	L_yakc_23
L_yakc_24:
	; >>>>> Line:	61
	; >>>>> printString("New task called ...\n"); 
	mov	ax, L_yakc_18
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	62
	; >>>>> printString("Taskstack ptr val: "); 
	mov	ax, L_yakc_19
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	63
	; >>>>> printWord((int)taskStack); 
	push	word [bp+6]
	call	printWord
	add	sp, 2
	; >>>>> Line:	64
	; >>>>> printNewLine(); 
	call	printNewLine
	; >>>>> Line:	65
	; >>>>> printString("Taskcode ptr val: "); 
	mov	ax, L_yakc_20
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	66
	; >>>>> printWord((int)task); 
	push	word [bp+4]
	call	printWord
	add	sp, 2
	; >>>>> Line:	67
	; >>>>> printNewLine(); 
	call	printNewLine
	; >>>>> Line:	69
	; >>>>> tmp = YKAvailTCBList; 
	mov	ax, word [YKAvailTCBList]
	mov	word [bp-2], ax
	; >>>>> Line:	70
	; >>>>> YK 
	mov	si, word [bp-2]
	add	si, 8
	mov	ax, word [si]
	mov	word [YKAvailTCBList], ax
	; >>>>> Line:	72
	; >>>>> saveNewTaskCtx(); 
	call	saveNewTaskCtx
	; >>>>> Line:	73
	; >>>>> tmp->priority = priority; 
	mov	si, word [bp-2]
	add	si, 4
	mov	al, byte [bp+8]
	mov	byte [si], al
	; >>>>> Line:	74
	; >>>>> tmp->state = 1; 
	mov	si, word [bp-2]
	add	si, 2
	mov	word [si], 1
	; >>>>> Line:	75
	; >>>>> tmp->delay = 0; 
	mov	si, word [bp-2]
	add	si, 6
	mov	word [si], 0
	; >>>>> Line:	76
	; >>>>> printString("new TCB values: sp: "); 
	mov	ax, L_yakc_21
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	77
	; >>>>> printWord((int)tmp->sp); 
	mov	si, word [bp-2]
	push	word [si]
	call	printWord
	add	sp, 2
	; >>>>> Line:	78
	; >>>>> printNewLine(); 
	call	printNewLine
	; >>>>> Line:	79
	; >>>>> printString("Priority: "); 
	mov	ax, L_yakc_22
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	80
	; >>>>> printInt((int)tmp->priority); 
	mov	si, word [bp-2]
	add	si, 4
	mov	al, byte [si]
	xor	ah, ah
	push	ax
	call	printInt
	add	sp, 2
	; >>>>> Line:	81
	; >>>>> printNewLine(); 
	call	printNewLine
	; >>>>> Line:	86
	; >>>>> if (YKTaskList == 0) 
	mov	ax, word [YKTaskList]
	test	ax, ax
	jne	L_yakc_25
	; >>>>> Line:	89
	; >>>>> YKTaskList = tmp; 
	mov	ax, word [bp-2]
	mov	word [YKTaskList], ax
	; >>>>> Line:	90
	; >>>>> tmp->next = 0; 
	mov	si, word [bp-2]
	add	si, 8
	mov	word [si], 0
	; >>>>> Line:	91
	; >>>>> tmp->prev = 0; 
	mov	si, word [bp-2]
	add	si, 10
	mov	word [si], 0
	; >>>>> Line:	92
	; >>>>> YKCurrTask=YKTaskList; 
	mov	ax, word [YKTaskList]
	mov	word [YKCurrTask], ax
	jmp	L_yakc_26
L_yakc_25:
	; >>>>> Line:	97
	; >>>>> tmp2 = YKTaskList; 
	mov	ax, word [YKTaskList]
	mov	word [bp-4], ax
	; >>>>> Line:	98
	; >>>>> while (tmp2->priority < tmp->priority) 
	jmp	L_yakc_28
L_yakc_27:
	; >>>>> Line:	99
	; >>>>> tmp2 = tmp2->next; 
	mov	si, word [bp-4]
	add	si, 8
	mov	ax, word [si]
	mov	word [bp-4], ax
L_yakc_28:
	mov	si, word [bp-4]
	add	si, 4
	mov	di, word [bp-2]
	add	di, 4
	mov	al, byte [di]
	cmp	al, byte [si]
	ja	L_yakc_27
L_yakc_29:
	; >>>>> Line:	100
	; >>>>> if (tmp2->prev == 0) 
	mov	si, word [bp-4]
	add	si, 10
	mov	ax, word [si]
	test	ax, ax
	jne	L_yakc_30
	; >>>>> Line:	101
	; >>>>> YKTaskList = tmp 
	mov	ax, word [bp-2]
	mov	word [YKTaskList], ax
	jmp	L_yakc_31
L_yakc_30:
	; >>>>> Line:	103
	; >>>>> tmp2->prev->next = tmp; 
	mov	si, word [bp-4]
	add	si, 10
	mov	si, word [si]
	add	si, 8
	mov	ax, word [bp-2]
	mov	word [si], ax
L_yakc_31:
	; >>>>> Line:	104
	; >>>>> tmp->prev = tmp2->prev; 
	mov	si, word [bp-4]
	add	si, 10
	mov	di, word [bp-2]
	add	di, 10
	mov	ax, word [si]
	mov	word [di], ax
	; >>>>> Line:	105
	; >>>>> tmp->next = tmp2; 
	mov	si, word [bp-2]
	add	si, 8
	mov	ax, word [bp-4]
	mov	word [si], ax
	; >>>>> Line:	106
	; >>>>> tmp2->prev = tmp; 
	mov	si, word [bp-4]
	add	si, 10
	mov	ax, word [bp-2]
	mov	word [si], ax
L_yakc_26:
	; >>>>> Line:	109
	; >>>>> if(YKoolRunnings) 
	mov	ax, word [YKoolRunnings]
	test	ax, ax
	je	L_yakc_32
	; >>>>> Line:	110
	; >>>>> YKScheduler(0); 
	xor	ax, ax
	push	ax
	call	YKScheduler
	add	sp, 2
L_yakc_32:
	mov	sp, bp
	pop	bp
	ret
L_yakc_23:
	push	bp
	mov	bp, sp
	sub	sp, 4
	jmp	L_yakc_24
	ALIGN	2
YKRun:
	; >>>>> Line:	113
	; >>>>> void YKRun(void){ 
	jmp	L_yakc_34
L_yakc_35:
	; >>>>> Line:	116
	; >>>>> YKoolRunnings = 1; 
	mov	word [YKoolRunnings], 1
	; >>>>> Line:	118
	; >>>>> if(YKTaskList != 0 && YKTaskList->priority != 100) 
	mov	ax, word [YKTaskList]
	test	ax, ax
	je	L_yakc_36
	mov	si, word [YKTaskList]
	add	si, 4
	cmp	byte [si], 100
	je	L_yakc_36
	; >>>>> Line:	119
	; >>>>> YKScheduler(0); 
	xor	ax, ax
	push	ax
	call	YKScheduler
	add	sp, 2
L_yakc_36:
	mov	sp, bp
	pop	bp
	ret
L_yakc_34:
	push	bp
	mov	bp, sp
	jmp	L_yakc_35
	ALIGN	2
YKDelayTask:
	; >>>>> Line:	122
	; >>>>> void YKDelayTask(unsigned count){ 
	jmp	L_yakc_38
L_yakc_39:
	; >>>>> Line:	124
	; >>>>> if(count > 0){ 
	mov	ax, word [bp+4]
	test	ax, ax
	je	L_yakc_40
	; >>>>> Line:	125
	; >>>>> YKCurrTask->delay = count; 
	mov	si, word [YKCurrTask]
	add	si, 6
	mov	word [si], ax
	; >>>>> Line:	126
	; >>>>> YKCurrTask->state = 2; 
	mov	si, word [YKCurrTask]
	add	si, 2
	mov	word [si], 2
	; >>>>> Line:	127
	; >>>>> YKScheduler(1); 
	mov	ax, 1
	push	ax
	call	YKScheduler
	add	sp, 2
L_yakc_40:
	mov	sp, bp
	pop	bp
	ret
L_yakc_38:
	push	bp
	mov	bp, sp
	jmp	L_yakc_39
	ALIGN	2
YKEnterISR:
	; >>>>> Line:	131
	; >>>>> void YKEnterISR(void){ 
	jmp	L_yakc_42
L_yakc_43:
	; >>>>> Line:	133
	; >>>>> if(YKIntDepth == 0) 
	mov	ax, word [YKIntDepth]
	test	ax, ax
	jne	L_yakc_44
	; >>>>> Line:	134
	; >>>>> saveSP(); 
	call	saveSP
L_yakc_44:
	; >>>>> Line:	136
	; >>>>> YKIntDepth++; 
	inc	word [YKIntDepth]
	mov	sp, bp
	pop	bp
	ret
L_yakc_42:
	push	bp
	mov	bp, sp
	jmp	L_yakc_43
	ALIGN	2
YKExitISR:
	; >>>>> Line:	142
	; >>>>> void YKExitISR(void){ 
	jmp	L_yakc_46
L_yakc_47:
	; >>>>> Line:	147
	; >>>>> YKIntDepth--; 
	dec	word [YKIntDepth]
	; >>>>> Line:	149
	; >>>>> i 
	mov	ax, word [YKIntDepth]
	test	ax, ax
	jne	L_yakc_48
	; >>>>> Line:	150
	; >>>>> YKScheduler(0); 
	xor	ax, ax
	push	ax
	call	YKScheduler
	add	sp, 2
L_yakc_48:
	mov	sp, bp
	pop	bp
	ret
L_yakc_46:
	push	bp
	mov	bp, sp
	jmp	L_yakc_47
L_yakc_51:
	DB	"YKReadyTask priority: ",0
L_yakc_50:
	DB	"YKCurrTask priority: ",0
	ALIGN	2
YKScheduler:
	; >>>>> Line:	153
	; >>>>> void YKScheduler(int saveCtxFlag){ 
	jmp	L_yakc_52
L_yakc_53:
	; >>>>> Line:	157
	; >>>>> tmp = YKTaskList; 
	mov	ax, word [YKTaskList]
	mov	word [bp-2], ax
	; >>>>> Line:	158
	; >>>>> while(tmp->state != 1) 
	jmp	L_yakc_55
L_yakc_54:
	; >>>>> Line:	159
	; >>>>> tmp = tmp->next; 
	mov	si, word [bp-2]
	add	si, 8
	mov	ax, word [si]
	mov	word [bp-2], ax
L_yakc_55:
	mov	si, word [bp-2]
	add	si, 2
	cmp	word [si], 1
	jne	L_yakc_54
L_yakc_56:
	; >>>>> Line:	163
	; >>>>> YKReadyTask = tmp; 
	mov	ax, word [bp-2]
	mov	word [YKReadyTask], ax
	; >>>>> Line:	164
	; >>>>> printString("YKCurrTask priority: "); 
	mov	ax, L_yakc_50
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	165
	; >>>>> printInt(YKCurrTask->priority); 
	mov	si, word [YKCurrTask]
	add	si, 4
	mov	al, byte [si]
	xor	ah, ah
	push	ax
	call	printInt
	add	sp, 2
	; >>>>> Line:	166
	; >>>>> printNewLine(); 
	call	printNewLine
	; >>>>> Line:	167
	; >>>>> printString("YKReadyTask priority: "); 
	mov	ax, L_yakc_51
	push	ax
	call	printString
	add	sp, 2
	; >>>>> Line:	168
	; >>>>> printInt(YKReadyTask->priority); 
	mov	si, word [YKReadyTask]
	add	si, 4
	mov	al, byte [si]
	xor	ah, ah
	push	ax
	call	printInt
	add	sp, 2
	; >>>>> Line:	169
	; >>>>> printNewLine(); 
	call	printNewLine
	; >>>>> Line:	171
	; >>>>> if(YKReadyTask != YKCurrTask){ 
	mov	ax, word [YKCurrTask]
	cmp	ax, word [YKReadyTask]
	je	L_yakc_57
	; >>>>> Line:	173
	; >>>>> YKCtxSwCount++; 
	inc	word [YKCtxSwCount]
	; >>>>> Line:	174
	; >>>>> YKDispatcher(saveCtxFlag); 
	push	word [bp+4]
	call	YKDispatcher
	add	sp, 2
L_yakc_57:
	mov	sp, bp
	pop	bp
	ret
L_yakc_52:
	push	bp
	mov	bp, sp
	push	cx
	jmp	L_yakc_53
	ALIGN	2
YKCurrTask:
	TIMES	2 db 0
YKReadyTask:
	TIMES	2 db 0
YKTaskList:
	TIMES	2 db 0
YKAvailTCBList:
	TIMES	2 db 0
YKCtxSwCount:
	TIMES	2 db 0
YKIdleCount:
	TIMES	2 db 0
YKTickNum:
	TIMES	2 db 0
YKTCBArray:
	TIMES	132 db 0
YKoolRunnings:
	TIMES	2 db 0
YKIntDepth:
	TIMES	2 db 0
