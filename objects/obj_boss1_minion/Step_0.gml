if minion1_cooldown <= 0 {
	charge()
}
else{
	minion1_cooldown = minion1_cooldown - 1
}
if (enemy_hp <= 0)
{
	instance_destroy();
}
