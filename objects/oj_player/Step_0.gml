/// @description player movement
// You can write your code in this editor

scr_input();

//movement
hspd = rkey - lkey;
vspd = dkey - ukey;

x += hspd * spd;
y += vspd * spd;