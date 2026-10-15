function scr_state_crouch(){
	mask_index = mask_crouch;
	var _input = right - left;
	hsp = _input * crouch_spd;
	if (_input != 0) image_xscale = _input;
	sprite_index = (_input != 0) ? spr_samu_crouch_walk : spr_samu_crouch;

	scr_physics();

	if (!scr_on_ground()) {
		mask_index = mask_stand;
		state = scr_state_jump;
	} else if (!down && scr_can_stand()) {
		mask_index = mask_crouch;
		state = (_input != 0) ? scr_state_move : scr_state_idle;
	}
}

