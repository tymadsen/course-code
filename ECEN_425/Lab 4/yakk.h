#ifndef YAKK_H
#define YAKK_H

#include "yaku.h"
#define NULL 0

typedef struct taskblock *TCBptr

typedef struct taskblock {
    int* sp;                    // Stack pointer 
    int state;                  // state (0 running, 1 ready, 2 delayed/suspended, )
    unsigned char priority;
    int delay;
    TCBptr next;
    TCBptr prev;
} TCB;

TCBptr YKCurrTask;
TCBptr YKTaskList;
// TCBptr YKBlockList;
TCBptr YKAvailTCBList;

TCB YKTCBArray[MAXTASKS + 1];

void YKInitialize(void);

void YKEnterMutex(void);

void YKExitMutex(void);

void YKNewTask(void (* task)(void), void *taskStack, unsigned char priority);

void YKRun(void);

void YKDelayTask(unsigned count);

void YKEnterISR(void);

void YKExitISR(void);

void YKScheduler(int saveCtxFlag);

void YKDispatcher(int saveCtxFlag);

void YKTickHandler(void);

unsigned int YKCtxSwCount; // must be incremented each time a context switch occurs, defined as the dispatching of a task other than the task that ran most recently.

unsigned int YKIdleCount; // must be incremented by the idle task in its while(1) loop. If desired, the user code can use this value to determine CPU utilization.

unsigned int YKTickNum; // must be incremented each time the kernel's tick handler runs.

#endif