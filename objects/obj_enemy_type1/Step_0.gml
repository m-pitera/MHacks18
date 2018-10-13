
if (instance_exists(obj_player)) //if player is alive
{
	move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0)); //move towards the player
}

if (hp <= 0) instance_destroy();
