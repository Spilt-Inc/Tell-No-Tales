
// @desc oDeckCtrl - Step




#region Deck Setup 

var _usingPlr = usingPlr;
var _deckObj = deckObj.current;

//Background layer change
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if deckObj.num < DECKS.MAINDECK{
	layer_background_blend(back_id, c_black);
}
else layer_background_blend(back_id, c_blue);

//Assigning key input for directional
if (deckObj.num != DECKS.SAILS) {
	for (var i = 0; i < DIRS.NUMDIRS; i++){
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
var _deckPrev = deckObj.num;
deckObj.num = keyInputList(_usingPlr.key.deckUp, _usingPlr.key.deckDn, deckObj.num);
deckObj.num = median(0, DECKS.NUMDECKS - 1, deckObj.num);
if _deckPrev != deckObj.num {
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

