/*function scr_state_move(){
	if(right){
		x = x+spd;
		image_xscale = 1;
	}else if(left){
		x = x-spd;
		image_xscale = -1;
	}else if(up){
		y = y-spd;
	}else if(down){
		y = y+spd;
	}
	if(!right && !left && !up && !down){
		state= scr_state_idle;
		}

		sprite_index = spr_samu_walk;
}*/

function scr_state_move(){
	sprite_index = spr_samu_walk;
	var _input = right - left;
	hsp = _input * spd;
	if (_input != 0) image_xscale = _input;
	scr_physics();

	if (!scr_on_ground()) {
		state = scr_state_fall;
	} else if (roll_pressed && roll_cooldown <= 0) {
		scr_roll_start();
	} else if (up_pressed) {
		vsp = jump_speed;
		state = scr_state_jump;
	} else if (down) {
		state = scr_state_crouch;
	} else if (_input == 0) {
		state = scr_state_idle;
	}
}