/*function scr_state_idle(){
	sprite_index = spr_samu;
	if(right || left || up || down){
		state = scr_state_move;
}*/
	/*else if(attack){
		image_index = 0;
		state = scr_state_attack;
	}
}*/

function scr_state_idle(){
	sprite_index = spr_samu;
	hsp = 0;
	scr_physics();

	if (!scr_on_ground()) {
		state = scr_state_jump;
	} else if (up) {
		vsp = jump_speed;
		state = scr_state_jump;
			} else if (up) {
		vsp = jump_speed;
		state = scr_state_jump;
	} else if (down) {
		state = scr_state_crouch;
	} else if (right || left) {
		state = scr_state_move;
	}
}