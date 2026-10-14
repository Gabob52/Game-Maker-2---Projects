draw_set_halign(fa_center)
draw_text_ext_transformed_colour(display_get_gui_width()/2,display_get_gui_height()/4,"Gracias por jugar",10,500,3,3,0,c_white,c_white,c_white,c_white,1)
draw_text_ext_transformed_colour(display_get_gui_width()/2,display_get_gui_height()/2,"Press Enter to restart",10,100,2,2,0,c_white,c_white,c_white,c_white,1)
draw_set_halign(fa_left)

if(keyboard_check(vk_enter)){
	game_restart()
}