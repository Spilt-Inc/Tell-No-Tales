
/// @arg0 useNull
/// @arg1 useUpDn
/// @arg2 useLtRt
/// @arg3 useDiag
/// @arg4 struct
/// @arg5 roomGridInc
/// @arg6 numItems

function createSelectStats(_useNull,_useUpDn,_useLtRt,_useDiag,_struct,_roomGridInc,_numItems){
	
	var _deckObj = self;
	
	for (var i = _numItems - 1; i >= 0; i--){
		var _x = _struct.x[i];
		var _y = _struct.y[i];
		if (
			(!_useNull && i == 0) 
			|| (!_useUpDn && (i == 1 || i == 3)) 
			|| (!_useLtRt && (i == 4 || i == 2)) 
			|| (!_useDiag && (i == 5 || i == 6 || i == 7 || i == 8)) 
			) 
		{
			selectStats[i] = {
				exists : false,
				x : _deckObj.x + _x,
				y : _deckObj.y + _y,
				selected : false
			}
		}
		else {
			selectStats[i] = {
				exists : true,
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
				selected : false,
				rad : _struct.rad[i]
			}
		}
	}
}