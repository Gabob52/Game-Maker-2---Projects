function scr_state_attack(){
sprite_index = spr_samu_attack;
var _hb = instance_create_layer(x + (image_xscale * 20), y, "Instances", obj_hitbox);
_hb.creador = id;
_hb.image_xscale = image_xscale;   // para que mire hacia el mismo lado
}
