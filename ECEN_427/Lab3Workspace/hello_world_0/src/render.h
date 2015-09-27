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

void drawTank(bool erase);
void drawTankBullet(bool erase);
void drawAliens(bool erase);
void drawAlien(const uint32_t* bitmap, point_t pos, int height, int width, int col_index, int col_space, int row_index, int row_space, bool double_size, int color, bool erase);
void drawTopAlien(point_t pos, int row, int col, int sRow, int sCol, int alien, int alienRow, bool erase);
void drawMiddleAlien(point_t pos, int row, int col, int sRow, int sCol, int alien, int alienRow, bool erase);
void drawBottomAlien(point_t pos, int row, int col, int sRow, int sCol, int alien, int alienRow, bool erase);
void drawAlienBullets(bool erase);
void drawBunkers(bool erase, int bunker);
void drawScoreLabel();
void drawLivesLabel();
void drawLetter(char letter);
void initScreen();
void clearScreen();

#endif /* RENDER_H_ */
