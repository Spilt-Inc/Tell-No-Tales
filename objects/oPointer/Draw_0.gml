
/// @desc oPointer - Draw


var _deckObj = oDeckCtrl.deckObj.current;
var _x1 = x + lengthdir_x(rad,rot);
var _y1 = y + lengthdir_y(rad,rot);
var _x2 = x - lengthdir_x(rad,rot);
var _y2 = y - lengthdir_y(rad,rot);
var _dir = point_direction(x,y,_x1,_y1);
if (_deckObj.selectStats[oDeckCtrl.currentDir].exists) {
	draw_sprite_ext(sPointer,0,_x1,_y1,2,2,_dir + 90,c_white,1);
	draw_sprite_ext(sPointer,0,_x2,_y2,2,2,_dir - 90,c_white,1);
}
else {
	draw_sprite_ext(sPointer,0,x,y - 500,2,2,30,c_white,1);
	draw_sprite_ext(sPointer,0,x,y - 500,-2,2,-30,c_white,1);
}


