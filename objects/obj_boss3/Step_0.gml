if (enemy_hp <= 0){
	instance_destroy();
}

if boss3_cooldown1 <= 0 {
	image_angle = point_direction(x,y,obj_player.x,obj_player.y) + 90;
	instance_create_layer(x, y, "instances", obj_void_projectile);

	boss3_cooldown1 = 10
}
else {
	boss3_cooldown1 = boss3_cooldown1 - 1
}

if boss3_cooldown2 <= 0 {
	
	spawn_minions(obj_boss3_minion, obj_boss3)
	boss3_cooldown2 = 150
}
else {
	boss3_cooldown2 = boss3_cooldown2 - 1
}

