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
#define FRAME_BUFFER_0_ADDR 0xC1000000
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
#define BLOCKWIDTH 6
#define BLOCKHEIGHT 6
#define ALIENHEIGHT 8
#define ALIENWIDTH 12
#define ALIENXSPACING 2
#define ALIENYSPACING 20
#define ALIENBLOCKSTARTX 200
#define ALIENBLOCKSTARTY 100
#define ALIENSPERROW 11
#define SCORELABELX 20
#define SCORELABELY 15
#define SCOREX 90
#define SCOREY 15
#define BULLETHEIGHT 5
#define BULLETWIDTH 3

unsigned int * foreground = (unsigned int *) FRAME_BUFFER_0_ADDR;
unsigned int * background = ((unsigned int *) FRAME_BUFFER_0_ADDR) + SCREENWIDTH*SCREENHEIGHT;
unsigned int * activeFramePointer = (unsigned int *) FRAME_BUFFER_0_ADDR;
bool alien_in = true;
void clearScreen() {
	int row, col;
	//Clear the screen by initializing every pixel to black (0)
	for(row=0; row<SCREENHEIGHT; row++) {
		 for(col=0; col<SCREENWIDTH; col++) {
			 foreground[row*SCREENWIDTH+col] = 0;
			 background[row*SCREENWIDTH+col] = 0;
		 }
	}
	return;
}

void initScreen() {
	clearScreen();
	xil_printf("Screen cleared.\r\n");
	int row;
	int col;
	//Draws the green line at the bottom of the frame
	for(row = SCREENHEIGHT-30; row < SCREENHEIGHT-28; row++) {
		for(col = 0; col < SCREENWIDTH; col++){
			foreground[row*SCREENWIDTH + col] = GREEN;
			background[row*SCREENWIDTH + col] = GREEN;
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
	drawNewBunkers();
	activeFramePointer = background;
	drawNewBunkers();
	activeFramePointer = foreground;
	
	//TEST code, delete it
	setBunkerErosion0(3);
	drawBunkerErosion(0,3);
	setBunkerErosion1(7);
	setBunkerErosion1(7);
	drawBunkerErosion(1,7);
	setBunkerErosion2(8);
	setBunkerErosion2(8);
	setBunkerErosion2(8);
	drawBunkerErosion(2,8);
	setBunkerErosion3(9);
	drawBunkerErosion(3,9);

	//set and draw the aliens
	setTankPositionPoint(TANKSTARTX, TANKSTARTY);
	drawTank(false);
	setTankBulletPositionXY(bullet_offscreen, bullet_offscreen);
	point_t aBP;
	aBP.x = ALIENBLOCKSTARTX, aBP.y = ALIENBLOCKSTARTY;
	setAlienBlockPosition(aBP);
	drawAliens(false, true);

	return;
}

void render(bool erase, int render_objects_mask, short index) {
//	xil_printf("Objects mask: %d\r\n", render_objects_mask);
//	xil_printf("anded: %d\r\n",(render_objects_mask & alien_block_render_mask));
	if((render_objects_mask & tank_render_mask) != 0)
		drawTank(erase);
	if((render_objects_mask & tank_bullet_render_mask) != 0)
		drawTankBullet(erase);
	if((render_objects_mask & alien_block_render_mask) != 0){
		drawAliens(erase, alien_in);
		if(!erase) {
			alien_in = !alien_in; }
	}
	if((render_objects_mask & alien_bullet_render_mask) != 0)
		drawAlienBullet(erase, index);
	if((render_objects_mask & bunker_render_mask) != 0)
		drawBunkerErosion(index,0);
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

void drawNewBunkers() {
	point_t bunker_pos;
	bunker_pos.y = BUNKERSTARTY;
	bunker_pos.x = BUNKERSTARTX;
	// TODO: this will need to change to draw each bunker individually
	drawBitmapRepeat(bunker_24x18, bunker_pos, BUNKERWIDTH, BUNKERHEIGHT, true, GREEN, false, BUNKERXSPACING, 4);
}

void drawBunkerErosion(short bunker, short block){
	point_t block_pos;
	/* Set x position to the start of the bunkers, and then add an offset of 
	 * twice the bunker number (since we are doubling the bitmap to pixel ratio) times the width of
	 * the bunker plus the gap between bunkers. Also adds the width of the block
	*/
	short row = block/4;
	short col = block - (row*4);
	//comment this out if we want to say the bottom right block is block 11 instead of block 9
	if(block == 9)
		col = 3;
	block_pos.x = BUNKERSTARTX + (2*(bunker*(BUNKERWIDTH+BUNKERXSPACING) + (BLOCKWIDTH*col)));
	block_pos.y = BUNKERSTARTY + (2*BLOCKHEIGHT*(row));
	// Get erosion state to know which bitmap to use
//	xil_printf("Bunker: %d\r\n", bunker);
//	xil_printf("Block: %d\r\n", block);
	uint32_t erosionState = 0;
	switch(bunker){
		case 0: erosionState = getBunkerErosion0();
		break;
		case 1: erosionState = getBunkerErosion1();
		break;
		case 2: erosionState = getBunkerErosion2();
		break;
		case 3: erosionState = getBunkerErosion3();
		break;
		default: break;
	}
//	xil_printf("erosion state: 0x%08x\r\n", erosionState);
//	short erosion_block = 1;
	uint32_t erosion_block = ((erosionState & (0x7 << (3*block))) >> (3*block));
//	xil_printf("erosion_block: 0x%03x \r\n", erosion_block);
	// Draw bunker erosion using (erase = true) flag
	if(erosion_block == 0x0){
		//do nothing
	}
	else if(erosion_block == 0x1){
//		xil_printf("erosion 0 drawn on bunker: %d, block: %d \r\n", bunker, block);
		drawBitmap(bunkerDamage0_6x6, block_pos, BLOCKWIDTH, BLOCKHEIGHT, true, BLACK, false);
	}
	else if(erosion_block == 0x2){
//		xil_printf("erosion 1 drawn on bunker: %d, block: %d \r\n", bunker, block);
		drawBitmap(bunkerDamage1_6x6, block_pos, BLOCKWIDTH, BLOCKHEIGHT, true, BLACK, false);
	}
	else if(erosion_block == 0x3){
//		xil_printf("erosion 2 drawn on bunker: %d, block: %d \r\n", bunker, block);
		drawBitmap(bunkerDamage2_6x6, block_pos, BLOCKWIDTH, BLOCKHEIGHT, true, BLACK, false);
	}
	else {
//		xil_printf("erosion 3 drawn on bunker: %d, block: %d \r\n", bunker, block);
		drawBitmap(bunkerDamage3_6x6, block_pos, BLOCKWIDTH, BLOCKHEIGHT, true, BLACK, false);
	}

}

void drawTank(bool erase) {
	point_t tank_pos = getTankPosition();
	drawBitmap(tank_15x8, tank_pos, 15, 8, true, GREEN, erase);
}

void drawTankBullet(bool erase) {
	point_t tankBulletPosition = getTankBulletPosition();
	drawBitmap(tank_bullet_5x3, tankBulletPosition, BULLETWIDTH, BULLETHEIGHT, true, GREEN, erase);
	return;
}

void drawAliens(bool erase, bool in_pose) {
	//Use row and col to traverse the bit map of each alien
	//xil_printf("We are in the drawAliens Function %d\r\n", in_pose);
	int  alienRow, color;
	point_t pos = getAlienBlockPosition();
	bool* deaths = getAlienDeaths();
//	const uint32_t* bitmap;
	for(alienRow = 0; alienRow < 5; alienRow++){
		color = (alienRow == 0) ? TURQ : (alienRow == 1 || alienRow == 2) ? MAGENTA : ORANGE;
		//Will print the right color if we are not erasing

		int col;
		point_t new_pos = pos;
		//offset is the distance between the x position of each new alien
		int offset = ALIENWIDTH+ALIENXSPACING;
		//Go through each alien in the row and drawing them. Will draw if its not dead
		for(col = 0; col < ALIENSPERROW; col++){
			//Will only apply the offset to every alien but the first one
			if(col > 0){
				new_pos.x += 2*offset;
			}
			// drawBitmap(bitmap, pos, width, height, double_size, color, erase);
			bool eraseDead = erase || deaths[col+(ALIENSPERROW*alienRow)];
			if(alienRow == 0){
				if(in_pose)
					drawBitmap(alien_top_in_12x8, new_pos, ALIENWIDTH, ALIENHEIGHT, true, color, eraseDead);
				else
					drawBitmap(alien_top_out_12x8, new_pos, ALIENWIDTH, ALIENHEIGHT, true, color, eraseDead);
			}
			else if(alienRow == 1 || alienRow == 2){
				if(in_pose)
					drawBitmap(alien_middle_in_12x8, new_pos, ALIENWIDTH, ALIENHEIGHT, true, color, eraseDead);
				else
					drawBitmap(alien_middle_out_12x8, new_pos, ALIENWIDTH, ALIENHEIGHT, true, color, eraseDead);
			}
			else{
				if(in_pose)
					drawBitmap(alien_bottom_in_12x8, new_pos, ALIENWIDTH, ALIENHEIGHT, true, color, eraseDead);
				else
					drawBitmap(alien_bottom_out_12x8, new_pos, ALIENWIDTH, ALIENHEIGHT, true, color, eraseDead);
			}

		}
			// drawBitmapRepeat(bitmap, pos, ALIENWIDTH, ALIENHEIGHT, true, color, erase, ALIENXSPACING, ALIENSPERROW, true);
			// drawBitmapRepeat(bitmap, pos, ALIENWIDTH, ALIENHEIGHT, true, color, erase, ALIENXSPACING, ALIENSPERROW, true);
		//Update the position by putting x back at the starting point and moving y down to the next row
		new_pos.x = pos.x;
		pos.y += (ALIENHEIGHT+ALIENYSPACING);
	}
	return;
}

void drawAlienBullet(bool erase, short bullet_number) {

}

void drawBitmap(const uint32_t* bitmap, point_t pos, int width, int height, bool double_size, int color, bool erase) {
	int sRow, sCol, row, col;

	for(row = 0, sRow=0; row < height; row++, sRow+=2) {
		for(col = 0, sCol=0; col < width; col++, sCol+=2) {
			//Will print the right color if we are not erasing
			if ((bitmap[row] & (1<<(width-1-col))) && !erase) {
				if(!double_size)//Only print the bitmap to size
					activeFramePointer[(pos.y*SCREENWIDTH + pos.x)] = color;
				else{
					//Expand each pixel to 4 pixels
					activeFramePointer[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x)] = color;
					activeFramePointer[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x+1)] = color;
					activeFramePointer[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x)] = color;
					activeFramePointer[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x+1)] = color;
				}
			}
			else {//paint black
				if(!double_size)
					activeFramePointer[(pos.y*SCREENWIDTH + pos.x)] = background[(pos.y*SCREENWIDTH + pos.x)];
				else{
					activeFramePointer[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x)] = background[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x)];
					activeFramePointer[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x+1)] = background[(sRow+pos.y)*SCREENWIDTH + (sCol+pos.x+1)];
					activeFramePointer[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x)] = background[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x)];
					activeFramePointer[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x+1)] = background[(sRow+pos.y+1)*SCREENWIDTH + (sCol+pos.x+1)];
				}
			}
		}
	}
}

void drawBitmapRepeat(const uint32_t* bitmap, point_t pos, int width, int height, bool double_size, int color, bool erase, int x_space, int times) {
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
