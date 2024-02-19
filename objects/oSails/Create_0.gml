
/// @desc oSails - Create

image_speed = 0;
image_index = DECKS.SAILS;
xScaleOrig = 6;
yScaleOrig = 10;
image_xscale = 6;
image_yscale = 10;

//numSails = oConstant.numSails;
selectedSail = 0;

oConstant.roomGridInc = (sprite_width / image_xscale) / 2;
var _roomGridInc = oConstant.roomGridInc;

var _sailsPreset = {
	name : ["Fore mast","Main mast","Mizzen mast"],
	x : [0,0,0],
	y : [-8,0,8], 
	width : [2,2,2],
	height : [2,2,2],
	subImg : [3,3,3]
}

createSelectStats(_sailsPreset,_roomGridInc,numSails);






