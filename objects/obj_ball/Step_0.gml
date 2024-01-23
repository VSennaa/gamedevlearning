/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if((obj_ball.y) < 0){
	direction = -direction;

}

if((obj_ball.y) > 768){
	direction = -direction;
	
}

if((obj_ball.x) < 0){
		speed = 12;
	obj_ball.x = room_width/2;
	obj_ball.y = room_height/2;
	obj_point_2.image_index += 1;
}
if((obj_ball.x) > 1366){
	speed = 12;
	obj_ball.x = room_width/2;
	obj_ball.y = room_height/2;
	obj_point_1.image_index += 1;
}

// paddle 1
//horizontal
if place_meeting(x+hspeed,y,obj_paddle_1)
{
    hspeed = -hspeed;
	speed += modif;
	audio_play_sound(snd_pong,1,false,1);
}

//vertical
if place_meeting(x,y+vspeed,obj_paddle_1)
{
   vspeed = -vspeed;
   speed += modif;
}

// paddle 2
//horizontal
if place_meeting(x+hspeed,y,obj_paddle_2)
{
    hspeed = -hspeed;
	
	audio_play_sound(snd_pong,1,false,1);
	speed += modif;
}

//vertical
if place_meeting(x,y+vspeed,obj_paddle_2)
{
   vspeed = -vspeed;
   speed += modif;
}