function scr_roll_start(){
	var _input = right - left;
	roll_dir = (_input != 0) ? _input : sign(image_xscale);
	roll_timer = roll_time;
	image_index = 0;
	state = scr_state_roll;
}