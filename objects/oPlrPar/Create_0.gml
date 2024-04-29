
/// @desc oPlrPar - Create


items = {
	name : ["Bucket","Grog","Timber","Cannonballs","Sailcloth"],
	num : [0, 1, 2, 3, 4, 5],
	maxAmt : [1, 3, 4, 5, 30]
}

currentItem = {
	name : items.name[0],
	num : items.num[0],
	amount : items.maxAmt[0]
}


function selectOption() {
	if (oDeckCtrl.deckObj.current.object_index == oHold) && (key.action) {
		var _cargoSelection = oDeckCtrl.deckObj.current.currentCargoSelection;
		currentItem.name = items.name[_cargoSelection];
		currentItem.num = items.num[_cargoSelection];
		currentItem.amount = items.maxAmt[_cargoSelection];
	}
}