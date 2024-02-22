
/// @arg0 struct
/// @arg1 roomGridInc
/// @arg2 numItems

function createSelectStats(_struct,_roomGridInc,_numItems){
	
	var _deckObj = self;
	
	for (var i = _numItems - 1; i >= 0; i--){
		var _x = _struct.x[i];
		var _y = _struct.y[i];
		selectStats[i] = {
			name : _struct.name[i],
			x : _deckObj.x + (_x * _roomGridInc),
			y : _deckObj.y + (_y * _roomGridInc),
			xScale : _struct.width[i] * (image_xscale / xScaleOrig),
			yScale : _struct.height[i] * (image_yscale / yScaleOrig),
			subImg : _struct.subImg[i],
			colour : c_grey,
			selected : false
		}
	}
}

function createSelectStats(areas){
	for (var i = areas.length - 1; i >= 0; i--){
		stats[i] = {
			name: areas[i].name,
			x : _deckObj.x + (areas[i] * roomGridInc),
			y : _deckObj.y + (areas[i] * roomGridInc),
			xScale : areas[i].width * (image_xscale / xScaleOrig),
			yScale : areas[i].height * (image_yscale / yScaleOrig),
			subImg : areas[i].subImg,
			colour : c_grey,
			selected : false
		}
	}
}
