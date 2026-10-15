
function scr_state_jump(){
	sprite_index = spr_samu_jump;
	var _input = right - left;
	hsp = _input * spd;
	if (_input != 0) image_xscale = _input;

	scr_physics();

	/*if (scr_on_ground() && vsp >= 0) {
		state = (_input != 0) ? scr_state_move : scr_state_idle;
	}*/
		// al terminar la subida (o golpear un techo) pasa a caer
	if (vsp >= 0) state = scr_state_fall;
}