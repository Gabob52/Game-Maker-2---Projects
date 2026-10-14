function scr_state_move(){
	if(right){
		x = x+spd;
		h_dir = 1;
	}else if(left){
		x = x-spd;
		h_dir = -1;
	}else if(up){
		y = y-spd;
	}else if(down){
		y = y+spd;
	}
	image_xscale = h_dir;
	sprite_index = spr_batman_running;
	
	if(!right && !left && !up && !down){
		state= scr_state_idle;
		}
}