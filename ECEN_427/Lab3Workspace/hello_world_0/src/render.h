/*
 * render.h
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */

#ifndef RENDER_H_
#define RENDER_H_
#include "stdbool.h"
#include "stdint.h"
#include "globals.h"

void clearScreen();
void initScreen();
void drawScoreLabel();
void drawScore();
void drawLivesLabel();
void drawLives();
void drawBunkers();
void drawTank(bool erase);
void drawTankBullet(bool erase);
void drawAliens(bool erase);
void drawAlienBullets(bool erase);
void drawBitmap(const uint32_t* bitmap, point_t pos, int width, int height, bool double_size, int color, bool erase);
void drawBitmapRepeat(const uint32_t* bitmap, point_t pos, int width, int height, bool double_size, int color, bool erase, int x_space, int times);

#endif /* RENDER_H_ */