
if instance_exists(obj_player) && instance_exists(obj_goblin) {
    var distance_to_player = point_distance(obj_goblin.x, obj_goblin.y, obj_player.x, obj_player.y);
    
    if (distance_to_player < 200) {
        // Check for collision with wall
        if (place_meeting(obj_goblin.x, obj_goblin.y, obj_walltest)) {
            
             move_towards_point(obj_player.x, obj_player.y, -3);
            
        } else {
            move_towards_point(obj_player.x, obj_player.y, 0.09);
        }
    }
}

if hp <0{
	instance_destroy()
}
