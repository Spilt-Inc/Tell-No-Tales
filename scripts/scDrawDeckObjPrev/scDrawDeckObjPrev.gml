

function drawDeckObjPrev(_sprite){
	if instance_exists(oDeckCtrl.deckObj.prev) && (oDeckCtrl.deckObj.prev.id == id) {
		draw_self();
		drawDeckItems(DIRS.NUMDIRS,_sprite);
	}
}