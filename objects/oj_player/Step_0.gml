/// @description player movement, player direction

// You can write your code in this editor

scr_input();

//movement
hspd = rkey - lkey;
vspd = dkey - ukey;

x += hspd * spd;
y += vspd * spd;

//rotate to mouse
image_angle = point_direction(x,y,mouse_x,mouse_y)+90;