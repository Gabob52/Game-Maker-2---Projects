/*function scr_enemy_demon_idle(){
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
}*/

function scr_enemy_demon_idle(){
	var distance = distance_to_object(obj_samu);

	// 1) Fuera de rango: quieto y sin atacar
	if (distance > rango_deteccion) {
		sprite_index = spr_enemy_demon;
		alarm[0] = -1;                 // cancela el ataque pendiente
		return;
	}

	// 2) Te detectó pero todavía lejos para atacar: te persigue
	if (distance > rango_ataque) {
		var dir = point_direction(x, y, obj_samu.x, obj_samu.y);
		x += lengthdir_x(2, dir);
		y += lengthdir_y(2, dir);
		dir_x = sign(lengthdir_x(2, dir));
		sprite_index = spr_enemy_demon_move;
		alarm[0] = -1;
	}
	// 3) Cerca: ataca
	else {
		sprite_index = spr_enemy_demon;
		if (alarm[0] <= 0) {
			alarm[0] = room_speed * 0.3;
		}
	}
}