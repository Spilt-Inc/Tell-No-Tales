
/// @desc oOcean - Draw


draw_sprite_ext(sWater2,image_index,xx,yy,1,1,rot,c_white,1);

draw_rectangle(x - 5, y - 5, x + 5, y + 5,false);



//Debugging
draw_set_colour(c_fuchsia);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(vec.lx.v1.xx, vec.lx.v1.yy, "V1: " + string(vec.lx.v1.xx) + ", " + string(vec.lx.v1.yy));
draw_text(vec.lx.v2.xx, vec.lx.v2.yy, "V2: " + string(vec.lx.v2.xx) + ", " + string(vec.lx.v2.yy));
draw_text(vec.lx.xx, vec.lx.yy, "LX: " + string(vec.lx.xx) + ", " + string(vec.lx.yy));

draw_set_colour(c_red);
draw_text(vec.rx.v1.xx, vec.rx.v1.yy, "V1: " + string(vec.rx.v1.xx) + ", " + string(vec.rx.v1.yy));
draw_text(vec.rx.v2.xx, vec.rx.v2.yy, "V2: " + string(vec.rx.v2.xx) + ", " + string(vec.rx.v2.yy));
draw_text(vec.rx.xx, vec.rx.yy, "RX: " + string(vec.lx.xx) + ", " + string(vec.lx.yy));

draw_set_colour(c_orange);
draw_text(vec.ty.v1.xx, vec.ty.v1.yy, "V1: " + string(vec.ty.v1.xx) + ", " + string(vec.ty.v1.yy));
draw_text(vec.ty.v2.xx, vec.ty.v2.yy, "V2: " + string(vec.ty.v2.xx) + ", " + string(vec.ty.v2.yy));
draw_text(vec.ty.xx, vec.ty.yy, "TY: " + string(vec.ty.xx) + ", " + string(vec.rx.yy));

draw_set_colour(c_aqua);
draw_text(vec.by.v1.xx, vec.by.v1.yy, "V1: " + string(vec.by.v1.xx) + ", " + string(vec.by.v1.yy));
draw_text(vec.by.v2.xx, vec.by.v2.yy, "V2: " + string(vec.by.v2.xx) + ", " + string(vec.by.v2.yy));
draw_text(vec.by.xx, vec.by.yy, "BY: " + string(vec.by.xx) + ", " + string(vec.by.yy));

draw_set_color(c_lime);
draw_text(origCorner.xx[0],origCorner.yy[0],"C0");
draw_text(origCorner.xx[1],origCorner.yy[1],"C1");
draw_text(origCorner.xx[2],origCorner.yy[2],"C2");
draw_text(origCorner.xx[3],origCorner.yy[3],"C3");

draw_line(x,y,x + lengthdir_x(200,rot),y + lengthdir_y(200,rot));

draw_set_colour(c_white);
