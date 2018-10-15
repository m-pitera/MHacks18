if (instance_exists(obj_player) && distance_to_object(obj_player) > 400)
{
enemy_spd = 5;
move_towards_point(obj_player.x,obj_player.y,enemy_spd);	
image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
}

else if (instance_exists(obj_player) && distance_to_object(obj_player) < 400)
{
enemy_spd = 0;
move_towards_point(obj_player.x,obj_player.y,enemy_spd);	
image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	if(minion3_cooldown < 0)
	{
	instance_create_layer(x, y, "instances", obj_void_projectile);
	minion3_cooldown = 30;
	}
}

minion3_cooldown = minion3_cooldown - 1; 

if(enemy_hp <= 0)
{	
	instance_destroy();
}
