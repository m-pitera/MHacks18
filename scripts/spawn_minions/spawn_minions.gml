/// @function spawn_minions(object, object)
/// @description spawn the boss's minions
/// @param {real} obj_minion The minion object
/// @param {real} obj_boss The boss object

instance_create_layer(argument1.x + 10 + random(100) - 50, argument1.y + 10 + random(100) - 50, "instances", argument0);
instance_create_layer(argument1.x - 10 + random(100) - 50, argument1.y - 10 + random(100) - 50, "instances", argument0);

cooldown = 100

