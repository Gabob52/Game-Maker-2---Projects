function scr_state_crouch(){
	sprite_index = spr_samu_crouch;   // poné el nombre real de tu sprite
	var _input = right - left;
	hsp = _input * crouch_spd;
	if (_input != 0) image_xscale = _input;
	scr_physics();

	if (!scr_on_ground()) {
		state = scr_state_jump;
	} else if (!down) {
		state = (_input != 0) ? scr_state_move : scr_state_idle;
	}
}
