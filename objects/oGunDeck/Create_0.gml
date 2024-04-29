
/// @desc oGunDeck - Create


image_speed = 0;
image_index = DECKS.GUNDECK;

var _xOffset, _x1, _x2, _y1, _y2, _y3;
_xOffset = 110;
_x1 = _xOffset;
_x2 = -_xOffset;
_y1 = 680;
_y2 = 480;
_y3 = 340;

//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;

cannonPreset = {
	name : [0,0, "Mid Starboard",0,"Mid Port","Fore Port","Fore Starboard","Aft Starboard","Aft Port"],
	x : [0, 0,_x1,0,_x2, _x2,_x1,_x1,_x2],
	y : [0, 0,_y2,0,_y2, _y1,_y1,_y3,_y3], 
	width : [0, 0,1,0,-1, -1,1,1,-1],
	height : [0, 0,1,0,1, 1,1,1,1],
	sprite : [sCannon, sCannon,sCannon,sCannon,sCannon, sCannon,sCannon,sCannon,sCannon],
	subImg : [0, 0,0,0,0, 0,0,0,0],
	HLSprite : [sCannonHighlight, sCannonHighlight,sCannonHighlight,sCannonHighlight,sCannonHighlight, sCannonHighlight,sCannonHighlight,sCannonHighlight,sCannonHighlight],
	HLSubImg : [0, 0,0,0,0, 0,0,0,0]
}

createSelectStats(cannonPreset,roomGridInc,DIRS.NUMDIRS);

//Animation
cannonAnimCountMax = 10;
for (var i = 0; i < DIRS.NUMDIRS; i++) { oDeckCtrl.cannons.animCount[i] = animCountMax} ;
cannonSubImg = 0;





