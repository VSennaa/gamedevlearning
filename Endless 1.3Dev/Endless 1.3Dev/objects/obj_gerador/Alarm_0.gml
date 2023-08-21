if current_lvl == 1{
	if current_slimes < max_slimes and slime_canspawn{
		var obj_type = choose(obj_slime_blue, obj_purple_slime);
		instance_create_layer(random(room_width), random(room_height),layer, obj_type);
		current_slimes += 1
	}
}

if current_lvl == 2{
	if current_goblin < max_goblin and goblin_canspawn{
		var obj_type = choose(obj_goblin, obj_goblin);
		instance_create_layer(random(room_width), random(room_height),layer, obj_type);
		current_goblin += 1
	}
}