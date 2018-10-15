draw_self();
//var vx = camera_get_view_x(view_camera[0]);
//var vy = camera_get_view_y(view_camera[0]);

if !instance_exists(obj_player) exit;

draw_health = lerp(draw_health, obj_player.player_hp, 0.5);

draw_set_color(c_red);
draw_rectangle(x+16, y+16, (x+495*draw_health/obj_player.max_player_hp), y+47, false);
draw_set_color(c_white);