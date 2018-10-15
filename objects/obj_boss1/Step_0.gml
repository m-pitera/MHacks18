if boss1_cooldown <= 0 {
	cast_ability_boss1()
}
else {
	boss1_cooldown = boss1_cooldown - 1;
	boss1_spawn_cooldown = boss1_spawn_cooldown -1;
}
if (enemy_hp <= 0)
{
	instance_destroy();
}
