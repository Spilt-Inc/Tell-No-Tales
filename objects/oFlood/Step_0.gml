
/// @desc oFlood - Step


var _deckObj = oDeckCtrl.deckObj.current;
var _shipDamage = oDeckCtrl.shipDamage;

x = _deckObj.x;
y = _deckObj.y;

if (median(_shipDamage , 0, oBilge.floodAnimUnit) == _shipDamage) {
	floodStage = FLOODSTAGES.STAGE1;	
}
if (median(_shipDamage , oBilge.floodAnimUnit, oBilge.floodAnimUnit * 2) == _shipDamage) {
	floodStage = FLOODSTAGES.STAGE2;	
}
if (median(_shipDamage , oBilge.floodAnimUnit * 2, oBilge.floodAnimUnit * 3) == _shipDamage) {
	floodStage = FLOODSTAGES.STAGE3;	
}

switch floodStage {
	case FLOODSTAGES.STAGE1 :
		if	(oDeckCtrl.shipDamage == oDeckCtrl.shipDamagePrev) {
			oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE1] = true;	
		}
		if oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE1] {
			if (image_index == 3) {
				image_speed = 0;
				oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE1] = false;
			}
			else {
				image_speed = 1;		
			}
		}
		else {
			image_speed = 0;	
			image_index = 3;
		}
	break;
	case FLOODSTAGES.STAGE2 :
			if	(oDeckCtrl.shipDamage == oDeckCtrl.shipDamagePrev) {
			oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE1] = true;	
		}
		if oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE2] {
			if (image_index == 6) {
				image_speed = 0;
				oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE2] = false;
			}
			else {
				image_speed = 1;		
			}
		}
		else {
			image_speed = 0;	
			image_index = 6;
		}
	break;
	case FLOODSTAGES.STAGE3 :
		if	(oDeckCtrl.shipDamage == oDeckCtrl.shipDamagePrev) {
			oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE2] = true;	
		}
		if oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE3] {
			if (image_index == 8) {
				image_speed = 0;
				oDeckCtrl.stageAnimGo[FLOODSTAGES.STAGE3] = false;
			}
			else {
				image_speed = 1;		
			}
		}
		else {
			image_speed = 0;	
			image_index = 8;
		}
	break;
}
