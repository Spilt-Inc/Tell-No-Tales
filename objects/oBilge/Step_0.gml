
/// @desc oBilge - Step


//oConstant.roomGridInc = (sprite_width / xScaleOrig) / 2;
//roomGridInc = oConstant.roomGridInc;

updateSelectStats(bilgePreset,roomGridInc,DIRS.NUMDIRS);

//Animating
animCount--;
if animCount < 0 {
	for (var i = 0; i < DIRS.NUMDIRS; i++) {
		selectStats[i].subImg++;
		animCount = animCountMax;
	}
}

floodAnim();


