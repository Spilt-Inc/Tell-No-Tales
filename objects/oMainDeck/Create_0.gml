
/// @desc oMainDeck - Create


image_speed = 0;
image_index = DECKS.MAINDECK;
//xScaleOrig = 2;
//yScaleOrig = 2;
//image_xscale = 6;
//image_yscale = 10;

//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;

mainDeckPreset = {
	name : [0,"Bow","Starboard","Stern","Port",0,0,0,0],
	x : [0, 0,3,0,-3, 0,0,0,0],
	y : [0, 0,0,0,0, 0,0,0,0], 
	width : [0, 0,0,0,0, 0,0,0,0],
	height : [0, 0,0,0,0, 0,0,0,0],
	sprite : [sCargo, sCargo,sCargo,sCargo,sCargo, sCargo,sCargo,sCargo,sCargo,],
	subImg : [0, 0,3,0,3, 0,0,0,0],
	HLSprite : [sCargo, sCargo,sCargo,sCargo,sCargo, sCargo,sCargo,sCargo,sCargo,],
	HLSubImg : [0, 1,1,1,1, 1,1,1,1]
}

createSelectStats(mainDeckPreset,roomGridInc,DIRS.NUMDIRS);




