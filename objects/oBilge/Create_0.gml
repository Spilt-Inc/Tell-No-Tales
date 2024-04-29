
/// @desc oBilge - Create


image_speed = 0;
image_index = DECKS.BILGE;

//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
roomGridInc = oConstant.roomGridInc;
currentDir = 0;

#macro animCountMax 5
animCount = animCountMax;

var _xOffset, _x1, _x2, _y1, _y2, _y3, _y4, _y5;
_xOffset = 110;
_x1 = _xOffset;
_x2 = -_xOffset;
_y1 = 800;
_y2 = 720;
_y3 = 540;
_y4 = 380;
_y5 = 70;

bilgePreset = {
	name : [0,"Bow","Starboard","Stern","Port",0,0,0,0],
	x : [0, 0,_x1,0,_x2, _x2,_x1,_x1,_x2],
	y : [0, _y1,_y3,_y5,_y3, _y2,_y2,_y4,_y4], 
	width : [0, 2,2,2,-2, -2,2,2,-2],
	height : [0, 2,2,-2,2, 2,2,2,2],
	sprite : [sBreachHrz, sBreachVrt,sBreachHrz,sBreachVrt,sBreachHrz, sBreachHrz,sBreachHrz,sBreachHrz,sBreachHrz],
	subImg : [0, 0,0,0,0, 0,0,0,0],
	HLSprite : [sCargo, sCargo,sCargo,sCargo,sCargo, sCargo,sCargo,sCargo,sCargo,],
	HLSubImg : [0, 1,1,1,1, 1,1,1,1]
}

createSelectStats(bilgePreset,roomGridInc,DIRS.NUMDIRS);

floodInst = undefined;
floodGo = true;
floodAnimUnit = 10;
function floodAnim() {	
	if (floodGo) && (oDeckCtrl.shipDamage > 0) {
		floodInst = instance_create_layer(x, y, "lFront", oFlood);
		floodGo = false;
	}
}




