
void MyFunction(int argWord, char argByte)
{
    int localWord;
    char localByte;
    localWord = argWord;
    localByte = argByte;

}
int main(){
	MyFunction(1,2);
	return 0;
}

/*
a)
	push	bp
	mov		bp, sp
	mov		al, 2
	push	ax
	mov		ax, 1
	push	ax
	call	MyFunction
	add		sp, 4
	xor		ax, ax
	mov		sp, bp
	pop		bp
	ret

b)
	argWord = word [bp+4]
	argByte = byte [bp+6]
	localWord = word [bp-2]
	localByte = byte [bp-3]
c)
	the instruction sub sp, 4 would allocate 4 bytes of memory on the stack for the localWord and localByte variables. 
*/
