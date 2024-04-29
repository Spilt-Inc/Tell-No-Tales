
/// @desc oSails - Create

image_speed = 0;
image_index = DECKS.SAILS;

//numSails = oConstant.numSails;
selectedSail = 0;
fadeGo = false;

//oConstant.roomGridInc = (sprite_width / image_xscale) / 2;
var _roomGridInc = oConstant.roomGridInc;

sailsPreset = {
	name : ["Fore mast","Main mast","Mizzen mast"],
	num : [0,1,2],
	x : [0,0,0],
	y : [-7,-14,-21], 
	subImg : [0,1,2],
	alpha : [1,1,1]
}

for (var i = numSails - 1; i >= 0; i--){
	var _x = sailsPreset.x[i];
	var _y = sailsPreset.y[i];
	selectStats[i] = {
		name : sailsPreset.name[i],
		num :sailsPreset.num[i],
		xx : x,
		yy : (y - oDeckCtrl.yDist) + (sailsPreset.y[i] * _roomGridInc),
		//xScale : _struct.width[i] * (image_xscale / xScaleOrig),
		//yScale : _struct.height[i] * (image_yscale / yScaleOrig),
		subImg : sailsPreset.subImg[i],
		alpha : sailsPreset.alpha[i],
		colour : c_grey,
		selected : false,
		colour : c_white
	}
}

function sailsAnim(_inc) {
	for (var i = numSails - 1; i >= 0; i--) {
		selectStats[i].yy = y + (sailsPreset.y[i] * _inc);	//Adjusting y pos of sail
	
		//Fading out sails in front of selected sail
		if (selectedSail <= i) {
			fadeGo = true;
			if fadeGo {
				selectStats[i].alpha += 0.05;
				if selectStats[i].alpha >= 1{
					selectStats[i].alpha = 1;
					fadeGo = false;
				}
			}
		}
		else {
			fadeGo = true;
			if fadeGo{
				selectStats[i].alpha -= 0.05;
				if selectStats[i].alpha <= 0 {
					selectStats[i].alpha = 0;		
					fadeGo = false;
				}
			}
		}
	
		//Darkening sails behind selected sail
		if (selectedSail < i) {
			selectStats[i].colour = c_grey;
		}
		else {
			selectStats[i].colour = c_white;
		}
	}		
}

function camAdjust() {
	var _sailSpriteHeight = sprite_get_height(sMainMast);
	if oDeckCtrl.deckChangeAnim.trigger == false{
		oCamera.camY = (selectStats[selectedSail].yy) - (_sailSpriteHeight / 2);
	}
	else {
		with oCamera {
			camY = camYDefault;	
		}
	}
}





