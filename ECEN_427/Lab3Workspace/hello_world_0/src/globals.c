/*
 * globals.c
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */

#include "globals.h"

#define TANKWIDTH 15
#define TANKHEIGHT 8
point_t tankPosition;
point_t tankBulletPosition;
point_t alienBlockPosition;
aBullet aBullet0;
aBullet aBullet1;
aBullet aBullet2;
aBullet aBullet3;
//short aBullet0Free;
//short aBullet1Free;
//short aBullet2Free;
//short aBullet3Free;
//short aBulletType0;
//short aBulletType1;
//short aBulletType2;
//short aBulletType3;
bool alienRight = true;
bool alienOnLeftScreen = false;
int alien_block_width = 4*10 + 11*12*2;
int alienSpacing = 12*2+4;

//srand((unsigned)time(NULL));

//int t = rand();

uint32_t bunker0State = 0;
uint32_t bunker1State = 0;
uint32_t bunker2State = 0;
uint32_t bunker3State = 0;
bool alienDeaths[55] = {false, false, false, false, false, false, false, false, false, false, false,
						false, false, false, false, false, false, false, false, false, false, false,
						false, false, false, false, false, false, false, false, false, false, false,
						false, false, false, false, false, false, false, false, false, false, false,
						false, false, false, false, false, false, false, false, false, false, false};


point_t getTankPosition() {
	return tankPosition;
}

void setTankPosition(signed short pixels) {
	tankPosition.x += pixels;
	if(tankPosition.x < 0){
		tankPosition.x = 0;
	}
	if(tankPosition.x + (TANKWIDTH*2) > 640){
		tankPosition.x = 640 - (TANKWIDTH*2);
	}
	return;
}

void setTankPositionPoint(int x, int y) {
	tankPosition.x = x;
	tankPosition.y = y;
	return;
}

point_t getTankBulletPosition() {
	return tankBulletPosition;
}

void setTankBulletPositionXY(int x, int y){
	tankBulletPosition.x = x;
	tankBulletPosition.y = y;
	return;
}

void setTankBulletPosition(point_t point) {
	tankBulletPosition = point;
	return;
}

void fireTankBullet() {
	point_t temp;
	if((tankBulletPosition.x > SCREENWIDTH) && (tankBulletPosition.y > SCREENHEIGHT)) {
		temp.y = tankPosition.y - tank_bullet_height*2+5;
		temp.x = tankPosition.x + TANKWIDTH - 3;
		setTankBulletPosition(temp);
	}
	return;
}

point_t getAlienBlockPosition() {
	return alienBlockPosition;
}

void setAlienBlockPosition(point_t point) {
	alienBlockPosition = point;
}

aBullet getAlienBullet0() {
	return aBullet0;
}
void setAlienBullet0(point_t point, unsigned short type, bool isFree, short counter) {
	aBullet0.pos = point;
	aBullet0.type = type;
	aBullet0.isFree = isFree;
	aBullet0.counter = counter;
}
aBullet getAlienBullet1() {
	return aBullet1;
}
void setAlienBullet1(point_t point, unsigned short type, bool isFree, short counter) {
	aBullet1.pos = point;
	aBullet1.type = type;
	aBullet1.isFree = isFree;
	aBullet1.counter = counter;
}
aBullet getAlienBullet2() {
	return aBullet2;
}
void setAlienBullet2(point_t point, unsigned short type, bool isFree, short counter) {
	aBullet2.pos = point;
	aBullet2.type = type;
	aBullet2.isFree = isFree;
	aBullet2.counter = counter;
}
aBullet getAlienBullet3() {
	return aBullet3;
}
void setAlienBullet3(point_t point, unsigned short type, bool isFree, short counter) {
	aBullet3.pos = point;
	aBullet3.type = type;
	aBullet3.isFree = isFree;
	aBullet3.counter = counter;
}

void fireAlienBullet() {
	point_t temp;
	//Pick which column we are firing from
	int col = rand()%11;
	bool emptyCol = true;
	//Determine which alien it is coming from
	while(emptyCol) {
		int idx = col + 44;
		if(!alienDeaths[idx] || !alienDeaths[idx-=11] || !alienDeaths[idx-=11] || !alienDeaths[idx-=11] || !alienDeaths[idx-=11]) {
			emptyCol = false;
		}
		else {
			col = rand()%11;
		}
	}
	//Set the right coordinates
	//Choose which bullet to place
	if(aBullet0.isFree) {

	}
	else if(aBullet1.isFree) {

	}
	else if(aBullet2.isFree) {

	}
	else if(aBullet3.isFree) {

	}
	else {
		//Do nothing because the maximum number of bullets are on the screen
	}
	return;
}

//point_t getAlienBullet1() {
//	return
//}
//void setAlienBullet1(point_t point, unsigned short type);
//point_t getAlienBullet2();
//void setAlienBullet2(point_t point, unsigned short type);
//point_t getAlienBullet3();
//void setAlienBullet3(point_t point, unsigned short type);

uint32_t getBunkerErosion0() {
	return bunker0State;
}
void setBunkerErosion0(short block) {
	if(((bunker0State & (0x7 << (3*block))) >> (3*block)) >= 0x4)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker0State += (0x1 << (3*block));
}
uint32_t getBunkerErosion1() {
	return bunker1State;
}
void setBunkerErosion1(short block) {
	if(((bunker1State & (0x7 << (3*block))) >> (3*block)) >= 0x4)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker1State += (0x1 << (3*block));
}
uint32_t getBunkerErosion2() {
	return bunker2State;
}
void setBunkerErosion2(short block) {
	if(((bunker2State & (0x7 << (3*block))) >> (3*block)) >= 0x4)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker2State += (0x1 << (3*block));
}
uint32_t getBunkerErosion3() {
	return bunker3State;
}
void setBunkerErosion3(short block) {
	if(((bunker3State & (0x7 << (3*block))) >> (3*block)) >= 0x4)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker3State += (0x1 << (3*block));
}

bool* getAlienDeaths() {
	return alienDeaths;
}

void setAlienDeaths(short alien, bool dead) {
	xil_printf("alien value: %d\r\n", alien);
	if(alien >= 0 && alien < 55) {
		alienDeaths[alien] = dead;
	}
}

void updateBullets(){
	//Update the tank bullet first
	tankBulletPosition.y -= pixel_adjustment;
	if(tankBulletPosition.y < -bullet_height) {
		tankBulletPosition.x = bullet_offscreen;
		tankBulletPosition.y = bullet_offscreen;
	}
	//Update each of the alien bullets

}

void updateAlienBlock(){
	int rightOffset = 0;
	int leftOffset = 0;
	int row, col;
	int colWithLiveAlien = 0;
	bool alienAlive= false;
	//Determine how far the alien block can go left or right depending on which aliens are dead
	//Go through each column to check if the alien is dead
	for(col = 0; col < 11; col++){
		for(row = 0; row < 5; row++) {
			if(alienDeaths[(row*11)+col] == false){
				//If the alien is alive, set a flag
				alienAlive = true;
			}
		}
		//If there was a live alien, mark with a one in that bit
		if (alienAlive == true) {
			colWithLiveAlien = colWithLiveAlien | (1<<(10-col));
		}
		//Reset for the next column
		alienAlive = false;
	}
	//Determine the right side first
	//If the number anded with 1 is 0, there is no live alien in the column
	if((colWithLiveAlien & col11_mask) == 0){
		leftOffset += alienSpacing;
		if((colWithLiveAlien & col10_mask) == 0){
			leftOffset += alienSpacing;
			if((colWithLiveAlien & col9_mask) == 0) {
				leftOffset += alienSpacing;
				if((colWithLiveAlien & col8_mask) == 0) {
					leftOffset += alienSpacing;
					if((colWithLiveAlien & col7_mask) == 0) {
						leftOffset += alienSpacing;
						if((colWithLiveAlien & col6_mask) == 0) {
							leftOffset += alienSpacing;
							if((colWithLiveAlien & col5_mask) == 0) {
								leftOffset += alienSpacing;
								if((colWithLiveAlien & col4_mask) == 0) {
									leftOffset += alienSpacing;
									if((colWithLiveAlien & col3_mask) == 0) {
										leftOffset += alienSpacing;
										if((colWithLiveAlien & col2_mask) == 0) {
											leftOffset += alienSpacing;
											if((colWithLiveAlien & col1_mask) == 0) {
												leftOffset += alienSpacing;
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	//Now determine the left side
	if((colWithLiveAlien & col1_mask) == 0){
		rightOffset += alienSpacing;
			if((colWithLiveAlien & col2_mask) == 0){
				rightOffset += alienSpacing;
				if((colWithLiveAlien & col3_mask) == 0) {
					rightOffset += alienSpacing;
					if((colWithLiveAlien & col4_mask) == 0) {
						rightOffset += alienSpacing;
						if((colWithLiveAlien & col5_mask) == 0) {
							rightOffset += alienSpacing;
							if((colWithLiveAlien & col6_mask) == 0) {
								rightOffset += alienSpacing;
								if((colWithLiveAlien & col7_mask) == 0) {
									rightOffset += alienSpacing;
									if((colWithLiveAlien & col8_mask) == 0) {
										rightOffset += alienSpacing;
										if((colWithLiveAlien & col9_mask) == 0) {
											rightOffset += alienSpacing;
											if((colWithLiveAlien & col10_mask) == 0) {
												rightOffset += alienSpacing;
												if((colWithLiveAlien & col11_mask) == 0) {
													rightOffset += alienSpacing;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	//If the alien is moving right, add pixels
	if(alienRight == true) {
		alienBlockPosition.x += alien_pixel_adjustment;}
	//If the block is moving left, detract the pixels
	else {
		alienBlockPosition.x -= alien_pixel_adjustment;}
	//If the block has hit the right side of the screen, set them equal to the screen and move them down
	if((alienBlockPosition.x + alien_block_width-rightOffset) > 640) {
		alienBlockPosition.x = 640-alien_block_width+rightOffset;
		alienBlockPosition.y += alien_height;
		//Make the aliens go left instead of right
		alienRight = false;
	}
	//Will move the alien block down a row
	else if(alienOnLeftScreen) {
		alienBlockPosition.y += alien_height;
		alienBlockPosition.x = -leftOffset;
		alienOnLeftScreen = false;
	}
	//If the block hits the left side of the string, set x equal to 0 and move the aliens down
	else if(alienBlockPosition.x+leftOffset <= 0) {
		alienBlockPosition.x = -leftOffset;
		alienOnLeftScreen = true;
		//Make the aliens go right instead of left
		alienRight = true;
	}
	return;
}
