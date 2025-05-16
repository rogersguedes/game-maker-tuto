if keyboard_check(vk_up){
	speed = veloc;
	sprite_index = spr_nave_movendo;
} else if keyboard_check(vk_down){
	speed = -veloc;
	sprite_index = spr_nave_movendo;
} else {
	sprite_index = spr_nave_parada;
	speed = lerp(speed, 0, 0.05);
}

if keyboard_check(vk_left){
	direc = 3;
	sprite_index = spr_nave_movendo;
} else if keyboard_check(vk_right){
	direc = -3;
	sprite_index = spr_nave_movendo;
} else {
	direc = lerp(direc, 0, 0.08);
}

direction += direc;

if keyboard_check_pressed(vk_space){
	var inst = instance_create_layer(x,y, "Instances", obj_projetil)
	inst.speed = 6;
	inst.direction = direction;
	inst.image_angle = direction;
}

image_angle = direction;

move_wrap(true, true, 0);