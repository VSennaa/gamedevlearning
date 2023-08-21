if instance_exists(obj_player){
	if obj_player.hp >= 5 draw_sprite(HearthPoint,1,10,10)

	if obj_player.hp >= 10 draw_sprite(HearthPoint,1,27,10)

	if obj_player.hp >= 15 draw_sprite(HearthPoint,1,44,10)

	if obj_player.hp >= 20 draw_sprite(HearthPoint,1,61,10)
}

