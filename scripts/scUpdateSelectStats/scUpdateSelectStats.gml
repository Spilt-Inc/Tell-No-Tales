
/// @arg0 struct
/// @arg1 roomGridInc
/// @arg2 numItems

function updateSelectStats(_struct,_roomGridInc,_numItems){
	var _deckObj = oDeckCtrl.deckObj.current;
	for (var i = _numItems - 1; i >= 0; i--){
		//var _x = _struct.x[i];
		//var _y = _struct.y[i];
		selectStats[i].x = _deckObj.x + _struct.x[i];
		selectStats[i].y = _deckObj.y - _struct.y[i];
		//selectStats[i].xScale = _struct.width[i] * (image_xscale / xScaleOrig);
		selectStats[i].width = _struct.width[i];
		HLSprite = _struct.HLSprite[i];
		HLSubImg = _struct.HLSubImg[i];
	}
}