
/// @desc oHealthBar - Draw

draw_sprite_ext(sHealthMetreInner,0,x - 50,y,hp + 75,2,0,c_white,1);
draw_self();
draw_sprite_ext(sHealthMetreFrameLength,0,x,y,healthBarMax,2,0,c_white,1);
draw_sprite_ext(sHealthMetreFrameEnd,0,x + healthBarMax - 26,y,-2,2,0,c_white,1);

draw_sprite_ext(sHealthMetrePlaque,0,x + healthBarMax / 2, bbox_bottom,2,2,0,c_white,1);





