
/// @desc oGunDeck - Draw


drawDeckObj();


for (var i = 0; i < DIRS.NUMDIRS; i++) {
	var _cannons = oDeckCtrl.cannons;
	var _x = oDeckCtrl.deckObj.current.x + (cannonPreset.x[i] * roomGridInc);
	var _y = oDeckCtrl.deckObj.current.y + (cannonPreset.y[i] * roomGridInc);
	draw_text(_x, _y, string(_cannons.numShots[i]));
}

