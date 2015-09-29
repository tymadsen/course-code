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
#define SCREENWIDTH 640
#define SCREENHEIGHT 480
#define WORD_WIDTH 32
#define WHITE 	0x00FFFFFF
#define RED 	0x00FF0000
#define GREEN 	0x0000FF00
#define BLUE 	0x000000FF
#define MAGENTA	0x00CC00FF
#define TURQ	0x0000FFFF
#define YELLOW 	0x00FFFF00
#define ORANGE 	0x00FF6600
#define PINK 	0x00FF99CC
#define BLACK 	0x00000000
#define LIFESTARTX 410
#define LIFESTARTY 10
#define LIFEXSPACING 5
#define LIVESLABELX 350
#define LIVESLABELY 15
#define LIVESLEFT 3
#define TANKSTARTY 400
#define TANKSTARTX 98
#define TANKHEIGHT 8
#define TANKWIDTH 15
#define BUNKERWIDTH 24
#define BUNKERHEIGHT 18
#define BUNKERXSPACING 45
#define BUNKERSTARTY 335
#define BUNKERSTARTX 89
#define ALIENHEIGHT 8
#define ALIENWIDTH 12
#define ALIENXSPACING 2
#define ALIENYSPACING 20
#define ALIENBLOCKSTARTX 200
#define ALIENBLOCKSTARTY 100
#define ALIENSPERROW 11
#define SCORELABELX 20
#define SCORELABELY 15
#define SCOREX	90
#define SCOREY	15

unsigned int * framePointer0 = (unsigned int *) FRAME_BUFFER_0_ADDR;
unsigned int * framePointer1 = ((unsigned int *) FRAME_BUFFER_0_ADDR) + SCREENWIDTH*SCREENHEIGHT;

void clearScreen() {
	int row, col;
	for(row=0; row<SCREENHEIGHT; row++) {
		 for(col=0; col<SCREENWIDTH; col++) {
			 framePointer0[row*SCREENWIDTH+col] = 0;
			 framePointer1[row*SCREENWIDTH+col] = 0;
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
	for(row = SCREENHEIGHT-30; row < SCREENHEIGHT-28; row++) {
		for(col = 0; col < SCREENWIDTH; col++){
			framePointer0[row*SCREENWIDTH + col] = GREEN;
			framePointer1[row*SCREENWIDTH + col] = GREEN;
		}
	}
	//Write the score on top of the frame
	drawScoreLabel();
	drawScore();
	//Write Lives
	//Draw the lives
	drawLivesLabel();
	//set and draw the lives tanks
	drawLives();
	//Set and draw the bunkers
	drawBunkers();
	//set and draw the aliens
	setTankPositionPoint(TANKSTARTX, TANKSTARTY);
	drawTank(false);
	point_t aBP;
	aBP.x = ALIENBLOCKSTARTX, aBP.y = ALIENBLOCKSTARTY;
	setAlienBlockPosition(aBP);
	drawAliens(false);

	return;
}

void drawScoreLabel() {
	point_t score_label_pos;
	score_label_pos.x = SCORELABELX, score_label_pos.y = SCORELABELY;
	drawBitmap(word_score_30x5, score_label_pos, 30, 5, true, WHITE, false);
}

void drawScore() {
	point_t score_pos;
	score_pos.x = SCOREX, score_pos.y = SCOREY;
	drawBitmap(number_0_5x5, score_pos, 5, 5, true, GREEN, false);
}

void drawLivesLabel() { 
	point_t lives_label_pos;
	lives_label_pos.x = LIVESLABELX, lives_label_pos.y = LIVESLABELY;
	drawBitmap(word_lives_24x5, lives_label_pos, 24, 5, true, WHITE, false);
}

void drawLives() {
	point_t lives_pos;
	lives_pos.x = LIFESTARTX, lives_pos.y = LIFESTARTY;
	drawBitmapRepeat(tank_15x8, lives_pos, 15, 8, true, GREEN, false, LIFEXSPACING, LIVESLEFT);
}

void drawBunkers(){
	point_t bunker_pos;
	bunker_pos.y = BUNKERSTARTY;
	bunker_pos.x = BUNKERSTARTX;
	drawBitmapRepeat(bunker_24x18, bunker_pos, 24, 18, true, GREEN, false, BUNKERXSPACING, 4);
}

void drawTank(bool erase) {
	point_t tank_pos = getTankPosition();
	drawBitmap(tank_15x8, tank_pos, 15, 8, true, GREEN, erase);
}

void drawTankBullet(bool erase){

}

void drawAliens(bool erase){
	//Use row and col to traverse the bit map of each alien
	int  alienRow, color;
	point_t pos = getAlienBlockPosition();
	for(alienRow = 0; alienRow < 5; alienRow++){
		color = (alienRow == 0) ? TURQ : (alienRow == 1 || alienRow == 2) ? MAGENTA : ORANGE;
		//Will print the right color if we are not erasing
		if(alienRow == 0)
			drawBitmapRepeat(alien_top_in_12x8, pos, ALIENWIDTH, ALIENHEIGHT, true, color, erase, ALIENXSPACING, ALIENSPERROW);
		else if(alienRow == 1 || alienRow == 2)
			drawBitmapRepeat(alien_middle_in_12x8, pos, ALIENWIDTH, ALIENHEIGHT, true, color, erase, ALIENXSPACING, ALIENSPERROW);
		else
			drawBitmapRepeat(alien_bottom_in_12x8, pos, ALIENWIDTH, ALIENHEIGHT, true, color, erase, ALIENXSPACING, ALIENSPERROW);
		pos.y += (ALIENHEIGHT+ALIENYSPACING);
	}
	return;
}

void drawAlienBullets(bool erase){

}

void drawBitmap(const uint32_t* bitmap, point_t pos, int width, int height, bool double_size, int color, bool erase) {
	int sRow, sCol, row, col;
	for(row = 0, sRow=0; row < height; row++, sRow+=2) {
		for(col = 0, sCol=0; col < width; col++, sCol+=2) {
			//Will print the right color if we are not erasing
			if ((bitmap[row] & (1<<(width-1-col))) && !erase) {
				//Print the same pixel to the immediate 4 pixels
				if(!double_size)
					framePointer0[(pos.y*SCREENWIDTH + pos.x)] = color;
				else{
					framePointer0[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x)] = color;
					framePointer0[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x+1)] = color;
					framePointer0[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x)] = color;
					framePointer0[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x+1)] = color;
				}
			}
			else {
				if(!double_size)
					framePointer0[(pos.y*SCREENWIDTH + pos.x)] = BLACK;
				else{
					framePointer0[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x)] = BLACK;
					framePointer0[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x+1)] = BLACK;
					framePointer0[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x)] = BLACK;
					framePointer0[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x+1)] = BLACK;
				}
			}
		}
	}
}

void drawBitmapRepeat(const uint32_t* bitmap, point_t pos, int width, int height, bool double_size, int color, bool erase, int x_space, int times){
	int element_num;
	int offset = width+x_space;
	for(element_num = 0; element_num < times; element_num++){
		if(element_num >0){
			pos.x += offset;
			if(double_size)
				pos.x += offset;
		}
		drawBitmap(bitmap, pos, width, height, double_size, color, erase);
	}
}
