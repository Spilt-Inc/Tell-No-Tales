
/// @desc oSails - Draw


if (oDeckCtrl.deckChangeAnim.trigger) {
	draw_sprite(sprite_index,image_index - 1,oMapMarker.x,oMapMarker.y);	
}
draw_self();

for (var i = numSails - 1; i >= 0; i--){
	var _y = selectStats[i].yy;
	var _selectStats = selectStats[i];
	draw_sprite_ext(sMainMast, _selectStats.subImg, x, _y, 1, 1, 0, _selectStats.colour, _selectStats.alpha);
}

draw_set_color(c_black);
for (var i = numSails - 1; i >= 0; i--){
	draw_text(selectStats[i].xx, selectStats[i].yy, string(floor(oDeckCtrl.sails[i].damage)));
}



//Drawing Logo and Sails health Metre
var _selectStats = selectStats[selectedSail];
var _logoY = _selectStats.yy - 270;
DrawCircleMetre(x, _logoY, oDeckCtrl.maxSailsTotalDamage - oDeckCtrl.sails[selectedSail].damage, oDeckCtrl.maxSailsTotalDamage, c_grey, 100, _selectStats.alpha, 20);
draw_set_alpha(_selectStats.alpha);
draw_sprite(sLogo,0,x, _logoY);
draw_set_alpha(1);