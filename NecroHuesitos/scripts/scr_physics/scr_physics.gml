function scr_physics(){
	vsp = min(vsp + grav, max_fall);

	// Horizontal
	if (place_meeting(x + hsp, y, obj_wall)) {
		while (!place_meeting(x + sign(hsp), y, obj_wall)) x += sign(hsp);
		hsp = 0;
	}
	x += hsp;

	// Vertical
	if (place_meeting(x, y + vsp, obj_wall)) {
		while (!place_meeting(x, y + sign(vsp), obj_wall)) y += sign(vsp);
		vsp = 0;
	}
	y += vsp;
}

function scr_on_ground(){
	return place_meeting(x, y + 1, obj_wall);
}