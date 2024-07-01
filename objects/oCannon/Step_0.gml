
/// @desc oCannon - Step


var _deckObj = oDeckCtrl.deckObj.current;
x = _deckObj.selectStats[cannonNum].x;
y = _deckObj.selectStats[cannonNum].y;

if (oDeckCtrl.cannons.animGo[cannonNum]) {
	image_speed = 1;
	if (image_index == image_number) {
		image_speed = 0;
		image_index = 0;
		oDeckCtrl.cannons.animGo[cannonNum] = false;	
	}
}

if (!instance_exists(oGunDeck)) {
	instance_destroy();
}