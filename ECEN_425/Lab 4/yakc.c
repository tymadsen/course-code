#include "yakk.h"
#include "yaku.h"

int YKoolRunnings;
int YKIntDepth;

void YKInitialize(void){
	int i;
	TCBptr tmp;
	TCBptr tmp2;
	//allocate idleTask stack 
	int idleTaskStack[IDLETASKSTACKSIZE];

	//initialize some globals
	YKIdleCount = 0;
	YKoolRunnings = 0;
	YKIntDepth = 0;

	/* code to construct singly linked available TCB list from initial
		 array */ 

	YKAvailTCBList = &(YKTCBArray[0]);
	for (i = 0; i < MAXTASKS; i++)
		YKTCBArray[i].next = &(YKTCBArray[i+1]);
	KTCBArray[MAXTASKS].next = NULL;
	//create idle task
	YKNewTask(&YKIdleTask, &idleTaskStack[IDLETASKSTACKSIZE], 100);
}

void YKEnterMutex(void){
	//Disable interrupts
	//This will be in assembly
}

void YKExitMutex(void){
	//Enable interrupts
	//This will be in assembly
}

void YKIdleTask(void){
	while(1){
		YKIdleCount++;
	}
}

void YKNewTask(void (* task)(void), void *taskStack, unsigned char priority){
	TCBptr tmp;
	TCBptr tmp2;
	//IN C:
		//Save context
	saveNewTaskCtx();
		//Get next available TCB, 
	/* code to grab an unused TCB from the available list */

	tmp = YKAvailTCBList;
	YKAvailTCBList = tmp->next;
	//Set priority, and sp
	//set state to ready (1)
	//Set delay count
	tmp->sp = taskStack;
	tmp->priority = priority;
	tmp->state = 1; //Ready
	tmp->delay = 0;

	/* code to insert an entry in doubly linked ready list sorted by
		 priority numbers (lowest number first).  tmp points to TCB
		 to be inserted */ 

	if (YKTaskList == NULL)	/* is this first insertion? */
	{
		YKTaskList = tmp;
		tmp->next = NULL;
		tmp->prev = NULL;
	}
	else			/* not first insertion */
	{
		tmp2 = YKTaskList;	/* insert in sorted ready list */
		while (tmp2->priority < tmp->priority)
			tmp2 = tmp2->next;	/* assumes idle task is at end */
		if (tmp2->prev == NULL)	/* insert in list before tmp2 */
			YKTaskList = tmp;
		else
			tmp2->prev->next = tmp;
		tmp->prev = tmp2->prev;
		tmp->next = tmp2;
		tmp2->prev = tmp;
	}
	//Determine if we call scheduler
	if(YKoolRunnings)
		YKScheduler(0);
	else
		YKCurrTask = YKTaskList; // Set current task to highest priority task

}

void YKRun(void){
	YKoolRunnings = 1;
	if(YKTaskList != NULL && YKTaskList->priority != 100)
		YKScheduler(0);
	// If there is a task
	// Call the scheduler for the first time 
	// Set global flag to indicate the the system is running
}

void YKDelayTask(unsigned count){
// 	If count is greater than 0
	if(count > 0){
		YKCurrTask->delay = count; // set count of current task TCB
		YKCurrTask->state = 2; // Change the state of the task to blocked
		YKScheduler(1); // Call the scheduler with saveContext flag
	}
	else
		return;
// else
// 	return
}

void YKEnterISR(void){
	// If first ISR level, save context

	// Increment the interrupt depth counter
	YKIntDepth++;
}

void YKExitISR(void){
	// decrement the interrupt depth counter
	YKIntDepth--;
	// Call scheduler if leaving bottom level ISR
	if(YKIntDepth == 0)
		YKScheduler(0);
}

void YKScheduler(int saveCtxFlag){
	TCBptr tmp;
	tmp = YKTaskList;
	while(tmp->next != NULL){ //Iterate over all tasks
		if(tmp->state == 2 && tmp->delay == 0){// If task is blocked and delay counter is 0
			tmp->state = 1; // Make it ready
		}
		tmp = tmp->next;
	}
	// Get first ready task in list
	tmp = YKTaskList;
	while(tmp->state != 1) // Iterate over tasks until we find a ready one
		tmp = tmp->next;

	// If the task is different than the currently running task, call dispatcher
	if(tmp != YKCurrTask)
		YKDispatcher(saveCtxFlag);
	else
		return;
}

void YKTickHandler(void){
	// for(each task in blocked)
	// 	decrement delayCount
	// if count is 0
	// 	set state to ready
}
