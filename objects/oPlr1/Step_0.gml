
/// @desc oPlr1 - Step


key.up = keyboard_check(ord("W"));
key.down = keyboard_check(ord("S"));
key.left = keyboard_check(ord("A"));
key.right = keyboard_check(ord("D"));
	
key.upPrs = keyboard_check_pressed(ord("W"));
key.dnPrs = keyboard_check_pressed(ord("S"));
key.ltPrs = keyboard_check_pressed(ord("A"));
key.rrPrs = keyboard_check_pressed(ord("D"));
	
key.action = keyboard_check(vk_space);
key.tab = keyboard_check_pressed(vk_tab);

event_inherited();




