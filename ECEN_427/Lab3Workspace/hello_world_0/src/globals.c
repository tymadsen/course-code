/*
 * globals.c
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */
#include <stdio.h>
#include "globals.h"

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
short bunker0State;
short bunker1State;
short bunker2State;
short bunker3State;
short alienDeaths[55];
bool alienRight = true;
int alien_block_width = 4*10 + 11*12*2;

point_t getTankPosition() {
	return tankPosition;
}

void setTankPosition(signed short pixels) {
	tankPosition.x += pixels;
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

void setTankBulletPosition(point_t point) {
	tankBulletPosition = point;
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
void setAlienBullet0(point_t point, unsigned short type, bool free) {
	aBullet0.pos = point;
	aBullet0.type = type;
}
aBullet getAlienBullet1() {
	return aBullet1;
}
void setAlienBullet1(point_t point, unsigned short type, bool free) {
	aBullet1.pos = point;
	aBullet1.type = type;
}
aBullet getAlienBullet2() {
	return aBullet2;
}
void setAlienBullet2(point_t point, unsigned short type, bool free) {
	aBullet2.pos = point;
	aBullet2.type = type;
}
aBullet getAlienBullet3() {
	return aBullet3;
}
void setAlienBullet3(point_t point, unsigned short type, bool free) {
	aBullet3.pos = point;
	aBullet3.type = type;
}
//point_t getAlienBullet1() {
//	return
//}
//void setAlienBullet1(point_t point, unsigned short type);
//point_t getAlienBullet2();
//void setAlienBullet2(point_t point, unsigned short type);
//point_t getAlienBullet3();
//void setAlienBullet3(point_t point, unsigned short type);

unsigned short getBunkerErosion0() {
	return bunker0State;
}
void setBunkerErosion0() {
	bunker0State++;
}
unsigned short getBunkerErosion1() {
	return bunker1State;
}
void setBunkerErosion1() {
	bunker1State++;
}
unsigned short getBunkerErosion2() {
	return bunker2State;
}
void setBunkerErosion2() {
	bunker2State++;
}
unsigned short getBunkerErosion3() {
	return bunker3State;
}
void setBunkerErosion3() {
	bunker3State++;
}

short* getAlienDeaths() {
	return alienDeaths;
}
void setAlienDeaths(short alien, short dead) {
	alienDeaths[alien] = dead;
}
void updateBullets(){

}
void updateAlienBlock(){
	//If the alien is moving right, add pixels
	if(alienRight == true) {
		alienBlockPosition.x += alien_pixel_adjustment;
		xil_printf("We are in the true loop\r\n");}
	//If the block is moving left, detract the pixels
	else {
		alienBlockPosition.x -= alien_pixel_adjustment;}
	//If the block has hit the right side of the screen, set them equal to the screen and move them down
	xil_printf("X: %d, alienRight: %d\r\n", alienBlockPosition.x, alienRight);
	if((alienBlockPosition.x + alien_block_width) > 640) {
		alienBlockPosition.x = 640-alien_block_width;
		alienBlockPosition.y += alien_height;
		alienRight = false;
		xil_printf("X: %d, alienRight: %d, blockWidth: %d\r\n", alienBlockPosition.x, alienRight, alien_block_width);
	}
	else if(alienBlockPosition.x <= 0) {
		alienBlockPosition.x = 0;
		alienBlockPosition.y += alien_height;
		alienRight = true;
	}
	return;
}
