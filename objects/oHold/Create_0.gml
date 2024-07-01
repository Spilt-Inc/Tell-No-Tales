
/// @desc oHold - Create 

image_speed = 0;
image_index = DECKS.HOLD;
numDeckDirs = 4;

var _x1, _x2, _x3, _y1, _y2, _y3, _y4; 
_x1 = x;
_x2 = x - 120;
_x3 = x + 120;
_y1 = y - sprite_width - 100;
_y2 = y - (_y1 + 450);
_y3 = y - (_y1 - 150);
_y4 = _y1 + 150;

cargoLoc = {
	x : [_x1, _x1, _x3, _x1, _x2],
	y : [_y4, _y2, _y1, _y3, _y1]
}

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
	HLSubImg : [0, 1,2,3,4, 0,0,0,0],
	rad : [20, 20,20,20,20, 0,0,0,0]
}

createSelectStats(true,true,true,false,cargoPreset,roomGridInc,DIRS.NUMDIRS);

////////////////////


#region Movement

maxSpd = 5;
acc = maxSpd * 0.01;
brakeSpd = maxSpd * 0.05;
turnSpd = 2; 

var _xUp = lengthdir_x(1,image_angle);
var _yUp = lengthdir_y(1,image_angle);
var _projMat = matrix_build_projection_ortho(oCamera.camWidth,oCamera.camHeight, 1, 1);
var _viewMat = matrix_build_lookat(x,y,-10, x,y,0, _xUp,_yUp,0);
camera_set_view_mat(oCamera.cam,_viewMat);
camera_set_proj_mat(oCamera.cam,_projMat);
view_camera[0] = oCamera.cam;

#region

////////////////////