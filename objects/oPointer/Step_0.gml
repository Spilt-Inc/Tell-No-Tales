
/// @desc oPointer - Step


var _deckObj = oDeckCtrl.deckObj.current;
var _currentDir;
	if (_deckObj.object_index == oSails) {
		_currentDir = _deckObj.selectedSail;
	}
	else {
		_currentDir= oDeckCtrl.currentDir;
	}
if (_deckObj.selectStats[_currentDir].exists) {
	rot += 3;
	if (_deckObj.object_index == oSails) {
		rad = 300;
		x = _deckObj.selectStats[_currentDir].xx;
		y = _deckObj.selectStats[_currentDir].yy - (sprite_get_height(sMainMast) / 3);
	}
	else {
		rad = 100;
		if (oDeckCtrl.deckObj.num == DECKS.HOLD) {
			x = _deckObj.cargoLoc.x[_currentDir];
			y = _deckObj.cargoLoc.y[_currentDir];
		}
		else {	
			x = _deckObj.selectStats[_currentDir].x;
			y = _deckObj.selectStats[_currentDir].y;
		}
	}
}
else {
	x = _deckObj.x;
	y = _deckObj.y;
	rot = 0;
	rad = 0;
}