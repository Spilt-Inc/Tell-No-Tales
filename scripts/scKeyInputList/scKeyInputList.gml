
///@arg0 player
///@arg1 selectedItem

function keyInputList(_plr,_selected){

	if _plr.key.dnPrs {
		show_debug_message("DOWN");	
	}

	var _keyDir = {x : undefined, y : undefined};
	_keyDir.y = _plr.key.dnPrs - _plr.key.upPrs;
	_selected += _keyDir.y;
	return _selected;
}