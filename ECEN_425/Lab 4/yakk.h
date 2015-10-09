#ifndef YAKK_H
#define YAKK_H

#include "yaku.h"
#define NULL 0

typedef struct taskblock *TCBptr;

typedef struct taskblock {
    void* sp;                   // Stack pointer 
    int state;                  // state (0 running, 1 ready, 2 delayed/suspended, )
    unsigned char priority;			// priority (unique among all tasks)
    int delay;									// delay (ticks before ready)
    TCBptr next;								// next TCB ptr
    TCBptr prev;								// prev TCB ptr
} TCB;

extern TCBptr YKCurrTask; // This will point the currently running (or interrupted) task
extern TCBptr YKReadyTask; // This will point the the highest priority item with ready status
extern TCBptr YKTaskList; // This will hold the pointer to the beginning of the list
extern TCBptr YKAvailTCBList; // This points to the next available task slot in the list

extern unsigned int YKCtxSwCount; // must be incremented each time a context switch occurs, defined as the dispatching of a task other than the task that ran most recently.

extern unsigned int YKIdleCount; // must be incremented by the idle task in its while(1) loop. If desired, the user code can use this value to determine CPU utilization.

extern unsigned int YKTickNum; // must be incremented each time the kernel's tick handler runs.

extern TCB YKTCBArray[MAXTASKS + 1]; // Declare size of TCB array

/* 
 *	Function in assembly 
 *	Saves the stack pointer (for use in ISR when first level ISR is called)
 */
void saveSP(void);

/* 
 *	Function in assembly 
 *	Saves the new task context (when YKNewTask is called)
 */
void saveNewTaskCtx(void);

/* 
 *	Initialize the OS 
 *	Initializes some global variables
 *	Creates Idle taskstack and task
 */
void YKInitialize(void);

/* 
 *	Function in assembly 
 *	Disable interrupts
 */
void YKEnterMutex(void);

/* 
 *	Function in assembly 
 *	Enable interrupts
 */
void YKExitMutex(void);

/* 
 *	While(1) loop to increment the idle count 
 *	This can be useful to determine performance
 */
void YKIdleTask(void);

/* 
 *	Initailizes TCB for the new task, and calls the scheduler if the OS is running
 */
void YKNewTask(void (* task)(void), void *taskStack, unsigned char priority);

/*
 *	Start the OS, if there is at least 1 user-created tasks, call the scheduler
 */
void YKRun(void);

/*
 *	Sets the delay on the current task, if count is greater than 0
 *	also sets the state to blocked, and calls the scheduler
 */
void YKDelayTask(unsigned count);

/*
 *	Increments the ISR call depth counter and saves the stack pointer on the current TCB if it is 0
 */
void YKEnterISR(void);

/*
 *	Decrements the ISR call depth counter and calls the scheduler if it is 0
 */
void YKExitISR(void);

/*
 *	Finds the highest priority ready task and calls the dispatcher if is is different than the current task
 *	Passes the saveCtxFlag to the dispatcher
 */
void YKScheduler(int saveCtxFlag);

/*	
 *	Function in assembly
 *	Set the current task to the highest priority ready task
 *	If saveCtxFlag is set
 *		save context on current TCB
 *	Set the sp to the ready task's TCB's sp
 *	Restore context from TCB
 *	Then use iret to go to task code
 */
void YKDispatcher(int saveCtxFlag);

/*
 *	Increment YKTickCount
 *	Print "TICK <YKTickCount>"
 */
void YKTickHandler(void);


#endif