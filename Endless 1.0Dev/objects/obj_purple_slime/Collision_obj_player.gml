if obj_player.tangivel and instance_exists(obj_player){
	obj_player.hp -= 5
	obj_player.tangivel = false
	alarm[0] = 1*room_speed
	audio_play_sound(snd_player_hit,1,false)
}
