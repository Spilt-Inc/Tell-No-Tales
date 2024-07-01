
/// @desc oOcean - Step


//game_set_speed(1,gamespeed_fps);

keyLt = keyboard_check(vk_left);
keyRt = keyboard_check(vk_right);
keyDir = keyRt - keyLt;
rot += keyDir;


