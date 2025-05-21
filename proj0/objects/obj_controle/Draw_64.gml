var _c = make_color_rgb(131,68,87);
var _largura = display_get_width();
var _altura = display_get_height;

draw_set_font(fnt_basica);
if room == rm_menu {
	if alpha <= 0 {
		alpha_add = 0.05;
	} else if alpha >= 1 {
		alpha_add = -0.05;
	}
	
	alpha += alpha_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(_largura/2, _altura/3, "Do 1000 scores to win", c_white, c_white, c_white, c_white, 1);
	draw_text_color(_largura/2, _altura -  _altura/3, "Press space to start", c_white, c_white, c_white, c_white, alpha);
	
	if keyboard_check_pressed(vk_space){
		room_goto(Room1);
	}
} else if room == Room1 {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(20, 20, "Life: " + string(obj_nave.vida), _c, _c, _c, _c, 1);
	draw_text_color(20, 40, "Scores: " + string(global.pont), c_white, c_white, c_white, c_white, 1);
} else if room == rm_final {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_largura/2, _altura/2, "Congratulations! Press R to play again.", 80, 900, _c, _c, _c, _c, 1);
	if keyboard_check_pressed(ord("R")){
		game_restart();
	}
}