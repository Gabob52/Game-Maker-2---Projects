if(state =scr_enemy_demon_attack){
	var bullet = instance_create_layer(x+lengthdir_x(10,dir_x),y,"instances",obj_enemy_bullet);
	bullet.dir = point_direction(x,y,obj_samu.x,obj_samu.y);
	state = scr_enemy_demon_idle;
}