
// @desc oDeckCtrl - Step


#region Deck Setup 

var _usingPlr = usingPlr;
var _deckObj = deckObj.current;

if (deckObj.num == DECKS.SAILS) {
	//keyInputList(usingPlr,deckObj.selectedSail)
	var _numItems = numSails;
}
else {
	keyInputDir(deckObj.current,usingPlr);
	var _numItems = DIRS.NUMDIRS;
}
highlight.keyDir(_deckObj,_deckObj.selectStats,_numItems);

if (_usingPlr.key.tab) {
	deckObj.num++;
	deckChangeAnim.xScaleFactor = deckScaleMax;
	deckChangeAnim.yScaleFactor = deckScaleMax;
	deckChangeAnim.trigger = true;
	deckObj.trigger = true;
}
if (deckObj.num == DECKS.NUMDECKS) {
	deckObj.num = 0;
}

#endregion

////////////////////


#region Switching Decks

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
	// X Scale
	if (_deckObj.image_xscale >= _deckObj.xScaleOrig) {
		deckChangeAnim.xScaleFactor -= deckChangeAnim.scaleInc;
		_deckObj.image_xscale = _deckObj.xScaleOrig * deckChangeAnim.xScaleFactor;
		if (instance_exists(_prevDeckObj)) _prevDeckObj.image_xscale = (_deckObj.xScaleOrig * (deckChangeAnim.xScaleFactor / deckScaleMax));
	}
	//YScale
	if (_deckObj.image_yscale >= _deckObj.yScaleOrig) {
		deckChangeAnim.yScaleFactor -= deckChangeAnim.scaleInc;
		_deckObj.image_yscale = _deckObj.yScaleOrig * deckChangeAnim.yScaleFactor;
		if (instance_exists(_prevDeckObj)) _prevDeckObj.image_yscale = (_deckObj.yScaleOrig * (deckChangeAnim.xScaleFactor / deckScaleMax));
	}
	//Alpha
	_deckObj.image_alpha = 1 - ((deckChangeAnim.xScaleFactor - 1) / (deckScaleMax - 1));
	if (instance_exists(_prevDeckObj)) _prevDeckObj.image_alpha = (deckChangeAnim.xScaleFactor - 1) / (deckScaleMax - 1);
	
	//Ending animation
	if (_deckObj.image_xscale <= _deckObj.xScaleOrig && _deckObj.image_yscale <= _deckObj.yScaleOrig) {
		deckChangeAnim.trigger = false;	
		if (instance_exists(_prevDeckObj)) instance_destroy(_prevDeckObj);
	}
}

#endregion

////////////////////


#region Bilge Management

repairBreach(_usingPlr,deckObj.num,bilgeBreaches);

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

#endregion


