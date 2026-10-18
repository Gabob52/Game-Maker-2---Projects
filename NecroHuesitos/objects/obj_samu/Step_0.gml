//movimiento
scr_get_input();
if (roll_cooldown > 0) roll_cooldown--;
state();

if(hp<=0){
	room_goto(Room_gameover);
}