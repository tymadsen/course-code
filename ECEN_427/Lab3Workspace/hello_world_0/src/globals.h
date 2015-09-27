/*
 * globals.h
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_
#include "stdbool.h"

typedef struct { unsigned short x; unsigned short y;} point_t;
typedef struct { point_t pos; unsigned short type; bool free;} aBullet;

point_t getTankPosition();
void setTankPosition(signed short pixels);
void setTankPositionPoint(int x, int y);
point_t getTankBulletPosition();
void setTankBulletPosition(point_t point);
point_t getAlienBlockPosition();
void setAlienBlockPosition(point_t point);

aBullet getAlienBullet0();
void setAlienBullet0(point_t point, unsigned short type, bool free);
aBullet getAlienBullet1();
void setAlienBullet1(point_t point, unsigned short type, bool free);
aBullet getAlienBullet2();
void setAlienBullet2(point_t point, unsigned short type, bool free);
aBullet getAlienBullet3();
void setAlienBullet3(point_t point, unsigned short type, bool free);

unsigned short getBunkerErosion0();
void setBunkerErosion0();
unsigned short getBunkerErosion1();
void setBunkerErosion1();
unsigned short getBunkerErosion2();
void setBunkerErosion2();
unsigned short getBunkerErosion3();
void setBunkerErosion3();

short* getAlienDeaths();
void setAlienDeaths(short alien, short dead);
void updateBullets();
void updateAlienBlock();

#endif /* GLOBALS_H_ */
