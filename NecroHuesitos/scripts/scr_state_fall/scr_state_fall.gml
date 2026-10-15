function scr_state_fall(){
	sprite_index = spr_samu_jump;   // cambialo si tenés sprite de caída
	var _input = right - left;
	hsp = _input * spd;
	if (_input != 0) image_xscale = _input;

	scr_physics();

	if (scr_on_ground()) {
		state = (_input != 0) ? scr_state_move : scr_state_idle;
	}
}