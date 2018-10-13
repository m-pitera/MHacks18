/// @description player movement, player direction

// You can write your code in this editor

scr_input();

//movement
hspd = rkey - lkey;
vspd = dkey - ukey;

x += hspd * spd;
y += vspd * spd;

//rotate to mouse
image_angle = point_direction(x,y,mouse_x,mouse_y)-90;

if (player_hp <= 0) 
{
	instance_destroy();
	game_restart();
}

if (mouse_check_button(mb_left)) && cooldown_lmb < 0
{
	//3rd param is layer of map (can replace instances layer with extra 
	//bullet layer allowing for the bullets to appear above enemies **
	instance_create_layer(x, y, "instances", obj_fire_projectile);
	cooldown_lmb = 30;
}
cooldown_lmb = cooldown_lmb-1;


if (keyboard_check(ord("Q")) && cooldown_q < 0)
{
	//3rd param is layer of map (can replace instances layer with extra 
	//bullet layer allowing for the bullets to appear above enemies **
	instance_create_layer(x, y, "instances", obj_swipe_ability);
	cooldown_q = 90;
}
cooldown_q = cooldown_q-1;