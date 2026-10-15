function scr_state_roll(){
	sprite_index = spr_samu_roll;   // cambialo por tu sprite de roll cuando lo tengas
	image_xscale = roll_dir;
	hsp = roll_dir * roll_spd;
	invulnerable = true;

	scr_physics();
	roll_timer--;

	var _end = false;
	if (!scr_on_ground()) {
		_end = true;
		state = scr_state_fall;
	} else if (roll_timer <= 0) {
		_end = true;
		if (down) state = scr_state_crouch;
		else state = (right || left) ? scr_state_move : scr_state_idle;
	}

	if (_end) {
		invulnerable = false;
		roll_cooldown = roll_cooldown_max;
	}
}