

function DrawCircleMetre(_x, _y, _value, _max, _clr, _rad, _alpha, _width) {
	var i, _len, _tx, _ty, _val;
	var _numSteps = 60;
	var _circLen = 360 / _numSteps;
	_val = (_value / _max) * _numSteps;
	
	if (_val > 1) {
		metreSurf = surface_create(_rad * 2, _rad * 2);	
		
		var _origClr = draw_get_color();
		
		draw_set_colour(_clr);
		draw_set_alpha(_alpha);
		
		surface_set_target(metreSurf);
		//draw_clear_alpha(c_blue, 0.0);
		//draw_clear_alpha(c_black, 0);
		
		draw_primitive_begin(pr_trianglefan);
		draw_vertex(_rad, _rad);
		
		for (i = 0; i <= _val; i++){
			_len = (i * _circLen) + 90;
			_tx = lengthdir_x(_rad, _len);
			_ty = lengthdir_y(_rad, _len);
			draw_vertex(_rad + _tx, _rad + _ty);
		}
		
		draw_primitive_end();
		
		gpu_set_blendmode(bm_subtract);
		draw_set_color(c_black);
		draw_circle(_rad - 1, _rad - 1, _rad - _width, false);
		gpu_set_blendmode(bm_normal);
;		
		surface_reset_target();
		draw_surface(metreSurf, _x - _rad, _y - _rad);
		surface_free(metreSurf);
	}
}
