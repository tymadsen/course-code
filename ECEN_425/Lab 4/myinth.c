#include "clib.h"
#include "yakk.h"
#include "yaku.h"

extern int KeyBuffer;
unsigned tickCount = 0;
unsigned delay;


void resetHandler(){
	exit(0);
}

void YKTickHandler(void){
	TCBptr tmp;

	YKTickNum++;
	printNewLine();
	printString("TICK ");
	printUInt(YKTickNum);
	printNewLine();

	tmp = YKTaskList;
	while(tmp->next != NULL){ //Iterate over all tasks
		tmp->delay--;
		if(tmp->state == 2 && tmp->delay == 0){// If task is blocked and delay counter is 0
			tmp->state = 1; // Make it ready
		}
		tmp = tmp->next;
	}
	// printNewLine();
	// printString("Finished TICK");
	// printNewLine();
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
