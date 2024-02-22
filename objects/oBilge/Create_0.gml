
/// @desc oBilge - Create


image_speed = 0;
image_index = DECKS.BILGE;
xScaleOrig = 6;
yScaleOrig = 10;
image_xscale = 6;
image_yscale = 10;

oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;
currentDir = 0;

bilgePreset = {
	name : [0,"Bow","Starboard","Stern","Port",0,0,0,0],
	x : [0, 0,3,0,-3, -3,3,3,-3],
	y : [0, -8,0,8,0, -8,-8,8,8], 
	width : [0, 2,2,2,2, 2,2,2,2],
	height : [0, 2,2,2,2, 2,2,2,2],
	subImg : [0, 1,1,1,1, 1,1,1,1]
}

goi

createSelectStats(bilgePreset,roomGridInc,DIRS.NUMDIRS);




