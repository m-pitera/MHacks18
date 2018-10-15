if (enemy_hp <= 0)
{
	instance_destroy();
}

if boss2_cooldown2 <=0 {
	charge()
	boss2_cooldown2 = 20
}
else{
	boss2_cooldown2 = boss2_cooldown2 - 1
}

if boss2_cooldown1 <= 0 {
	cast_ability_boss2();
}
else {
	boss2_cooldown1 = boss2_cooldown1 - 1
}

if (instance_exists(obj_player))
{
move_towards_point(obj_player.x,obj_player.y,boss2_spd);	
image_angle = point_direction(x,y,obj_player.x,obj_player.y)-180;
}