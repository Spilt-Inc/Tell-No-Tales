

function drawDeckObj(_sprite){
	var _deckObj = oDeckCtrl.deckObj.current
	if (_deckObj .id == id) {
		if (_deckObj.object_index != oBilge) && (oDeckCtrl.deckChangeAnim.trigger) {
			draw_sprite(sprite_index,image_index - 1, oMapMarker.x,oMapMarker.y + oDeckCtrl.deckChangeAnim.prevYDist);
			oDeckCtrl.deckChangeAnim.prevYDistFinal = oMapMarker.y + oDeckCtrl.deckPrevYDist;
		}
		if oDeckCtrl.deckChangeAnim.fadeGo {
			draw_sprite_ext(sprite_index,image_index - 1, oMapMarker.x,oDeckCtrl.deckChangeAnim.prevYDistFinal,1,1,0,c_white,oDeckCtrl.deckChangeAnim.alpha);
		}
		draw_self();
		drawDeckItems(DIRS.NUMDIRS,_sprite);
	}
}