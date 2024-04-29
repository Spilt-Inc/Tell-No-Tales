
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
				x : _deckObj.x + _struct.x[i],
				y : _deckObj.y - _struct.y[i],
				width : _struct.width[i],
				height : _struct.height[i],
				sprite : _struct.sprite[i],
				subImg : _struct.subImg[i],
				HLSprite : _struct.HLSprite[i],
				HLSubImg : _struct.HLSubImg[i],
				colour : c_grey,
				selected : false
			}
		}
}