#include "clib.h"

extern int KeyBuffer;
unsigned tickCount = 0;
unsigned delay;


void resetHandler(){
	exit(0);
}

void tickHandler(){
	tickCount++;
	printNewLine();
	printString("TICK ");
	printUInt(tickCount);
	printNewLine();
}

void keyHandler(){
	printNewLine();
	if (KeyBuffer != 'd'){
		printString("KEYPRESS (");
		printChar(KeyBuffer);
		printString(") IGNORED");
	} else {
		printString("DELAY KEY PRESSED");
		delay = 0;
		while(delay < 5000)
			delay++;
		printNewLine();
		printString("DELAY COMPLETE");
	}
	printNewLine();
}
