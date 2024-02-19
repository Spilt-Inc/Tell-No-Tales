
/// @desc oMainDeck - Create


image_speed = 0;
image_index = DECKS.MAINDECK;
xScaleOrig = 6;
yScaleOrig = 10;
image_xscale = 6;
image_yscale = 10;

oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;

mainDeckPreset = {
	name : [0,"Bow","Starboard","Stern","Port",0,0,0,0],
	x : [0, 0,3,0,-3, 0,0,0,0],
	y : [0, 0,0,0,0, 0,0,0,0], 
	width : [0, 0,2,0,2, 0,0,0,0],
	height : [0, 0,2,0,2, 0,0,0,0],
	subImg : [0, 0,3,0,3, 0,0,0,0]
}

createSelectStats(mainDeckPreset,roomGridInc,DIRS.NUMDIRS);




