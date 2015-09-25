#include "clib.h"

int gvar;

int AsmFunction(int a, char b, char c, int d, int e){
    return gvar+((a*(b+c))/(d-e));
}

void main(void)
{
    gvar = 0;

    printString("Hello, world!\r\n");

    gvar = AsmFunction(10, 35, 3, 123, 100);
    print("Result 1 is: ", 13);
    printInt(gvar);
    printNewLine();

    gvar = AsmFunction(14, -10, 126, 32, 15);
    print("Result 2 is: ", 13);
    printInt(gvar);
    printNewLine();

    gvar = AsmFunction(17, 18, -121, 130, 118);
    print("Result 3 is: ", 13);
    printInt(gvar);
    printNewLine();

    printNewLine();
}
