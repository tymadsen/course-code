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
#define LIFE1STARTX 410
#define LIFE2STARTX 445
#define LIFE3STARTX 480
#define LIFE4STARTX 515
#define TANKSTARTY 400
#define TANKSTARTX 98
#define TANKHEIGHT 8
#define TANKWIDTH 15
#define BUNKERWIDTH 24
#define BUNKERHEIGHT 18
#define BUNKERSTARTY 335
#define BUNKER0STARTX 89
#define BUNKER1STARTX 227
#define BUNKER2STARTX 365
#define BUNKER3STARTX 503
#define ALIENHEIGHT 8
#define ALIENWIDTH 12
#define ALIENBLOCKSTARTX 200
#define ALIENBLOCKSTARTY 100

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
	//Write Lives
	//Draw the lives
	//Set and draw the bunkers
	//set and draw the lives tanks
	setTankPositionPoint(LIFE1STARTX, 10);
	drawTank(false);
	setTankPositionPoint(LIFE2STARTX, 10);
	drawTank(false);
	setTankPositionPoint(LIFE3STARTX,10);
	drawTank(false);
	drawBunkers(false, 0);
	drawBunkers(false, 1);
	drawBunkers(false, 2);
	drawBunkers(false, 3);
	//set and draw the aliens
	setTankPositionPoint(TANKSTARTX, TANKSTARTY);
	drawTank(false);
	point_t aBP;
	aBP.x = ALIENBLOCKSTARTX, aBP.y = ALIENBLOCKSTARTY;
	setAlienBlockPosition(aBP);
	drawAliens(false);

	drawScoreLabel();
	drawLivesLabel();


	return;
}

void drawTank(bool erase)
{
	//Use row and col to traverse the bit map of the tank
	int row, col, sRow, sCol;
	//Use sRow and sCol to traverse the screen rows and columns
	point_t temp = getTankPosition();
	xil_printf("position:%d %d", temp.x,temp.y);
	for(row = 0, sRow = 0; row < TANKHEIGHT; row++,sRow += 2) {
		for(col = 0, sCol = 0; col < TANKWIDTH; col++,sCol+=2) {
			//Will print the right color if we are not erasing
			if ((tank_15x8[row] & (1<<(TANKWIDTH-1-col))) && !erase) {
				//Print the same pixel to the immediate 4 pixels
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x)] = GREEN;
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x+1)] = GREEN;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x+1)] = GREEN;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x)] = GREEN;
			}
			else {
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x)] = BLACK;
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x+1)] = BLACK;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x+1)] = BLACK;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x)] = BLACK;
			}
		}

		sCol = 0;
	}
	return;
}

void drawTankBullet(bool erase){

}

void drawAliens(bool erase){
	//Use row and col to traverse the bit map of each alien
	int  alien, alienRow, color;
	//Use sRow and sCol to traverse the screen rows and columns
	point_t pos = getAlienBlockPosition();
//	xil_printf("alien block origin:%d %d", pos.x,pos.y);
//	xil_printf("alien height: %d\n alien width: %d\n", sizeof(word_lives_24x5), sizeof(word_lives_24x5[0]));
	for(alienRow = 0; alienRow < 5; alienRow++){
		color = (alienRow == 0) ? TURQ : (alienRow == 1 || alienRow == 2) ? MAGENTA : ORANGE;
		for(alien = 0; alien < 11; alien++){
			//Will print the right color if we are not erasing

			if(alienRow == 0)
				drawAlien(alien_top_in_12x8, pos, ALIENHEIGHT, ALIENWIDTH, alien, 5, alienRow, 20, true, color, erase);
			else if(alienRow == 1 || alienRow == 2)
				drawAlien(alien_middle_in_12x8, pos, ALIENHEIGHT, ALIENWIDTH, alien, 5, alienRow, 20, true, color, erase);
			else
				drawAlien(alien_bottom_in_12x8, pos, ALIENHEIGHT, ALIENWIDTH, alien, 5, alienRow, 20, true, color, erase);

		}
	}
	return;
}

void drawAlien(const uint32_t* bitmap, point_t pos, int height, int width, int col_index, int col_space, int row_index, int row_space, bool double_size, int color, bool erase){
	int row, col, sRow, sCol;
	for(row = 0, sRow=0; row < height; row++, sRow+=2) {
		for(col = 0, sCol=0; col < width; col++, sCol+=2) {
			//Will print the right color if we are not erasing
			if ((bitmap[row] & (1<<(width-1-col))) && !erase) {
				//Print the same pixel to the immediate 4 pixels
				if(!double_size)
					framePointer0[(sRow+pos.y+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x) + (col_index*(width+col_space))] = color;
				else{
					framePointer0[(sRow+pos.y+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x) + (col_index*(width*2+col_space))] = color;
					framePointer0[(sRow+pos.y+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x+1) + (col_index*(width*2+col_space))] = color;
					framePointer0[(sRow+pos.y+1+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x+1) + (col_index*(width*2+col_space))] = color;
					framePointer0[(sRow+pos.y+1+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x) + (col_index*(width*2+col_space))] = color;
				}

			}
			else {
				if(!double_size)
					framePointer0[(sRow+pos.y+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x) + (col_index*(width+col_space))] = BLACK;
				else{
					framePointer0[(sRow+pos.y+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x) + (col_index*(width*2+col_space))] = BLACK;
					framePointer0[(sRow+pos.y+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x+1) + (col_index*(width*2+col_space))] = BLACK;
					framePointer0[(sRow+pos.y+1+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x+1) + (col_index*(width*2+col_space))] = BLACK;
					framePointer0[(sRow+pos.y+1+(row_index*(height+row_space)))*SCREENWIDTH + (sCol+pos.x) + (col_index*(width*2+col_space))] = BLACK;
				}
			}
		}
	}
}

void drawTopAlien(point_t pos, int row, int col, int sRow, int sCol, int alien, int alienRow, bool erase) {
	if ((alien_top_in_12x8[row] & (1<<(ALIENWIDTH-1-col))) && !erase) {
		//Print the same pixel to the immediate 4 pixels
		int color = (alienRow == 0) ? TURQ : (alienRow == 1 || alienRow == 2) ? MAGENTA : ORANGE;
//		if(alienRow == 1)
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = color;
	}
	else {
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = BLACK;
	}
}

void drawMiddleAlien(point_t pos, int row, int col, int sRow, int sCol, int alien, int alienRow, bool erase){
	if ((alien_middle_in_12x8[row] & (1<<(ALIENWIDTH-1-col))) && !erase) {
		//Print the same pixel to the immediate 4 pixels
		int color = (alienRow == 0) ? BLUE : (alienRow == 1 || alienRow == 2) ? MAGENTA : ORANGE;
//		if(alienRow == 1)
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = color;
	}
	else {
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = BLACK;
	}
}
void drawBottomAlien(point_t pos, int row, int col, int sRow, int sCol, int alien, int alienRow, bool erase){
	if ((alien_bottom_in_12x8[row] & (1<<(ALIENWIDTH-1-col))) && !erase) {
		//Print the same pixel to the immediate 4 pixels
		int color = (alienRow == 0) ? BLUE : (alienRow == 1 || alienRow == 2) ? MAGENTA : ORANGE;
//		if(alienRow == 1)
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = color;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = color;
	}
	else {
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x+1) + (alien*(ALIENWIDTH*2+5))] = BLACK;
		framePointer0[(sRow+pos.y+1+(alienRow*(ALIENHEIGHT+20)))*SCREENWIDTH + (sCol+pos.x) + (alien*(ALIENWIDTH*2+5))] = BLACK;
	}
}
void drawAlienBullets(bool erase){}

void drawBunkers(bool erase, int bunker){
	int row, col;
	int sRow = 0;
	int sCol = 0;
	point_t temp;
	temp.y = BUNKERSTARTY;
	//Set the right coordinates for the corresponding bunker
	if(bunker == 0){
		temp.x = BUNKER0STARTX;
	}
	else if(bunker == 1) {
		temp.x = BUNKER1STARTX;
	}
	else if(bunker == 2) {
		temp.x = BUNKER2STARTX;
	}
	else {
		temp.x = BUNKER3STARTX;
	}
	for(row = 0; row < BUNKERHEIGHT; row++) {
		for(col = 0; col < BUNKERWIDTH; col++) {
			//Will print the right color if we are not erasing
			if ((bunker_24x18[row] & (1<<(BUNKERWIDTH-1-col))) && !erase) {
				//Print the same pixel to the immediate 4 pixels
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x)] = GREEN;
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x+1)] = GREEN;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x+1)] = GREEN;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x)] = GREEN;
			}
			else {
//				xil_printf("blackpixel\n");
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x)] = BLACK;
				framePointer0[(sRow+temp.y)*SCREENWIDTH + (sCol+temp.x+1)] = BLACK;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x+1)] = BLACK;
				framePointer0[(sRow+temp.y+1)*SCREENWIDTH + (sCol+temp.x)] = BLACK;
			}
			sCol += 2;
		}
		sRow += 2;
		sCol = 0;
	}
	return;
}

void drawScoreLabel(){
	int row, col, sRow, sCol;
	int h = 5;
	int w = 30;
	point_t score_pos;
	score_pos.x = 20, score_pos.y = 15;
//	if(letter == 'S')
//		bitmap = (&letter_S_10x10);
	for(row = 0, sRow = 0; row < h; row++, sRow+=2) {
		for(col = 0, sCol = 0; col < w; col++, sCol+=2) {
			//Will print the right color if we are not erasing
			if ((word_score_30x5[row] & (1<<(w-1-col)))) {
				//Print the same pixel to the immediate 4 pixels
				framePointer0[(sRow+score_pos.y)*SCREENWIDTH + (sCol+score_pos.x)] = WHITE;
				framePointer0[(sRow+score_pos.y)*SCREENWIDTH + (sCol+score_pos.x+1)] = WHITE;
				framePointer0[(sRow+score_pos.y+1)*SCREENWIDTH + (sCol+score_pos.x+1)] = WHITE;
				framePointer0[(sRow+score_pos.y+1)*SCREENWIDTH + (sCol+score_pos.x)] = WHITE;
			}
			else {
//				xil_printf("blackpixel\n");
				framePointer0[(sRow+score_pos.y)*SCREENWIDTH + (sCol+score_pos.x)] = BLACK;
				framePointer0[(sRow+score_pos.y)*SCREENWIDTH + (sCol+score_pos.x+1)] = BLACK;
				framePointer0[(sRow+score_pos.y+1)*SCREENWIDTH + (sCol+score_pos.x+1)] = BLACK;
				framePointer0[(sRow+score_pos.y+1)*SCREENWIDTH + (sCol+score_pos.x)] = BLACK;
			}
		}
	}
}

void drawLivesLabel(){
	int row, col, sRow, sCol;
	int h = 5;
	int w = 24;
	point_t lives_pos;
	lives_pos.x = 350, lives_pos.y = 15;
//	if(letter == 'S')
//		bitmap = (&letter_S_10x10);
	for(row = 0, sRow = 0; row < h; row++, sRow+=2) {
		for(col = 0, sCol = 0; col < w; col++, sCol+=2) {
			//Will print the right color if we are not erasing
			if ((word_lives_24x5[row] & (1<<(w-1-col)))) {
				//Print the same pixel to the immediate 4 pixels
				framePointer0[(sRow+lives_pos.y)*SCREENWIDTH + (sCol+lives_pos.x)] = WHITE;
				framePointer0[(sRow+lives_pos.y)*SCREENWIDTH + (sCol+lives_pos.x+1)] = WHITE;
				framePointer0[(sRow+lives_pos.y+1)*SCREENWIDTH + (sCol+lives_pos.x+1)] = WHITE;
				framePointer0[(sRow+lives_pos.y+1)*SCREENWIDTH + (sCol+lives_pos.x)] = WHITE;
			}
			else {
//				xil_printf("blackpixel\n");
				framePointer0[(sRow+lives_pos.y)*SCREENWIDTH + (sCol+lives_pos.x)] = BLACK;
				framePointer0[(sRow+lives_pos.y)*SCREENWIDTH + (sCol+lives_pos.x+1)] = BLACK;
				framePointer0[(sRow+lives_pos.y+1)*SCREENWIDTH + (sCol+lives_pos.x+1)] = BLACK;
				framePointer0[(sRow+lives_pos.y+1)*SCREENWIDTH + (sCol+lives_pos.x)] = BLACK;
			}
		}
	}
}
