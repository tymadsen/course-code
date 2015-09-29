/*
 * globals.c
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */
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
uint32_t bunker0State;
uint32_t bunker1State;
uint32_t bunker2State;
uint32_t bunker3State;
bool alienDeaths[55];


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
void setBunkerErosion0(short block) {
	if(((bunker0State & (0x3 << block)) >> block) == 0x3)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker0State += (0x1 << block);
}
unsigned short getBunkerErosion1() {
	return bunker1State;
}
void setBunkerErosion1(short block) {
	if(((bunker1State & (0x3 << block)) >> block) == 0x3)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker1State += (0x1 << block);
}
unsigned short getBunkerErosion2() {
	return bunker2State;
}
void setBunkerErosion2(short block) {
	if(((bunker2State & (0x3 << block)) >> block) == 0x3)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker2State += (0x1 << block);
}
unsigned short getBunkerErosion3() {
	return bunker3State;
}
void setBunkerErosion3(short block) {
	if(((bunker3State & (0x3 << block)) >> block) == 0x3)
		xil_printf("Block %d selected to erode is already completely eroded!!!", block);
	else
		bunker3State += (0x1 << block);
}

short* getAlienDeaths() {
	return alienDeaths;
}
void setAlienDeaths(short alien, bool dead) {
	alienDeaths[alien] = dead;
}
void updateBullets(){

}
void updateAlienBlock(){

}
