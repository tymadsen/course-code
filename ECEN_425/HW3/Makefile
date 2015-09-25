CC = cc
CFLAGS = -g -Aa
OBJ = src1.o src2.o src3.o

prog1:	$(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o prog1

src1.o:	ops.h def.h src1.c

src2.o:	ops.h def.h src2.c

src3.o:	ops.h def2.h src3.c