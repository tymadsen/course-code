/*
 * globals.h
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>

#define tank_render_mask 0x1
#define tank_bullet_render_mask 0x2
#define alien_block_render_mask 0x4
#define alien_bullet_render_mask 0x8
#define bunker_0_render_mask 0x10
#define bunker_1_render_mask 0x20
#define bunker_2_render_mask 0x40
#define bunker_3_render_mask 0x80
#define all_bullet_render_mask (tank_bullet_render_mask | alien_bullet_render_mask)
#define spaceship_render_mask 0x100

#define alien_height 8
#define alien_width 12
#define tank_height 8
#define tank_width 15
#define tank_bullet_height 3
#define bullet_width 1
#define alien_bullet_height 7
#define alien_bullet_width 3
#define pixel_adjustment 4
#define tank_bullet_pixel_adjustment pixel_adjustment*2
#define bullet_offscreen 1000
#define screen_width 640
#define screen_height 480
#define alien_x_spacing 2
#define alien_y_spacing 20
#define green_line_y screen_height-28
#define alien_y_actual_spacing (alien_y_spacing-alien_height)

#define spaceship_height 7
#define spaceship_width 16
#define spaceship_left_x 0
#define spaceship_right_x screen_width - spaceship_width*2
#define spaceship_y 50

#define bottom_row_pts 10
#define middle_row_pts 20
#define top_row_pts 40
#define spaceship_multiple 50

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

// Colors
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

//Erase directions
#define DOWN 0
#define UP 1
#define LEFT 2
#define RIGHT 3

typedef struct { signed short x; signed short y;} point_t;
typedef struct { point_t pos; unsigned short type; bool isFree; short counter;} aBullet;
typedef struct { point_t pos; bool isFree; int direction;} saucer;

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
bool getAlienRight();
bool getAlienDown();
int getAlienUpdateTime();

uint32_t getBunkerErosion();
void setBunkerErosion(int bunker, int block);
//uint32_t getBunkerErosion0();
//void setBunkerErosion0(short block);
//uint32_t getBunkerErosion1();
//void setBunkerErosion1(short block);
//uint32_t getBunkerErosion2();
//void setBunkerErosion2(short block);
//uint32_t getBunkerErosion3();
//void setBunkerErosion3(short block);

void setSpaceship(int direction);
void setInitialSpaceship(point_t pos);
saucer getSpaceship();
void updateSpaceship();
int getSpaceshipValue();
point_t getOldSpaceshipLoc();
bool isSpaceshipHit();
void setSpaceshipHit(bool hit);
void eraseBullet(point_t pos, unsigned short type);

bool* getAlienDeaths();
void setAlienDeaths(short alien, bool dead);
void updateBullets();
void updateAlienBlock();
bool determineBunkerErosion(int x, int y);
int getPixelColor(int x, int y, int w,  bool above);
void fireTankBullet();
void fireAlienBullet();
void updateAlienBulletCounters();

void setLives(bool increment);
int getLives();
bool isGameOver();

void incScore(int alienNum, bool spaceshipHit);
int getScore();

#endif /* GLOBALS_H_ */
