
/// @desc oOcean - Create


rot = 0;
spd = 0;
hypAng = sin (display_get_width() / (sqrt(sqr(display_get_width()) + sqr(display_get_height())))) + 90;
keyLt = keyboard_check(vk_left);
keyRt = keyboard_check(vk_right);
keyDir = keyRt - keyLt;
xx = x;
yy = y;

sprite = {
	xOrig : x,
	yOrig : y
}

//var _diagLengthX = lengthdir_x(sqrt(sqr(sprite_width / 2) + sqr (sprite_height / 2)),rot + 45);
//var _diagLengthY = lengthdir_y(sqrt(sqr(sprite_width / 2) + sqr (sprite_height / 2)),rot + 45)

origCorner = {
	xx : [ 
		undefined,
		undefined,		
		undefined,		
		undefined,
	],
	yy : [
		undefined,
		undefined,		
		undefined,		
		undefined,
	]
};		

numCorners = 4;
for (var i = 0; i < numCorners; i++) {
	origCorner.xx[i] = xx - lengthdir_x(sqrt(sqr(sprite_width / 2) + sqr(sprite_height / 2)),rot - 45 - (i * 90));
	origCorner.yy[i] = yy - lengthdir_y(sqrt(sqr(sprite_width / 2) + sqr(sprite_height / 2)),rot - 45 - (i * 90));
}

orderGridx = ds_grid_create(2,array_length(origCorner.xx) + 1);
orderGridy = ds_grid_create(2,array_length(origCorner.yy) + 1);
function putInOrder(_cornerArr,_orderGrid,_xy) {
	var _holdVal;
	ds_grid_set(_orderGrid,0,0,_xy);
	ds_grid_set(_orderGrid,1,0,-1);
	for (var i = 1; i < ds_grid_height(_orderGrid); i++) {
		ds_grid_set(_orderGrid,0,i,_cornerArr[i - 1]);
		ds_grid_set(_orderGrid,1,i,i - 1);
	}
	ds_grid_sort(_orderGrid,0,true);
	for (var i = 0; i < ds_grid_height(_orderGrid); i++) {
		if (_orderGrid[# 1,i] == -1) {
			return i;
		}
	}
}

vec = {
	lx : {
		v1 : {
			xx : undefined,
			yy : undefined
		},
		v2 : {
			xx : undefined,
			yy : undefined
		},
		xx : undefined
	},
	rx : {
		v1 : {
			xx : undefined,
			yy : undefined
		},
		v2 : {
			xx : undefined,
			yy : undefined
		},
		xx : undefined
	},
	ty : {
		v1 : {
			xx : undefined,
			yy : undefined
		},
		v2 : {
			xx : undefined,
			yy : undefined
		},
		xx : undefined
	},
	by : {
		v1 : {
			xx : undefined,
			yy : undefined
		},
		v2 : {
			xx : undefined,
			yy : undefined
		},
		xx : undefined
	}
}

function resetCircular (_arrNum,_arr) {
	var _arrHeight = array_length(_arr);
	if (_arrNum > _arrHeight - 1) {
		return _arrNum - _arrHeight;
	}
	else {
		if (_arrNum < 0) {
			return _arrNum + _arrHeight;
		}
		else {
			return _arrNum;	
		}
	}
}
