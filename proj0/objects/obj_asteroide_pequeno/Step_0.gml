move_wrap(true, true, 0);
image_angle += rotac;
if vida <= 0 {
	repeat(5){
		instance_create_layer(x, y, "Instances", obj_detritos)
	}
	audio_play_sound(snd_explosao, 1, false);
	instance_destroy();
}