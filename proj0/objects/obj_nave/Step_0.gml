if keyboard_check(vk_up){
	speed = 2;
	sprite_index = spr_nave_movendo;
} else if keyboard_check(vk_down){
	speed = -2;
	sprite_index = spr_nave_movendo;
} else {
	speed = 0;
	sprite_index = spr_nave_parada;
}

if keyboard_check(vk_left){
	direction += 3;
	sprite_index = spr_nave_movendo;
} else if keyboard_check(vk_right){
	direction -= 3;
	sprite_index = spr_nave_movendo;
}

if keyboard_check_pressed(vk_space){
	var inst = instance_create_layer(x,y, "Instances", obj_projetil)
	inst.speed = 6;
	inst.direction = direction;
	inst.image_angle = direction;
}

image_angle = direction;

move_wrap(true, true, 0);