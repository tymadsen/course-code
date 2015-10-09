#include "yakk.h"
#include "yaku.h"
#include "clib.h"

unsigned int YKoolRunnings; 		// Set when OS is running
unsigned int YKIntDepth;				// Interrupt level counter

unsigned int YKCtxSwCount; 			// must be incremented each time a context switch occurs, defined as the dispatching of a task other than the task that ran most recently.
unsigned int YKIdleCount; 			// must be incremented by the idle task in its while(1) loop. If desired, the user code can use this value to determine CPU utilization.
unsigned int YKTickNum; 				// must be incremented each time the kernel's tick handler runs.

TCBptr YKCurrTask; 							// This will point the currently running (or interrupted) task
TCBptr YKReadyTask; 						// This will point the the highest priority item with ready status
TCBptr YKTaskList; 							// This will hold the pointer to the beginning of the list
TCBptr YKAvailTCBList; 					// This points to the next available task slot in the list

TCB YKTCBArray[MAXTASKS + 1]; 	// Declare size of TCB array


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
	YKCtxSwCount = 0;
	YKTickNum = 0;

	YKAvailTCBList = &(YKTCBArray[0]); // Point to the first item in the YKTCBArray
	for (i = 0; i <= MAXTASKS; i++){ //Go through list and set the next and prev pointers for doubly linked list
		if(i == 0)// Beginning edge case
			YKTCBArray[i].prev = NULL;
		else
			YKTCBArray[i].prev = &(YKTCBArray[i-1]); 

		if(i == MAXTASKS)// End edge case
			YKTCBArray[i].next = NULL;
		else
			YKTCBArray[i].next = &(YKTCBArray[i+1]);
	}
	//create idle task
	YKNewTask(&YKIdleTask, &idleTaskStack[IDLETASKSTACKSIZE], 100);
}

void YKIdleTask(void){
	// Keep incrementing the IdleCount for ever
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
	//Get next available TCB, 
	tmp = YKAvailTCBList;
	YKAvailTCBList = tmp->next;
	//Save context
	saveNewTaskCtx();
	tmp->priority = priority; //Set priority
	tmp->state = 1; //set state to ready (1)
	tmp->delay = 0; //Set delay count to 0
	printString("new TCB values: sp: ");
	printWord((int)tmp->sp);
	printNewLine();
	printString("Priority: ");
	printInt((int)tmp->priority);
	printNewLine();
	/* code to insert an entry in doubly linked ready list sorted by
		 priority numbers (lowest number first).  tmp points to TCB
		 to be inserted */ 
	// If first insertion
	if (YKTaskList == NULL)
	{
		// printString("first task created...\n");
		YKTaskList = tmp;
		tmp->next = NULL;
		tmp->prev = NULL;
		YKCurrTask=YKTaskList;
	}
	else
	{
		// printString("not first task created...\n");
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
}

void YKRun(void){
	// Set global flag to indicate the the system is running
	// printString("YK running...\n");
	YKoolRunnings = 1;
	// If there is a task
	if(YKTaskList != NULL && YKTaskList->priority != 100)
		YKScheduler(0); // Call the scheduler for the first time 
}

void YKDelayTask(unsigned count){
// 	If count should be set
	if(count > 0){
		YKCurrTask->delay = count; // set count of current task TCB
		YKCurrTask->state = 2; // Change the state of the task to blocked
		YKScheduler(1); // Call the scheduler with saveContext flag
	}
}

void YKEnterISR(void){
	// If first ISR level, save context
	if(YKIntDepth == 0)
		saveSP();
	// Increment the interrupt depth counter
	YKIntDepth++;
	// printString("ISR depth: ");
	// printInt(YKIntDepth);
	// printNewLine();
}

void YKExitISR(void){
	// decrement the interrupt depth counter
	// printString("ISR depth: ");
	// printInt(YKIntDepth);
	// printNewLine();
	YKIntDepth--;
	// Call scheduler if leaving bottom level ISR
	if(YKIntDepth == 0)
		YKScheduler(0);
}

void YKScheduler(int saveCtxFlag){
	TCBptr tmp;
	// printString("YKScheduler called ...\n");
	// Get first ready task in list
	tmp = YKTaskList;
	while(tmp->state != 1) // Iterate over tasks until we find a ready one
		tmp = tmp->next;
	// printString("We have a ready task: ");
	// printInt(tmp->priority);
	// printNewLine();
	YKReadyTask = tmp;// Update ready task
	printString("YKCurrTask priority: ");
	printInt(YKCurrTask->priority);
	printNewLine();
	printString("YKReadyTask priority: ");
	printInt(YKReadyTask->priority);
	printNewLine();
	// If the task is different than the currently running task, call dispatcher
	if(YKReadyTask != YKCurrTask){
		// printString("calling dispatcher...\n");
		YKCtxSwCount++;
		YKDispatcher(saveCtxFlag);
		// printString("returning from dispatcher...\n");
	}
}
// C Dispatcher for debugging assembly (see how the compiler does it)
// void YKDispatcher(int saveCtx){
// 	void* ptr;	
// 	if(saveCtx)
// 		printNewLine();
// 	else
// 	{
// 		ptr = YKCurrTask->sp;
// 		YKCurrTask = YKReadyTask;
// 	}
// }

