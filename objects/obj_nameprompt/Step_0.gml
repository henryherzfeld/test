/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)){
	game.name = curr_name
	obj_main_menu_UI.intro = true;
	instance_destroy();
}

if (string_length(keyboard_string) >= max_char){
	keyboard_string = string_copy(keyboard_string, 1, max_char)
}
curr_name = keyboard_string;
