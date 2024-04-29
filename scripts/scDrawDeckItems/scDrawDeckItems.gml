
/// @arg0 numItems

function drawDeckItems(_numItems,_sprite){
	var _deckObj = oDeckCtrl.deckObj.current;
	for (var i = _numItems - 1; i >= 0; i--){
		var _selectStats = _deckObj.selectStats[i];
		if (oDeckCtrl.deckObj.current.object_index != oBilge) {
			draw_sprite_ext(_selectStats.sprite, 
				_selectStats.subImg, 
				_selectStats.x, 
				_selectStats.y, 
				_selectStats.width, 
				_selectStats.height, 
				0, 
				c_white, 
				1
			);
		}
		else {
			if (oDeckCtrl.bilgeBreaches[i].active) {
				draw_sprite_ext(
					_selectStats.sprite, 
					_selectStats.subImg, 
					_selectStats.x, 
					_selectStats.y, 
					_selectStats.width, 
					_selectStats.height, 
					0, 
					c_white, 
					1
				);
			}	
		}
	}
}