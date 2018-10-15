draw_self();

if !instance_exists(obj_player) exit;

draw_mana = lerp(draw_mana, obj_player.player_mana, 0.5);

draw_set_color(c_blue);
draw_rectangle(x+16, y+16, (x+495*draw_mana/obj_player.max_player_mana), y+47, false);
draw_set_color(c_white);