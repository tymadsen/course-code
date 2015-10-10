/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 */
#include "xgpio.h"          // Provides access to PB GPIO driver.
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xio.h"
#include "time.h"
#include "unistd.h"
#include "mb_interface.h"   // provides the microblaze interrupt enables, etc.
#include "xintc_l.h"        // Provides handy macros for the interrupt controller.
#include "render.h"
#include "renderHelper.h"
#define DEBUG
#define LEFT 0x8			// Left (Hour) button mask
#define RIGHT 0x2			// Right (Second) button mask
#define CENTER 0x1			// Center (Minute) button mask
#define TRUE 1
#define FALSE 0
void print(char *str);

#define FRAME_BUFFER_0_ADDR 0xC1000000  // Starting location in DDR where we will store the images that we display.
#define MAX_SILLY_TIMER 10000000;
#define PIXEL_ADJUSTMENT 4

#define ALIEN_HEIGHT 16
#define WORD_WIDTH 32
#define WHITE 	0x00FFFFFF
#define RED 	0x00FF0000
#define GREEN 	0x0000FF00
#define BLUE 	0x000000FF
#define BLACK 	0x00000000

int fitCounter = 0;			// Counter for fit interrupts, goes up to 100 and resets
int screenUpdateCounter = 0;		// Counter for updating the time, goes up to 20 and resets
int updateSpaceshipCounter = 0;
int currentButtonState;		// Value the button interrupt handler saves button values to
int alienBulletCounter = 0;		//Contains the count until the random time an alien bullet will be fired
int spaceshipCounter = 0;		//Counts to the next time a spaceship will appear
int randBulletTime = 0;
int randSpaceshipTime = 0;
bool started = false;

XGpio gpLED;  // This is a handle for the LED GPIO block.
XGpio gpPB;   // This is a handle for the push-button GPIO block.


void updateScreenElements(){
	if(started){
		updateAllBullets();
		if(currentButtonState & LEFT){
			moveTankLeft();
		}
		else if(currentButtonState & RIGHT) {
			moveTankRight();
		}
		if(currentButtonState & CENTER){
			shootTankBullet();
		}
	}
	return;
}

void timer_interrupt_handler() {
	fitCounter++;
	screenUpdateCounter++;
	alienBulletCounter++;
	spaceshipCounter++;
	updateSpaceshipCounter++;
	// The FIT counter that will update the aliens every half second
	if(fitCounter >= 50) {
		if(started)
			updateAliens();
		fitCounter = 0;
	}
	// The screen will update every 5ms
	if(screenUpdateCounter >= 5) {
		//Call function to update the screen
		updateScreenElements();
		screenUpdateCounter = 0;
	}
	//An alienBullet will fire at a random time between (1*25 - 10*25)
	if(alienBulletCounter >= randBulletTime){
//		xil_printf("Fire Alien Bullet\r\n");
		if(started)
			fireAlienBulletHelper();
		randBulletTime = (rand()%10)*25;
		alienBulletCounter = 0;
	}
	//The spaceship will go across the screen at a random time between 1-20 seconds;
	if(spaceshipCounter >= randSpaceshipTime){
		xil_printf("Send out the saucer\r\n");
		if(started)
			flySpaceship();
		randSpaceshipTime = (rand()%25)*100;
		spaceshipCounter = 0;
	}
	//Will move the spaceship across the screen
	if(updateSpaceshipCounter >= 10){
//		xil_printf("We are updating the saucer position\r\n");
		if(started)
			updateSpaceshipHelper();
		updateSpaceshipCounter = 0;
	}
}

// This is invoked each time there is a change in the button state (result of a push or a bounce).
void pb_interrupt_handler() {
  // Clear the GPIO interrupt.
  XGpio_InterruptGlobalDisable(&gpPB);                // Turn off all PB interrupts for now.
  currentButtonState = XGpio_DiscreteRead(&gpPB, 1);  // Get the current state of the buttons.

  XGpio_InterruptClear(&gpPB, 0xFFFFFFFF);            // Ack the PB interrupt.
  XGpio_InterruptGlobalEnable(&gpPB);                 // Re-enable PB interrupts.
}

void interrupt_handler_dispatcher(void* ptr) {
	int intc_status = XIntc_GetIntrStatus(XPAR_INTC_0_BASEADDR);
	// Check the FIT interrupt first.
	if (intc_status & XPAR_FIT_TIMER_0_INTERRUPT_MASK){
		XIntc_AckIntr(XPAR_INTC_0_BASEADDR, XPAR_FIT_TIMER_0_INTERRUPT_MASK);
		timer_interrupt_handler();
	}
	// Check the push buttons.
	if (intc_status & XPAR_PUSH_BUTTONS_5BITS_IP2INTC_IRPT_MASK){
		XIntc_AckIntr(XPAR_INTC_0_BASEADDR, XPAR_PUSH_BUTTONS_5BITS_IP2INTC_IRPT_MASK);
		pb_interrupt_handler();
	}
}

int main()
{
	init_platform();                   // Necessary for all programs.
	int Status;                        // Keep track of success/failure of system function calls.
	XAxiVdma videoDMAController;
    // Initialize the GPIO peripherals.
    int success;
    success = XGpio_Initialize(&gpPB, XPAR_PUSH_BUTTONS_5BITS_DEVICE_ID);
	// There are 3 steps to initializing the vdma driver and IP.
	// Step 1: lookup the memory structure that is used to access the vdma driver.
	XAxiVdma_Config * VideoDMAConfig = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_0_DEVICE_ID);
	// Step 2: Initialize the memory structure and the hardware.
	if(XST_FAILURE == XAxiVdma_CfgInitialize(&videoDMAController, VideoDMAConfig,	XPAR_AXI_VDMA_0_BASEADDR)) {
		xil_printf("VideoDMA Did not initialize.\r\n");
	}
	// Step 3: (optional) set the frame store number.
	if(XST_FAILURE ==  XAxiVdma_SetFrmStore(&videoDMAController, 2, XAXIVDMA_READ)) {
		xil_printf("Set Frame Store Failed.");
	}
	// Initialization is complete at this point.

	// Setup the frame counter. We want two read frames. We don't need any write frames but the
	// function generates an error if you set the write frame count to 0. We set it to 2
	// but ignore it because we don't need a write channel at all.
	XAxiVdma_FrameCounter myFrameConfig;
	myFrameConfig.ReadFrameCount = 2;
	myFrameConfig.ReadDelayTimerCount = 10;
	myFrameConfig.WriteFrameCount =2;
	myFrameConfig.WriteDelayTimerCount = 10;
	Status = XAxiVdma_SetFrameCounter(&videoDMAController, &myFrameConfig);
	if (Status != XST_SUCCESS) {
		 xil_printf("Set frame counter failed %d\r\n", Status);
		 if(Status == XST_VDMA_MISMATCH_ERROR)
			 xil_printf("DMA Mismatch Error\r\n");
	}
	// Now we tell the driver about the geometry of our frame buffer and a few other things.
	// Our image is 480 x 640.
	XAxiVdma_DmaSetup myFrameBuffer;
	myFrameBuffer.VertSizeInput = 480;    // 480 vertical pixels.
	myFrameBuffer.HoriSizeInput = 640*4;  // 640 horizontal (32-bit pixels).
	myFrameBuffer.Stride = 640*4;         // Dont' worry about the rest of the values.
	myFrameBuffer.FrameDelay = 0;
	myFrameBuffer.EnableCircularBuf=1;
	myFrameBuffer.EnableSync = 0;
	myFrameBuffer.PointNum = 0;
	myFrameBuffer.EnableFrameCounter = 0;
	myFrameBuffer.FixedFrameStoreAddr = 0;
	if(XST_FAILURE == XAxiVdma_DmaConfig(&videoDMAController, XAXIVDMA_READ, &myFrameBuffer)) {
		xil_printf("DMA Config Failed\r\n");
	 }
	// We need to give the frame buffer pointers to the memory that it will use. This memory
	// is where you will write your video data. The vdma IP/driver then streams it to the HDMI
	// IP.
	 myFrameBuffer.FrameStoreStartAddr[0] = FRAME_BUFFER_0_ADDR;
	 myFrameBuffer.FrameStoreStartAddr[1] = FRAME_BUFFER_0_ADDR + 4*640*480;
    // Set the push button peripheral to be inputs.
    XGpio_SetDataDirection(&gpPB, 1, 0x0000001F);
    // Enable the global GPIO interrupt for push buttons.
    XGpio_InterruptGlobalEnable(&gpPB);
    // Enable all interrupts in the push button peripheral.
    XGpio_InterruptEnable(&gpPB, 0xFFFFFFFF);

    microblaze_register_handler(interrupt_handler_dispatcher, NULL);
    XIntc_EnableIntr(XPAR_INTC_0_BASEADDR,
	    		(XPAR_FIT_TIMER_0_INTERRUPT_MASK | XPAR_PUSH_BUTTONS_5BITS_IP2INTC_IRPT_MASK));
    XIntc_MasterEnable(XPAR_INTC_0_BASEADDR);
    microblaze_enable_interrupts();

    if(XST_FAILURE == XAxiVdma_DmaSetBufferAddr(&videoDMAController, XAXIVDMA_READ,myFrameBuffer.FrameStoreStartAddr)) {
		 xil_printf("DMA Set Address Failed Failed\r\n");
	 }
	 // Print a sanity message if you get this far.
	 xil_printf("Woohoo! I made it through initialization.\n\r");
	 // Now, let's get ready to start displaying some stuff on the screen.
	 // The variables framePointer and framePointer1 are just pointers to the base address
	 // of frame 0 and frame 1.
	 // Just paint some large red, green, blue, and white squares in different
	 // positions of the image for each frame in the buffer (framePointer0 and framePointer1).

	// Let's print out the alien as ASCII characters on the screen.
	// Each line of the alien is a 32-bit integer. We just need to strip the bits out and send
	// them to stdout.
	// MSB is the left-most pixel for the alien, so start from the MSB as we print from left to right.


	// This tells the HDMI controller the resolution of your display (there must be a better way to do this).
	XIo_Out32(XPAR_AXI_HDMI_0_BASEADDR, 640*480);

	// Start the DMA for the read channel only.
	if(XST_FAILURE == XAxiVdma_DmaStart(&videoDMAController, XAXIVDMA_READ)){
		xil_printf("DMA START FAILED\r\n");
	}
	int frameIndex = 0;
	// We have two frames, let's park on frame 0. Use frameIndex to index them.
	// Note that you have to start the DMA process before parking on a frame.
	if (XST_FAILURE == XAxiVdma_StartParking(&videoDMAController, frameIndex,  XAXIVDMA_READ)) {
		xil_printf("vdma parking failed\n\r");
	}
	initScreen();
	char input;
	int randBulletTime = (rand()%10)*25;
	int randSpaceshipTime = (rand()%20)*100;
	//setvbuf(stdin, NULL, _IONBF, 0)
	while(1) {
		started = true;
		// Move tank left
//		if(input == '4'){
//			xil_printf("Move tank to the left\r\n");
//			//render(erase)
//			render(true, tank_render_mask, 0);
//			//change position
//			setTankPosition(-PIXEL_ADJUSTMENT);
//			//render(draw)
//			render(false, tank_render_mask, 0);
//		}// Move tank right
//		else if(input == '6') {
//			xil_printf("Move tank to the right\r\n");
//			render(true, tank_render_mask, 0);
//			//change position
//			setTankPosition(PIXEL_ADJUSTMENT);
//			//render(draw)
//			render(false, tank_render_mask, 0);
//		}// Move aliens properly left, right or down
//		else if(input == '8') {
//			xil_printf("Update Alien position\r\n");
//			render(true, alien_block_render_mask, 0);
//			updateAlienBlock();
//			render(false,alien_block_render_mask, 0);
//		}// Prompt for input to kill an alien
//		else if(input == '2') {
//			xil_printf("Which alien would you like to kill? (00 - 54)\r\n");
//			//Take in both characters and compute the alien to kill
//			int alien = 0;
//			input = getchar();
//			int i;
//			// while(1) {
//			// Requires 2 digits This odd for statment allows us to compute the decimal value of the input cahracters
//			for(i = 10; i >= 1; i-=9) {
//				// Input must be digits. If not, keep trying
//				while(((input-'0') > 9) || ((input-'0')<0)){
//					input = getchar();
//				}
//				// Compute the alien index from the character entered.
//				alien += ((int)(input-'0'))*i;
//				input = getchar();
//			}
//				// break;
//			// }
//			// Update array that tracks which aliens are dead
//			setAlienDeaths(alien, true);
//			render(false,alien_block_render_mask, 0);
//		}// Fire tank bullet
//		else if(input == '5') {
//			xil_printf("Fire tank bullet\r\n");
//			fireTankBullet();
//			render(false, tank_bullet_render_mask, 0);
//		}// Fire random alien bullet
//		else if(input == '3'){
//			xil_printf("Fire alien bullet\r\n");
//			fireAlienBullet();
//			render(false, alien_bullet_render_mask,0);
//		}// Move all bullets
//		else if(input == '9') {
//			xil_printf("Update all bullets\r\n");
//			render(true, all_bullet_render_mask, 0);
//			updateBullets();
//			render(false, all_bullet_render_mask, 0);
//		}// Prompt user for which bunker to erode, randomly select a block and erode it
//		else if(input == '7') {
//			xil_printf("Which bunker would you like to erode? (0-3)\r\n");
//			// Take in one character to compute the bunker
//			int bunker = 0;
//			input = getchar();
//			// Number must be between 0 and 3 to select a bunker, otherwise it will wait for a valid entry
//			while(((input-'0') > 3) || ((input-'0') < 0)){
//				input = getchar();
//			}
//			// Compute bunker number
//			bunker = (int)(input-'0');
//			// Choose a random block from 0-9 to erode
//			int block = rand()%10;
//			xil_printf("This is the bunker: %d and block: %d\r\n", bunker, block);
//			// Depending on which bunker was selected, erode the random block of that bunker by setting the erosion
//			// and rendering that damage bitmap
//			if(bunker == 0){
//				xil_printf("Erode bunker 0\r\n");
//				setBunkerErosion0(block);
//				render(false, bunker_0_render_mask, block);
//			}
//			else if(bunker == 1){
//				xil_printf("Erode bunker 1\r\n");
//				setBunkerErosion1(block);
//				render(false, bunker_1_render_mask, block);
//			}
//			else if(bunker == 2){
//				xil_printf("Erode bunker 2\r\n");
//				setBunkerErosion2(block);
//				render(false, bunker_2_render_mask, block);
//			}
//			else if(bunker == 3){
//				xil_printf("Erode bunker 3\r\n");
//				setBunkerErosion3(block);
//				render(false, bunker_3_render_mask, block);
//			}
//		}// Exit program
//		else if(input == 'q'){
//			break;
//		}
//		input = getchar();
	}
	cleanup_platform();

	return 0;
}
