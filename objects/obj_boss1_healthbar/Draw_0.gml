draw_self();
//var vx = camera_get_view_x(view_camera[0]);
//var vy = camera_get_view_y(view_camera[0]);

if !instance_exists(obj_boss1) exit;

draw_enemy_health = lerp(draw_enemy_health, obj_boss1.enemy_hp, 0.5);

draw_set_color(c_purple);
draw_rectangle(x+16, y+16, (x+495*draw_enemy_health/obj_boss1.max_enemy_hp), y+47, false);
draw_set_color(c_white);