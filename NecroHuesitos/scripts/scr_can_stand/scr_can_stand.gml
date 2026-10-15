function scr_can_stand(){
	var _prev = mask_index;
	mask_index = mask_stand;
	var _blocked = place_meeting(x, y, obj_wall);
	mask_index = _prev;
	return !_blocked;
}