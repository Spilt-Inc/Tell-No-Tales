
/// @desc oGunDeck - Draw


drawDeckObj(sCargo);


for (var i = 0; i < DIRS.NUMDIRS; i++) {
	var _cannons = oDeckCtrl.cannons;
	var _cannonRackXOffset = -40;
	var _cannonRackYOffset = 30;
	var _selectStats = selectStats[i];
	if (_selectStats.exists) {
		var _x = _selectStats.x + (sign(_selectStats.width) * _cannonRackXOffset);
		var _y = _selectStats.y + _cannonRackYOffset;
		draw_sprite_ext(sCannonRack, _cannons.numShots[i], _x, _y, _selectStats.width, _selectStats.height, 0, c_white, 1);
	}
}

