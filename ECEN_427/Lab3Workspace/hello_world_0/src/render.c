/*
 * render.c
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */
#include <stdio.h>
#include "render.h"
#include "bitMaps.h"
#include "globals.h"
#define FRAME_BUFFER_0_ADDR 0xC0000000
#define WORD_WIDTH 32
#define WHITE 	0x00FFFFFF
#define RED 	0x00FF0000
#define GREEN 	0x0000FF00
#define BLUE 	0x000000FF
#define BLACK 	0x00000000
#define TANKSTARTY 427
#define TANKSTARTX 50

unsigned int * framePointer0 = (unsigned int *) FRAME_BUFFER_0_ADDR;
unsigned int * framePointer1 = ((unsigned int *) FRAME_BUFFER_0_ADDR) + 640*480;

void clearScreen() {
	int row, col;
	for(row = 0; row <480; row++) {
		 for(col = 0; col <640; col++) {
			 framePointer0[row*640+col] = 0;
			 framePointer1[row*640+col] = 0;
		 }
	}
	return;
}

void initScreen() {
	clearScreen();
	xil_printf("Screen cleared.");
	int row;
	int col;
	//Draws the green line at the bottom of the frame
	for(row = 450; row < 452; row++) {
		for(col = 0; col < 640; col++){
			framePointer0[row*640 + col] = GREEN;
			framePointer1[row*640 + col] = GREEN;
		}
	}
	//Write the score on top of the frame
	//Write Lives
	//Draw the lives
	//Set and draw the bunkers
	//set and draw the tank
	setTankPositionPoint(TANKSTARTX, TANKSTARTY);
	drawTank(false);
	//set and draw the aliens

	return;
}

void drawTank(bool erase)
{
	int row, col;
	point_t temp = getTankPosition();
	xil_printf("position:%d %d", temp.x,temp.y);
	for(row = temp.y; row <= temp.y+TANKHEIGHT; row++) {
		for(col = temp.x; col <= temp.x+TANKWIDTH; col++) {
			if ((tank_15x8[row] & (1<<(WORD_WIDTH-1-col)))) {
			  framePointer0[row*640 + col] = GREEN;
			}
			else {
			  framePointer0[row*640 + col] = BLACK;
		  }
		}
	}
	return;
}
void drawTankBullet(bool erase){}
void drawAliens(bool erase){}
void drawAlienBullets(bool erase){}
void drawBunkers(bool erase){}
