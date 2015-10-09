/*
 * renderHelper.c
 *
 *  Created on: Oct 8, 2015
 *      Author: superman
 */

#include "globals.h"
#include "render.h"


//Erase directions
#define DOWN 0
#define UP 1
#define LEFT 2
#define RIGHT 3

void updateAliens(){
	render(true, alien_block_render_mask, 0, DOWN);
	updateAlienBlock();
	render(false,alien_block_render_mask, 0, DOWN);
	return;
}


void moveTankLeft(){
	render(true, tank_render_mask, 0, LEFT);
	//change position
	setTankPosition(-pixel_adjustment);
	//render(draw)
	render(false, tank_render_mask, 0, LEFT);
	return;
}

void moveTankRight(){
	render(true, tank_render_mask, 0, RIGHT);
	//change position
	setTankPosition(pixel_adjustment);
	//render(draw)
	render(false, tank_render_mask, 0, RIGHT);
	return;
}

void shootTankBullet(){
	fireTankBullet();
	render(false, tank_bullet_render_mask, 0, UP);
	return;
}

void updateAllBullets(){
	render(true, all_bullet_render_mask, 0, UP);
	updateBullets();
	render(false, all_bullet_render_mask, 0, UP);
	return;
}
