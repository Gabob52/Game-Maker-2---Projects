function scr_enemy_demon_idle(){
	var distance = distance_to_object(obj_samu);
	if(distance >= 100){
		var dir = point_direction(x,y,obj_samu.x,obj_samu.y);
		x = x + lengthdir_x(2,dir);
		y = y + lengthdir_y(2,dir);
		dir_x = sign(lengthdir_x(2,dir));
		sprite_index = spr_enemy_demon_move;
	}
	else{
		sprite_index = spr_enemy_demon;
		if( alarm[0]<=0){
			alarm[0] = room_speed* 1; 
		}
	}
}