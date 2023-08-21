if hp <5{
	instance_destroy(obj_player)
	room_restart()
}

if slime_kills >= objetivo{
	obj_gerador.slime_canspawn = false
	obj_gerador.current_lvl = 2
	objetivo = 0
}

if goblin_kills >= objetivo{
	obj_gerador.goblin_canspawn = false
	
}


#region disparos
if instance_exists(obj_ManaBlast){
	if keyboard_check_pressed(vk_space) && !manabullet_cooldown {
	    manabullet = instance_create_layer(x, y, layer, obj_ManaBlast);
	    manabullet.speed = 8;
	    manabullet.direction = direcao;
	    manabullet_cooldown = true;
	    alarm[0] = room_speed *0.3;
		audio_play_sound(snd_manabullet,1,false,0.5)
		
	}
}
#endregion
#region movimentacao


// Velocidade
_velh = (keyboard_check(vk_right) -keyboard_check(vk_left))*sidespd
_velv = (keyboard_check(vk_down) - keyboard_check(vk_up))*sidespd



// Correção de Colisão
if place_meeting(x+_velh, y, obj_walltest)
   {
    while !place_meeting(x+sign(_velh), y, obj_walltest) {x+=sign(_velh)}
    x += 1*sign(_velh)
	y += 1*sign(_velv)
   }else{
  x += 1*sign(_velh)
  y += 1*sign(_velv)
   
}



// Movimento Básico
move_and_collide(_velh,_velv, obj_walltest)



// Direção de Disparo
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


// Animações
if keyboard_check(vk_up){ 
			sprite_index = spr_walk_up_player
		}else if keyboard_check(vk_down){
			sprite_index = spr_walk_down_player
		}else if keyboard_check(vk_left){
			sprite_index = spr_walk_left_player
		}else if keyboard_check(vk_right){
			sprite_index = spr_walk_right_player
	}
	
// Looping do mapa
if x < 0 x = room_width -5
if x > room_width x = 5
if y < 0 y = room_height -5
if y > room_height y = 5

#endregion

