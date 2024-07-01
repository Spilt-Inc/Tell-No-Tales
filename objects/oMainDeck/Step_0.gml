
/// @desc oMainDeck - Step


//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
//roomGridInc = oConstant.roomGridInc;

updateSelectStats(mainDeckPreset,roomGridInc,numMainDeckDirs);


//Swaze Animation
var _roomSpd = game_get_speed(gamespeed_fps);
animCount--;
if animCount <= 0 {
	if swazeSubImg == 0 {
		swazeSubImg = irandom_range(1,3);	
	}
	else {
		swazeSubImg = 0;
	}	
	animCount = irandom_range(_roomSpd * 1, _roomSpd * 5);
}



