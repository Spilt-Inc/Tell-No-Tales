
/// @arg0 numItems

function drawDeckItems(_numItems){
	for (var i = _numItems - 1; i >= 0; i--){
		if (oDeckCtrl.deckObj.current.object_index != oBilge) {
			draw_sprite_ext(sCargo,selectStats[i].subImg,selectStats[i].x,selectStats[i].y,selectStats[i].xScale,selectStats[i].yScale,0,selectStats[i].colour,1);
		}
		else {
			if (oDeckCtrl.bilgeBreaches[i].active) {
				draw_sprite_ext(sCargo,selectStats[i].subImg,selectStats[i].x,selectStats[i].y,selectStats[i].xScale,selectStats[i].yScale,0,selectStats[i].colour,1);
			}	
		}
	}
}