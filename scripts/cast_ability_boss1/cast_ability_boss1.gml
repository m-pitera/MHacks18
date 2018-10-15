random_num = random_range(0, 1);

if random_num >= 0 and random_num < .5
{
	charge();
	
	boss1_cooldown = 5;
}

else if random_num >= .5 and random_num <= 1 and boss1_spawn_cooldown <= 0{
	spawn_minions(obj_boss1_minion, obj_boss1)
	boss1_spawn_cooldown = boss1_spawn_cooldown + 15;
}

