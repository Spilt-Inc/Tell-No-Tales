
/// @desc oPlrItems - Step



var _currentItem = oDeckCtrl.usingPlr.currentItem.num;
sprite_index = itemSprite[_currentItem];
var _itemNum = oPlrPar.currentItem.num;
if (_itemNum != PLRITEMS.SAILCLOTH) && (_itemNum != PLRITEMS.BUCKET) {
	image_index = oPlrPar.currentItem.amount;
}

//Bucket Management

if (oDeckCtrl.usingPlr.currentItem.num == PLRITEMS.BUCKET) {
	if (oDeckCtrl.bucketContents > ((oDeckCtrl.bucketContentsMax / 10) * 9)) {
		sprite_index = sBucketFull;
	}
	else {
		sprite_index = sBucketEmpty;
	}
	bucketWobble();
}

//////////////////////////



