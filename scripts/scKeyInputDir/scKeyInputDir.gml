
///@arg0 object
///@arg1 usingPlr

//		/*
//		Creates an array for sequence of selection options in a radial pattern:
//		0. No Direction
//		1. Up
//		2. Right
//		3. Down
//		4. Left
//		5. UpLeft
//		6. UpRight
//		7. DownRight
//		8. DownLeft
//		*/

function keyInputDir(_obj,_plr){

	var _keyDir = {x : undefined, y : undefined};
	_keyDir.x = _plr.key.right - _plr.key.left;
	_keyDir.y = _plr.key.down - _plr.key.up;
	var _numDirs = 8;
	var _selection = undefined;
	
	//No direction
	if (_keyDir.x == 0 && _keyDir.y == 0) _selection = 0;		
	
	//Lateral directions
	if (_keyDir.x == 0 && _keyDir.y == -1) {
		_selection = 1;		//if keyUp only
	}
	if (_keyDir.x == 1 && _keyDir.y == 0) _selection = 2;		//if keyRt only
	if (_keyDir.x == 0 && _keyDir.y == 1) _selection = 3;		//if keyDn only
	if (_keyDir.x == -1 && _keyDir.y == 0) _selection = 4;		//if keyLt only
	
	//Diagonal directions
	if (_keyDir.x == -1 && _keyDir.y == -1) _selection = 5;		//if keyLt & KeyUp only
	if (_keyDir.x == 1 && _keyDir.y == -1) _selection = 6;		//if keyRt & keyUp only
	if (_keyDir.x == 1 && _keyDir.y == 1) _selection = 7;		//if keyLt & keyDn only
	if (_keyDir.x == -1 && _keyDir.y == 1) _selection = 8;		//if keyRt & keyDn only

	_obj.selectStats[_selection].selected = true;
	oDeckCtrl.currentDir = _selection;
	if (_obj.object_index = oHold) {
		_obj.currentCargoSelection = _selection;
	}
	
}