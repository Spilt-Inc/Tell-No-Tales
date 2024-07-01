
// @desc oDeckCtrl - Draw


draw_text(oStatsMarker.x, oStatsMarker.y + (60), "Ship damage: " + string(floor(oDeckCtrl.shipDamage)));


draw_set_color(c_fuchsia);
draw_line(deckObj.current.x,deckObj.current.y,x + lengthdir_x(100,image_angle), y + lengthdir_y(100,image_angle));
draw_set_color(c_white);











