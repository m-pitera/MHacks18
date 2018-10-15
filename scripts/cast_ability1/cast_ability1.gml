
//Charge
if instance_exists(obj_player){
	while distance_to_point(obj_player.x, obj_player.y) > 5{
		move_towards_point(obj_player.x, obj_player.y, max(30, 0));
	}
	boss_spd = 2
}