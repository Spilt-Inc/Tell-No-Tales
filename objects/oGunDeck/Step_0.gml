
/// @desc oGunDeck - Step



updateSelectStats(cannonPreset,roomGridInc,DIRS.NUMDIRS);


//Animating
for (var i = 0; i < DIRS.NUMDIRS; i++) {
	oDeckCtrl.cannons.animCount[i]--;
	if oDeckCtrl.cannons.animGo[i] {
		if oDeckCtrl.cannons.animCount[i] < 0 {
			//for (var i = 0; i < DIRS.NUMDIRS; i++) {
				selectStats[i].subImg++;
				oDeckCtrl.cannons.animCount[i] = cannonAnimCountMax;
				oDeckCtrl.cannons.animGo[i] = false;		
			//}
		}
	}
}

