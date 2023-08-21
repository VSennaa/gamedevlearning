if instance_exists(obj_player){
	if (point_distance(obj_slime_blue.x,obj_slime_blue.y,obj_player.x,obj_player.y))<200{
		move_towards_point(obj_player.x,obj_player.y,0.09)
	}
}

if hp <0{
	instance_destroy()
}

//if slime_spawn == false {
//	instance_create_layer(200,200,layer,obj_slime_blue)
//	slime_spawn	 = true
//	alarm[0] = 5*room_speed;
//}