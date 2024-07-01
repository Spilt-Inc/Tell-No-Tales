
/// @desc oOcean - Draw


draw_sprite_ext(sWater2,image_index,xx,yy,1,1,rot,c_white,1);

draw_rectangle(x - 5, y - 5, x + 5, y + 5,false);



//Debugging
draw_set_colour(c_fuchsia);
draw_line(x,y,x + lengthdir_x(200,rot),y + lengthdir_y(200,rot));
draw_set_colour(c_white);
