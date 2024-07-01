
///@desc oTester - Step

var _roomSpd = game_get_speed(gamespeed_fps);

animCount--;
if animCount <= 0 {
	if image_index == 0 {
		image_index = irandom_range(1,3);	
	}
	else {
		image_index = 0;
	}	
	animCount = irandom_range(_roomSpd * 1, _roomSpd * 5);
}