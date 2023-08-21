if hp <5{
	instance_destroy(obj_player)
}

#region disparos
if instance_exists(obj_ManaBlast){
	if keyboard_check_pressed(vk_space) && !manabullet_cooldown {
	    manabullet = instance_create_layer(x, y, layer, obj_ManaBlast);
	    manabullet.speed = 8;
	    manabullet.direction = direcao;

	    manabullet_cooldown = true;
	    alarm[0] = room_speed *0.3;
		audio_play_sound(snd_manabullet,1,false)
		
	}
}
#endregion
#region movimentacao

_velh = (keyboard_check(vk_right) -keyboard_check(vk_left))*sidespd
_velv = (keyboard_check(vk_down) - keyboard_check(vk_up))*sidespd

colisions = [obj_walltest, obj_slime_blue]
move_and_collide(_velh,_velv, obj_walltest)



if instance_exists(manabullet){
	if keyboard_check(vk_up){
			direcao = 90
		}else if keyboard_check(vk_down){
			direcao = 270
		}else if keyboard_check(vk_left){
			direcao = 180
		}else if keyboard_check(vk_right){
			direcao = 0
	}
	manabullet.image_angle = direcao
}


if keyboard_check(vk_up){
			sprite_index = spr_walk_up_player
		}else if keyboard_check(vk_down){
			sprite_index = spr_walk_down_player
		}else if keyboard_check(vk_left){
			sprite_index = spr_walk_left_player
		}else if keyboard_check(vk_right){
			sprite_index = spr_walk_right_player
	}
#endregion

