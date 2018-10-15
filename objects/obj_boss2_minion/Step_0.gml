if minion2_cooldown <= 0 {
	charge()
}
else{
	minion2_cooldown = minion2_cooldown - 1
}
if (enemy_hp <= 0)
{
	instance_destroy();
}
image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;