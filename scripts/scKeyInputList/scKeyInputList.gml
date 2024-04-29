
///@arg0 keyUp
///@arg1 keyDn
///@arg2 selectedItem

function keyInputList(_keyUp, _keyDn, _selected){
	
	var _keyDir = {x : undefined, y : undefined};
	_keyDir.y = _keyDn - _keyUp;
	_selected += -_keyDir.y;
	return _selected;
}