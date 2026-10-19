//movimiento
scr_get_input();
if (roll_cooldown > 0) roll_cooldown--;
state();

if(hp<=0){
	room_goto(Room_gameover);
}

if (hurt) {
    sprite_index = spr_samu_hurt;
    hurt_timer--;
    if (hurt_timer <= 0) hurt = false;
    // opcional: empujoncito hacia atrás
    x += -sign(image_xscale) * 1;
    exit; // saltea idle/move/jump mientras está herido
}