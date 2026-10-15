mask_index = spr_samu;   

hp = 100; //Puntos de salud
spd = 3; //velocidad movimiento
crouch_spd = 1.5; //velocidad agachado 

hsp = 0;
vsp = 0;
grav = 0.5; //Gravedad
jump_speed = -9; //Rapidez de salto
max_fall = 10;
up_pressed = false;

//dash 

roll_spd = 6;            // velocidad del roll
roll_time = 12;          // duración en cuadros
roll_timer = 0;
roll_dir = 1;
roll_cooldown = 0;
roll_cooldown_max = 30;  // espera entre rolls
invulnerable = false;    // se usará cuando armemos "hurt"

state = scr_state_idle;

h_dir = 1; 
attack_sensor = noone; 