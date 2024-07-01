
/// @desc oPlrItems - Create


itemSprite = [sBucketEmpty,sGrog,sTimber,sCannonballs,sSailcloth];
sprite_index = itemSprite[oDeckCtrl.usingPlr.currentItem.num];
image_speed = 0;

image_xscale *= 2;
image_yscale *= 2;


#region Bucket Management

wobbleGo = false;
wobbleCountMax = 50;
wobbleCount = wobbleCountMax;
spillGo = false;
spillAnimCountMax = 50;
spillAnimCount = spillAnimCountMax;

function bucketWobble() {
	
	if (wobbleGo) {
		wobbleCount--;
		image_speed = 1;
		if (oDeckCtrl.deckPrev != oDeckCtrl.deckObj.num) {
			oDeckCtrl.bucketContents -= 10;
			oDeckCtrl.shipDamage += 10;
			spillGo = true;
		}
		if (wobbleCount <= 0) {
			wobbleGo = false;
			wobbleCount = wobbleCountMax;
			image_speed = 0;
			image_index = 0;
		}
	}
	
	if (spillGo) && (oDeckCtrl.bucketContents > oDeckCtrl.bucketContentsMax / 2) {
		spillAnimCount--;
		sprite_index = sBucketFullSpill;
		if (spillAnimCount <= 0) {
			spillGo = false;
			spillAnimCount = spillAnimCountMax;
		}
	}
	
	if (oDeckCtrl.deckPrev != oDeckCtrl.deckObj.num) && (oDeckCtrl.bucketContents > 0) {
		wobbleGo = true;	
	}
	
}

#endregion

/////////////////////////////