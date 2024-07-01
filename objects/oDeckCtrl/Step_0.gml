
// @desc oDeckCtrl - Step




#region Deck Setup 

var _usingPlr = usingPlr;
var _deckObj = deckObj.current;
//var _numDeckDirs = _deckObj.numDeckDirs;

//Background layer change
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if deckObj.num < DECKS.MAINDECK{
	layer_background_blend(back_id, c_black);
}
else layer_background_blend(back_id, c_white);

//Assigning key input for directional
if (deckObj.num != DECKS.SAILS) {
	for (var i = 0; i < DIRS.NUMDIRS - 1; i++){
		_deckObj.selectStats[i].selected = false;
	}
	keyInputDir(deckObj.current,usingPlr);
	var _numItems = DIRS.NUMDIRS;
}
//highlight.keyDir(_deckObj,_deckObj.selectStats,_numItems);

DrawDeckObjHL(_deckObj.selectStats);

shipHitAdd();

#endregion

////////////////////


#region Switching Decks

//Inititating switching decks
deckPrev = deckObj.num;
deckObj.num = keyInputList(_usingPlr.key.deckUp, _usingPlr.key.deckDn, deckObj.num);
deckObj.num = median(0, DECKS.NUMDECKS - 1, deckObj.num);
if deckPrev != deckObj.num {
	deckChangeAnim.trigger = true;
	deckObj.trigger = true;	
}

//Executing switching decks
switch deckObj.num {
	
	case DECKS.BILGE	:
		createDeck(deckObj,oBilge,oSails);
	break;
	
	/////////////////////////
	
	case DECKS.HOLD	:
		createDeck(deckObj,oHold,oBilge);
	break;
	
	/////////////////////////
	
	case DECKS.GUNDECK :
		createDeck(deckObj,oGunDeck,oHold);
	break;

	/////////////////////////
	
	case DECKS.MAINDECK :
		createDeck(deckObj,oMainDeck,oGunDeck);
	break;
	
	/////////////////////////
	
	case DECKS.SAILS :
		createDeck(deckObj,oSails,oMainDeck);
	break;
	
	/////////////////////////
	
}

#endregion

////////////////////


#region Deck Change Animation

if (deckChangeAnim.trigger) {
	var _deckObj = deckObj.current;
	var _prevDeckObj = deckObj.prev;
	yDist -= yInc;
	with (_deckObj) {
		y = oMapMarker.y - other.yDist;
		x = oMapMarker.x;
		if (y >= oMapMarker.y + - other.yInc) {
			y = oMapMarker.y;
			other.yDist = other.yDistMax;
			other.deckChangeAnim.trigger = false;
			other.deckChangeAnim.fadeGo = true;
		}
	}
	//with (_prevDeckObj) {
	//	x = oMapMarker.x;
	//	y = oMapMarker.y;
	//}
	
	deckChangeAnim.prevYDist += 5;
}
if deckChangeAnim.fadeGo {
	deckChangeAnim.alpha -= 0.1;
	if deckChangeAnim.alpha <= 0 {
		deckChangeAnim.fadeGo = false;
		deckChangeAnim.prevYDist = 0;
		deckChangeAnim.prevYDistFinal = 0;
	}
}



#endregion

////////////////////


#region Bilge Management

createBreach();
repairBreach(_usingPlr,deckObj.num,bilgeBreaches);
shipDamageAdd();
shipHeal();

#endregion

////////////////////


#region Gun Deck Management

shotCount.portCannonCount = fireCannon(shotCount.portCannonCount,true);
shotCount.stbdCannonCount = fireCannon(shotCount.stbdCannonCount,false);

if (shotCount.portCannonCount <= 0) {
	shotCount.portCannonCount = irandom_range(shotCountMax / 4,shotCountMax);
}
if (shotCount.stbdCannonCount <= 0) {
	shotCount.stbdCannonCount = irandom_range(shotCountMax / 4,shotCountMax);
}

reloadCannon(_usingPlr);

#endregion

////////////////////


#region Sails Management

createSailDamage();
if (deckObj.current.object_index == oSails) repairSail(_usingPlr,deckObj.current.selectedSail);

#endregion

////////////////////


#region Movement & Camera

//if (instance_exists(deckObj.current)) {
//	with (deckObj.current) {
//		imageAngPrev = image_angle;
//		image_angle -= keyboard_check(vk_right) * turnSpd;
//		image_angle += keyboard_check(vk_left) * turnSpd;
//		//motion_add(image_angle - 90, keyboard_check(vk_up) * acc);
//		//if(keyboard_check(vk_down)) || 	(image_angle != imageAngPrev) {
//		//	friction = brakeSpd;	
//		//	if (image_angle != imageAngPrev) {
//		//		friction = angle_difference(image_angle, imageAngPrev) / 10;	
//		//	}
//		//}
//		//else {
//		//	friction = 0;	
//		//}
//		//speed = clamp(speed,0,maxSpd);
//		//oCamera.camX = x;
//		//oCamera.camY = y;
//		camera_set_view_angle(oCamera.cam,-image_angle);
		
//		var _xUp = lengthdir_x(1,image_angle - 90);
//		var _yUp = lengthdir_y(1,image_angle - 90);
//		var _viewMat = matrix_build_lookat(x,y,-10, x,y - 10,0, _xUp,_yUp,10);
//		camera_set_view_mat(oCamera.cam,_viewMat);
//	}
//}

#endregion

////////////////////

