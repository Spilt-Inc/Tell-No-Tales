
/// @desc oHold - Create 

image_speed = 0;
image_index = DECKS.HOLD;
xScaleOrig = 6;
yScaleOrig = 10;
image_xscale = xScaleOrig;
image_yscale = yScaleOrig;

currentCargoSelection = 0;
oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;

cargoPreset = {
	name : [0,"Grog", "Timber", "Cannonballs", "Sailcloth",0,0,0,0],
	x : [0, 0,4,0,-4, 0,0,0,0],
	y : [0, -8,0,8,0, 0,0,0,0], 
	width : [0,7,2,7,2,0,0,0,0],
	height : [0,2,10,2,10,0,0,0,0],
	subImg : [0, 0,1,2,3, 0,0,0,0]
}

createSelectStats(cargoPreset,roomGridInc,DIRS.NUMDIRS);

