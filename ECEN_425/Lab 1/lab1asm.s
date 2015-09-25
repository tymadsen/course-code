; Modify AsmFunction to perform the calculation gvar+(a*(b+c))/(d-e).
; Keep in mind the C declaration:
; int AsmFunction(int a, char b, char c, int d, int e);

; gvar+((a*(b+c))/(d-e))

	CPU	8086
	align	2

AsmFunction:

	push	bp                  ;save bp
	mov 	bp, sp              ;set bp for referencing stack
	;(b+c)
	mov		al, byte [bp+6]			;put b in al
	add		al, byte [bp+8]			;add c to b in al
	cbw												;sign extend al to ax
	;(a*(b+c))
	imul	word [bp+4]					;multiply a by sum of b and c in ax, Stored to dx::ax
	;(d-e)
	push	cx									;save value in cx on stack
	mov		cx, word [bp+10]		;put d in cx
	sub		cx, word [bp+12]		;subtract e from d and store in ax
	;((a*(b+c))/(d-e)
	idiv	cx									;divide dx::ax by cx and store in ax
	pop		cx									;restore cx
	;gvar+((a*(b+c))/(d-e)
	add		ax, word [gvar]			;add gvar to ax and store in ax

	mov   sp, bp              ;free space used by local variables
	pop   bp                  ;restore bp
	ret
