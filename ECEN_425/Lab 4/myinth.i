# 1 "myinth.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myinth.c"
# 1 "clib.h" 1



void print(char *string, int length);
void printNewLine(void);
void printChar(char c);
void printString(char *string);


void printInt(int val);
void printLong(long val);
void printUInt(unsigned val);
void printULong(unsigned long val);


void printByte(char val);
void printWord(int val);
void printDWord(long val);


void exit(unsigned char code);


void signalEOI(void);
# 2 "myinth.c" 2
# 1 "yakk.h" 1



# 1 "yaku.h" 1
# 5 "yakk.h" 2


typedef struct taskblock *TCBptr;

typedef struct taskblock {
    void* sp;
    int state;
    unsigned char priority;
    int delay;
    TCBptr next;
    TCBptr prev;
} TCB;

extern TCBptr YKCurrTask;
extern TCBptr YKReadyTask;
extern TCBptr YKTaskList;
extern TCBptr YKAvailTCBList;

extern unsigned int YKCtxSwCount;

extern unsigned int YKIdleCount;

extern unsigned int YKTickNum;

extern TCB YKTCBArray[10 + 1];





void saveSP(void);





void saveNewTaskCtx(void);






void YKInitialize(void);





void YKEnterMutex(void);





void YKExitMutex(void);





void YKIdleTask(void);




void YKNewTask(void (* task)(void), void *taskStack, unsigned char priority);




void YKRun(void);





void YKDelayTask(unsigned count);




void YKEnterISR(void);




void YKExitISR(void);





void YKScheduler(int saveCtxFlag);
# 109 "yakk.h"
void YKDispatcher(int saveCtxFlag);





void YKTickHandler(void);
# 3 "myinth.c" 2


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
 while(tmp->next != 0){
  tmp->delay--;
  if(tmp->state == 2 && tmp->delay == 0){
   tmp->state = 1;
  }
  tmp = tmp->next;
 }



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
