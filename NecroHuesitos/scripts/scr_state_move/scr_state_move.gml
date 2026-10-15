function scr_state_move(){
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
}