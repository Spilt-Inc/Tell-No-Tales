
/// @arg0 struct
/// @arg1 roomGridInc
/// @arg2 numItems

function updateSelectStats(_struct,_roomGridInc,_numItems){
	
	var _deckObj = self;
	
	for (var i = _numItems - 1; i >= 0; i--){
		var _x = _struct.x[i];
		var _y = _struct.y[i];
		selectStats[i].x = _deckObj.x + (_x * _roomGridInc);
		selectStats[i].y = _deckObj.y + (_y * _roomGridInc);
		selectStats[i].xScale = _struct.width[i] * (image_xscale / xScaleOrig);
		selectStats[i].yScale = _struct.height[i] * (image_yscale / yScaleOrig);
		}
	}