# 1 "lab4b_app.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab4b_app.c"






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
# 8 "lab4b_app.c" 2
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
# 9 "lab4b_app.c" 2



int TaskStack[256];

void Task(void);

void main(void)
{
    YKInitialize();

    printString("Creating task...\n");
    YKNewTask(Task, (void *) &TaskStack[256], 0);

    printString("Starting kernel...\n");
    YKRun();
}

void Task(void)
{
    unsigned idleCount;
    unsigned numCtxSwitches;

    printString("Task started.\n");
    while (1)
    {
        printString("Delaying task...\n");

        YKDelayTask(2);

        YKEnterMutex();
        numCtxSwitches = YKCtxSwCount;
        idleCount = YKIdleCount;
        YKIdleCount = 0;
        YKExitMutex();

        printString("Task running after ");
        printUInt(numCtxSwitches);
        printString(" context switches! YKIdleCount is ");
        printUInt(idleCount);
        printString(".\n");
    }
}
