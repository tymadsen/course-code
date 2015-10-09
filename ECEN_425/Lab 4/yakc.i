# 1 "yakc.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "yakc.c"
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
# 2 "yakc.c" 2

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
# 4 "yakc.c" 2

unsigned int YKoolRunnings;
unsigned int YKIntDepth;

unsigned int YKCtxSwCount;
unsigned int YKIdleCount;
unsigned int YKTickNum;

TCBptr YKCurrTask;
TCBptr YKReadyTask;
TCBptr YKTaskList;
TCBptr YKAvailTCBList;

TCB YKTCBArray[10 + 1];


void YKInitialize(void){
 int i;
 TCBptr tmp;
 TCBptr tmp2;

 int idleTaskStack[256];


 YKIdleCount = 0;
 YKoolRunnings = 0;
 YKIntDepth = 0;
 YKCtxSwCount = 0;
 YKTickNum = 0;

 YKAvailTCBList = &(YKTCBArray[0]);
 for (i = 0; i <= 10; i++){
  if(i == 0)
   YKTCBArray[i].prev = 0;
  else
   YKTCBArray[i].prev = &(YKTCBArray[i-1]);

  if(i == 10)
   YKTCBArray[i].next = 0;
  else
   YKTCBArray[i].next = &(YKTCBArray[i+1]);
 }

 YKNewTask(&YKIdleTask, &idleTaskStack[256], 100);
}

void YKIdleTask(void){

 while(1){
  YKIdleCount++;
 }
}

void YKNewTask(void (*task)(void), void *taskStack, unsigned char priority){
 TCBptr tmp;
 TCBptr tmp2;

 printString("New task called ...\n");
 printString("Taskstack ptr val: ");
 printWord((int)taskStack);
 printNewLine();
 printString("Taskcode ptr val: ");
 printWord((int)task);
 printNewLine();

 tmp = YKAvailTCBList;
 YKAvailTCBList = tmp->next;

 saveNewTaskCtx();
 tmp->priority = priority;
 tmp->state = 1;
 tmp->delay = 0;
 printString("new TCB values: sp: ");
 printWord((int)tmp->sp);
 printNewLine();
 printString("Priority: ");
 printInt((int)tmp->priority);
 printNewLine();




 if (YKTaskList == 0)
 {

  YKTaskList = tmp;
  tmp->next = 0;
  tmp->prev = 0;
  YKCurrTask=YKTaskList;
 }
 else
 {

  tmp2 = YKTaskList;
  while (tmp2->priority < tmp->priority)
   tmp2 = tmp2->next;
  if (tmp2->prev == 0)
   YKTaskList = tmp;
  else
   tmp2->prev->next = tmp;
  tmp->prev = tmp2->prev;
  tmp->next = tmp2;
  tmp2->prev = tmp;
 }

 if(YKoolRunnings)
  YKScheduler(0);
}

void YKRun(void){


 YKoolRunnings = 1;

 if(YKTaskList != 0 && YKTaskList->priority != 100)
  YKScheduler(0);
}

void YKDelayTask(unsigned count){

 if(count > 0){
  YKCurrTask->delay = count;
  YKCurrTask->state = 2;
  YKScheduler(1);
 }
}

void YKEnterISR(void){

 if(YKIntDepth == 0)
  saveSP();

 YKIntDepth++;



}

void YKExitISR(void){




 YKIntDepth--;

 if(YKIntDepth == 0)
  YKScheduler(0);
}

void YKScheduler(int saveCtxFlag){
 TCBptr tmp;


 tmp = YKTaskList;
 while(tmp->state != 1)
  tmp = tmp->next;



 YKReadyTask = tmp;
 printString("YKCurrTask priority: ");
 printInt(YKCurrTask->priority);
 printNewLine();
 printString("YKReadyTask priority: ");
 printInt(YKReadyTask->priority);
 printNewLine();

 if(YKReadyTask != YKCurrTask){

  YKCtxSwCount++;
  YKDispatcher(saveCtxFlag);

 }
}
