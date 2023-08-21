if instance_exists(obj_player) && instance_exists(obj_purple_slime) {
    var distance_to_player = point_distance(obj_purple_slime.x, obj_purple_slime.y, obj_player.x, obj_player.y);
    
    if (distance_to_player < 200) {
        // Check for collision with wall
        if (place_meeting(obj_purple_slime.x, obj_purple_slime.y, obj_walltest)) {
            
             move_towards_point(obj_player.x, obj_player.y, -3);
            
        } else {
            move_towards_point(obj_player.x, obj_player.y, 0.09);
        }
    }
}




if hp <=0{
	instance_destroy()
}

//if slime_spawn == false {
//	instance_create_layer(200,200,layer,obj_slime_blue)
//	slime_spawn	 = true
//	alarm[0] = 5*room_speed;
//}


//if instance_exists(obj_purple_slime){
//	if direction > 0 or direction  <90{
//		image_index = spr_purple_slime_right
//	}
//	if direction > 90 or direction  <180{
//		image_index = spr_purple_slime_left
//	}
//	if direction > 180 or direction  <270{
//		image_index = spr_purple_slime_left
//	}
//	if direction > 270 or direction  <360{
//		image_index = spr_purple_slime_right
//	}
	

//}
