
/// @desc oMainDeck - Create


image_speed = 0;
image_index = DECKS.MAINDECK;
numDeckDirs = 2;

var _xOffset, _x1, _x2, _y1, _y2, _y3;
_xOffset = 250;
_x1 = _xOffset;
_x2 = -_xOffset;
_y1 = 480;

//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;

mainDeckPreset = {
	name : [0,"Bow","Starboard","Stern","Port",0,0,0,0],
	x : [0, 0,_x1,0,_x2, 0,0,0,0],
	y : [0, 0,_y1,0,_y1, 0,0,0,0], 
	width : [0, 0,0,0,0, 0,0,0,0],
	height : [0, 0,0,0,0, 0,0,0,0],
	sprite : [sCargo, sCargo,sCargo,sCargo,sCargo, sCargo,sCargo,sCargo,sCargo,],
	subImg : [0, 0,3,0,3, 0,0,0,0],
	HLSprite : [sCargo, sCargo,sCargo,sCargo,sCargo, sCargo,sCargo,sCargo,sCargo,],
	HLSubImg : [0, 1,1,1,1, 1,1,1,1],
	rad : [0, 0,50,0,50, 0,0,0,0]
}

createSelectStats(false,false,true,false,mainDeckPreset,roomGridInc,DIRS.NUMDIRS);

////////////////////


#region Movement

maxSpd = 5;
acc = maxSpd * 0.01;
brakeSpd = maxSpd * 0.05;
turnSpd = 2; 
imageAngPrev = image_angle;

var _viewMat = matrix_build_lookat(x,y,-10, x,y,0, 1,0,0);
var _projMat = matrix_build_projection_ortho(oCamera.camWidth,oCamera.camHeight, 1, 1000);
camera_set_proj_mat(oCamera.cam,_projMat);
camera_set_view_mat(oCamera.cam,_viewMat);

#region

////////////////////


//Swaze animation
animCount = irandom_range(3,10);
swazeSubImg = 0;

