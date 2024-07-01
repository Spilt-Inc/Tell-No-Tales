
/// @desc oOcean - Step


//game_set_speed(1,gamespeed_fps);

keyLt = keyboard_check(vk_left);
keyRt = keyboard_check(vk_right);
keyDir = keyRt - keyLt;
rot += keyDir;
spd -= 0.5;
//sprite.yOrig += spd;
xx = x + lengthdir_x(spd,rot - 90);
yy = y + lengthdir_y(spd,rot - 90);

/////////////////////

for (var i = 0; i < numCorners; i++) {
	origCorner.xx[i] = xx - lengthdir_x(sqrt(sqr(sprite_width / 2) + sqr(sprite_height / 2)),rot - 45 - (i * 90));
	origCorner.yy[i] = yy - lengthdir_y(sqrt(sqr(sprite_width / 2) + sqr(sprite_height / 2)),rot - 45 - (i * 90));
}

/////////////////////

var _xArrNum = putInOrder(origCorner.xx,orderGridx,x);
var _yArrNum = putInOrder(origCorner.yy,orderGridy,y);
//var _orderX = origCorner[# 1,_xArrNum];
var _upVec = orderGridy[# 1,_yArrNum - 1];
var _dnVec = orderGridy[# 1,_yArrNum + 1];
var _ltVec = orderGridx[# 1,_xArrNum - 1];
var _rtVec = orderGridx[# 1,_xArrNum + 1];
var _len, _rot, _distX, _distY, _lxv1, _lxv2, _rxv1, _rxv2, _resetVal;

/////////////////////

#region Assigning X coordinates

if (origCorner.xx[_upVec] < x) {
	_lxv1 = _upVec;
	_lxv2 = _upVec - 1;
	_lxv2 = resetCircular(_lxv2,origCorner.yy);
	_rxv2 = _dnVec;
	_rxv1 = _dnVec - 1;
	_rxv1 = resetCircular(_rxv1,origCorner.yy);
}
else {
	_lxv2 = _dnVec;
	_lxv1 = _dnVec + 1;
	_lxv1 = resetCircular(_lxv1,origCorner.yy);
	_rxv1 = _upVec;
	_rxv2 = _upVec + 1;	
	_rxv2 = resetCircular(_rxv2,origCorner.yy);
}
	
vec.lx.v1.xx = origCorner.xx[_lxv1];
vec.lx.v1.yy = origCorner.yy[_lxv1];
vec.lx.v2.xx = origCorner.xx[_lxv2];
vec.lx.v2.yy = origCorner.yy[_lxv2];
_len = (vec.lx.v2.yy - y);
_rot = point_direction(vec.lx.v2.xx, vec.lx.v2.yy, vec.lx.v1.xx, vec.lx.v1.yy) //- (rot - 90);
_distX = vec.lx.v2.xx + (_len / dtan(_rot));
_distY = y;
vec.lx.xx = _distX;
vec.lx.yy = _distY;
	
vec.rx.v1.xx = origCorner.xx[_rxv1];
vec.rx.v1.yy = origCorner.yy[_rxv1];
vec.rx.v2.xx = origCorner.xx[_rxv2];
vec.rx.v2.yy = origCorner.yy[_rxv2];
_len = (vec.rx.v2.yy - y);
_rot = point_direction(vec.rx.v2.xx, vec.rx.v2.yy, vec.rx.v1.xx, vec.rx.v1.yy) //- (rot - 90);
_distX = vec.rx.v2.xx + (_len / dtan(_rot));
_distY = y;
vec.rx.xx = _distX;
vec.rx.yy = _distY;

#endregion

//////////////////////////////

#region Assigning Y coordinates

if (origCorner.yy[_rtVec] < y) {
	_lxv1 = _rtVec;
	_lxv2 = _rtVec - 1;
	_lxv2 = resetCircular(_lxv2,origCorner.xx);
	_rxv2 = _ltVec;
	_rxv1 = _ltVec - 1;
	_rxv1 = resetCircular(_rxv1,origCorner.xx);
}
else {
	_lxv2 = _ltVec;
	_lxv1 = _ltVec + 1;
	_lxv1 = resetCircular(_lxv1,origCorner.xx);
	_rxv1 = _rtVec;
	_rxv2 = _rtVec + 1;	
	_rxv2 = resetCircular(_rxv2,origCorner.xx);
}
	
vec.ty.v1.xx = origCorner.xx[_lxv1];
vec.ty.v1.yy = origCorner.yy[_lxv1];
vec.ty.v2.xx = origCorner.xx[_lxv2];
vec.ty.v2.yy = origCorner.yy[_lxv2];
_len = (x - vec.ty.v2.xx);
_rot = point_direction(vec.ty.v2.xx, vec.ty.v2.yy, vec.ty.v1.xx, vec.ty.v1.yy) + 90;
_distX = x;
_distY = vec.ty.v2.yy + (_len / dtan(_rot));;
vec.ty.xx = _distX;
vec.ty.yy = _distY;
	
vec.by.v1.xx = origCorner.xx[_rxv1];
vec.by.v1.yy = origCorner.yy[_rxv1];
vec.by.v2.xx = origCorner.xx[_rxv2];
vec.by.v2.yy = origCorner.yy[_rxv2];
_len = (x - vec.by.v2.xx);
_rot = point_direction(vec.by.v2.xx, vec.by.v2.yy, vec.by.v1.xx, vec.by.v1.yy) + 90;
_distX = x;
_distY = vec.by.v2.yy + (_len / dtan(_rot));
vec.by.xx = _distX;
vec.by.yy = _distY;

#endregion

//////////////////////////////


if ((vec.ty.yy) > y) {
	//xx -= lengthdir_x(sprite_height,rot - 90);
	//yy -= lengthdir_y(sprite_width,rot - 90);
	spd = lengthdir_y(sprite_width,rot + 90);
}
else {
	if ((vec.by.yy) < y) {
		//xx += lengthdir_x(sprite_height,rot - 90);
		//yy += lengthdir_y(sprite_width,rot - 90);
		spd += sprite_width;
	}
	else {
		if ((vec.lx.xx) > x) {
			//xx -= lengthdir_x(sprite_height,rot - 90);
			//yy -= lengthdir_y(sprite_width,rot - 90);
			spd += sprite_width;
		}
		else 
			if ((vec.rx.xx) < x) {
				xx += lengthdir_x(sprite_height,rot - 90);
				yy += lengthdir_y(sprite_width,rot - 90);
				spd = lengthdir_y(sprite_width,rot + 90);
		}
	}
}
