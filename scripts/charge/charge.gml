//Charge
if instance_exists(obj_player){
	if distance_to_point(obj_player.x, obj_player.y) > 200{
		
		move_towards_point(obj_player.x, obj_player.y, max(18, 0));
	}
}

boss1_cooldown = 40
minion1_cooldown = 50
boss2_cooldown2 = 20