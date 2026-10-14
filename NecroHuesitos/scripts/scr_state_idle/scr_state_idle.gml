function scr_state_idle(){
	sprite_index = spr_huesitoman;
	if(right || left || up || down){
		state = scr_state_move;
}
	/*else if(attack){
		image_index = 0;
		state = scr_state_attack;
	}*/
}