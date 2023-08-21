if current_slimes < max_slimes{
	var obj_type = choose(obj_slime_blue, obj_purple_slime);
	instance_create_layer(random(room_width), random(room_height),layer, obj_type);
	current_slimes += 1
}