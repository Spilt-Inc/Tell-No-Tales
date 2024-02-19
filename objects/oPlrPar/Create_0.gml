
/// @desc oPlrPar - Create


items = {
	name : ["Bucket","Grog","Timber","Cannonballs","Sailcloth"],
	maxAmt : [1, 3, 4, 5, 30]
}

currentItem = {
	name : items.name[0],
	amount : items.maxAmt[0]
}


function selectOption() {
	if (oDeckCtrl.deckObj.current.object_index == oHold) && (key.action) {
		var _cargoSelection = oDeckCtrl.deckObj.current.currentCargoSelection;
		currentItem.name = items.name[_cargoSelection];
		currentItem.amount = items.maxAmt[_cargoSelection];
	}
}