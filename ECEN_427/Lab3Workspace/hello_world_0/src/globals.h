/*
 * globals.h
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_
#include "stdbool.h"
#include "stdint.h"
#define tank_render_mask 0x1
#define tank_bullet_render_mask 0x2
#define alien_block_render_mask 0x4
#define alien_bullet_0_render_mask 0x8
#define alien_bullet_1_render_mask 0x10
#define alien_bullet_2_render_mask 0x20
#define alien_bullet_3_render_mask 0x40
#define bunker_render_mask 0x128
#define alien_pixel_adjustment 4
#define alien_height 8
#define TANKHEIGHT 8
#define tank_bullet_height 7
#define tank_bullet_width 3
#define pixel_adjustment 4
#define bullet_height 7
#define bullet_offscreen 1000
#define bullety_offscreen 988
#define SCREENWIDTH 640
#define SCREENHEIGHT 480

#define col1_mask 0x1
#define col2_mask 0x2
#define col3_mask 0x4
#define col4_mask 0x8
#define col5_mask 0x10
#define col6_mask 0x20
#define col7_mask 0x40
#define col8_mask 0x80
#define col9_mask 0x100
#define col10_mask 0x200
#define col11_mask 0x400

typedef struct { signed short x; signed short y;} point_t;
typedef struct { point_t pos; unsigned short type; bool isFree; short counter;} aBullet;

point_t getTankPosition();
void setTankPosition(signed short pixels);
void setTankPositionPoint(int x, int y);
point_t getTankBulletPosition();
void setTankBulletPosition(point_t point);
void setTankBulletPositionXY(int x, int y);
point_t getAlienBlockPosition();
void setAlienBlockPosition(point_t point);

aBullet getAlienBullet0();
void setAlienBullet0(point_t point, unsigned short type, bool isFree, short counter);
aBullet getAlienBullet1();
void setAlienBullet1(point_t point, unsigned short type, bool isFree, short counter);
aBullet getAlienBullet2();
void setAlienBullet2(point_t point, unsigned short type, bool isFree, short counter);
aBullet getAlienBullet3();
void setAlienBullet3(point_t point, unsigned short type, bool isFree, short counter);

uint32_t getBunkerErosion0();
void setBunkerErosion0(short block);
uint32_t getBunkerErosion1();
void setBunkerErosion1(short block);
uint32_t getBunkerErosion2();
void setBunkerErosion2(short block);
uint32_t getBunkerErosion3();
void setBunkerErosion3(short block);

bool* getAlienDeaths();
void setAlienDeaths(short alien, bool dead);
void updateBullets();
void updateAlienBlock();
void fireTankBullet();
void fireAlienBullet();

#endif /* GLOBALS_H_ */
