with(other){
	image_blend = c_lime;
	hp = hp - 1; 
	if(hp<=0){
		audio_play_sound(sfx_ugh,0,false)
		audio_stop_sound(bgm_lights_out)
		room_goto(Room_gameover)
	}
}

depth = -y;