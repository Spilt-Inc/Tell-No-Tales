
/// @desc oPlr1 - Create


key = {
	up: keyboard_check(ord("W")), 
	down: keyboard_check(ord("A")),
	left: keyboard_check(ord("S")),
	right: keyboard_check(ord("D")),
	
	upPrs: keyboard_check_pressed(ord("W")),
	dnPrs: keyboard_check_pressed(ord("A")),
	ltPrs: keyboard_check_pressed(ord("S")),
	rtPrs: keyboard_check_pressed(ord("D")),
	
	action: keyboard_check(vk_space),
	actionPrs : keyboard_check_pressed(vk_space),
	deckUp : keyboard_check_pressed(vk_tab),
	deckDn :  keyboard_check_pressed(vk_control)
	};

event_inherited();




