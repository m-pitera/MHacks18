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


if (mouse_check_button(mb_right)) && cooldown_rmb < 0
{
	//3rd param is layer of map (can replace instances layer with extra 
	//bullet layer allowing for the bullets to appear above enemies **
	instance_create_layer(x, y, "instances", obj_dagger_ability);
	cooldown_rmb = 10;
}
cooldown_rmb = cooldown_rmb-1;

if (mouse_check_button(mb_left)) && cooldown_lmb < 0
{
	//3rd param is layer of map (can replace instances layer with extra 
	//bullet layer allowing for the bullets to appear above enemies **
	instance_create_layer(x, y, "instances", obj_fire_projectile);
	cooldown_lmb = 12;
}
cooldown_lmb = cooldown_lmb-1;


if (keyboard_check(ord("Q")) && cooldown_q < 0 && player_mana > 30)
{
	//3rd param is layer of map (can replace instances layer with extra 
	//bullet layer allowing for the bullets to appear above enemies **
	instance_create_layer(x, y, "instances", obj_swipe_ability);
	cooldown_q = 45;
	player_mana = player_mana - 30
}
cooldown_q = cooldown_q-1;

if (keyboard_check(ord("E")) && cooldown_e < 0 && player_mana > 50)
{
	//3rd param is layer of map (can replace instances layer with extra 
	//bullet layer allowing for the bullets to appear above enemies **
	instance_create_layer(x, y, "instances", obj_lightning_ability);
	cooldown_e = 120;
	player_mana = player_mana - 50 
}
cooldown_e = cooldown_e-1;

if (keyboard_check(ord("R")) && cooldown_r < 0 && player_mana > 70)
{
	instance_create_layer(x, y, "instances", obj_ability_fist);
	cooldown_r = 120;
	player_mana = player_mana - 70
}
cooldown_r = cooldown_r-1;



if (keyboard_check(ord(" ")) && cooldown_spacebar <= 0)
{
	instance_create_layer(x, y, "instances", obj_ability_teleport_from);
	instance_create_layer(mouse_x, mouse_y, "instances", obj_ability_teleport_to);
	
	x = mouse_x
	y = mouse_y
	cooldown_spacebar = 50
}

cooldown_spacebar = cooldown_spacebar - 1;




if (player_mana >= 100)
{
	player_mana = 100;
}
else
{
	player_mana = player_mana + 0.5;
}
	
if(player_kills_with_e > 0)
{
	player_mana = player_mana + (1.5 * player_kills_with_e);	
	player_kills_with_e = 0;
}

if(player_kills_with_rmb > 0)
{
	player_hp = player_hp + (2 * player_kills_with_rmb);
	player_kills_with_rmb = 0;
	if (player_hp >= 20)
	{
	player_hp = 20;
	player_kills_with_rmb = 0;
	}

}

if (player_hp >= 20)
{
	player_hp = 20;
}