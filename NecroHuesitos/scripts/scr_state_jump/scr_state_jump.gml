/*function scr_state_jump(){
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

		sprite_index = spr_samu_jump;
}*/

function scr_state_jump(){
	sprite_index = spr_samu_jump;
	var _input = right - left;
	hsp = _input * spd;
	if (_input != 0) image_xscale = _input;

	scr_physics();

	if (scr_on_ground() && vsp >= 0) {
		state = (_input != 0) ? scr_state_move : scr_state_idle;
	}
}