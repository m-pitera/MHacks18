/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player) && distance_to_object(obj_player) > 650)
{
enemy_spd = 5;
move_towards_point(obj_player.x,obj_player.y,enemy_spd);	
image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
}

else if (instance_exists(obj_player) && distance_to_object(obj_player) < 650)
{
enemy_spd = 0;
move_towards_point(obj_player.x,obj_player.y,enemy_spd);	
image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	if(cooldown_fireball < 0)
	{
	instance_create_layer(x, y, "instances", obj_fire_projectile_enemy);
	cooldown_fireball = 30;
	}
}

cooldown_fireball = cooldown_fireball - 1; 

if(enemy_hp <= 0)
{	
	instance_destroy();
}


