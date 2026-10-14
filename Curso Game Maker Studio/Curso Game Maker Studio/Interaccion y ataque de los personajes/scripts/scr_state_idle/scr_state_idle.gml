function scr_state_idle(){
	sprite_index = spr_batman;
	if(right || left || up || down){
		state = scr_state_move;
}
	else if(attack){
		image_index = 0;
		if(attack_sensor == noone){
			attack_sensor = instance_create_layer(x+(30*h_dir),y,"instances",obj_player_attack_sensor);
		}
		state = scr_state_attack;
	}
}