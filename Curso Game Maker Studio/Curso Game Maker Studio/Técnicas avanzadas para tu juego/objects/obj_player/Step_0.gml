//Movimiento
scr_get_input();
script_execute(state);
depth = -y;

if(hp<=0){
	audio_play_sound(sfx_ugh,0,false);
	audio_stop_sound(bgm_lights_out);
	room_goto(Room_gameover);
}
