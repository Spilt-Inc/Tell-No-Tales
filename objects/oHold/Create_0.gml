
/// @desc oHold - Create 

image_speed = 0;
image_index = DECKS.HOLD;

currentCargoSelection = 0;
//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;

cargoPreset = {
	name : [0,"Grog", "Timber", "Cannonballs", "Sailcloth",0,0,0,0],
	x : [0, 0,0,0,0, 0,0,0,0],
	y : [0, 0,0,0,0, 0,0,0,0],
	width : [1, 1,1,1,1,0,0,0,0],
	height : [1, 1,1,1,1,0,0,0,0],
	sprite : [sBucketCargo, sGrogCargo,sTimberCargo,sCannonballCargo,sSailclothCargo, sBucketCargo,sBucketCargo,sBucketCargo,sBucketCargo],
	subImg : [0, 0,0,0,0, 0,0,0,0],
	HLSprite : [sPlrItemsHighlight, sPlrItemsHighlight,sPlrItemsHighlight,sPlrItemsHighlight,sPlrItemsHighlight, sPlrItemsHighlight,sPlrItemsHighlight,sPlrItemsHighlight,sPlrItemsHighlight], 
	HLSubImg : [0, 1,2,3,4, 0,0,0,0]
}

createSelectStats(cargoPreset,roomGridInc,DIRS.NUMDIRS);

