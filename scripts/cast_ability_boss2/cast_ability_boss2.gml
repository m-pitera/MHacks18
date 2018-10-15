random_num = random_range(0, 1);

if random_num >= 0 and random_num < .5 {
	spawn_minions(obj_boss2_minion, obj_boss2)
	
	boss2_cooldown1 = 45;
}
else if random_num >= .66 and random_num <= 1 {
	
	instance_create_layer(x, y, "instances", obj_enemy3);
	image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	
	boss2_cooldown1 = 25;
}

