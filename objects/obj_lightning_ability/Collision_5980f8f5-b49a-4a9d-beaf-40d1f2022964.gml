with(other)
{
	if(enemy_hp <= obj_lightning_ability.spell_damage || enemy_hp = 0)
	{
		obj_player.player_kills_with_e = obj_player.player_kills_with_e + 1;
	}
	enemy_hp -= obj_lightning_ability.spell_damage;
}

