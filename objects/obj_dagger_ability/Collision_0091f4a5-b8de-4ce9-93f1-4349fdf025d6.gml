with(other)
{
	if(enemy_hp <= obj_dagger_ability.spell_damage || enemy_hp = 0)
	{
		obj_player.player_kills_with_rmb = obj_player.player_kills_with_rmb + 1;
	}
	
	enemy_hp -= obj_dagger_ability.spell_damage;
	
	

}
