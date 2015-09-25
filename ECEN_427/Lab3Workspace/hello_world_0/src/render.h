/*
 * render.h
 *
 *  Created on: Sep 25, 2015
 *      Author: superman
 */

#ifndef RENDER_H_
#define RENDER_H_
#include "stdbool.h"

void drawTank(bool erase);
void drawTankBullet(bool erase);
void drawAliens(bool erase);
void drawAlienBullets(bool erase);
void drawBunkers(bool erase);
void initScreen();
void clearScreen();

#endif /* RENDER_H_ */
