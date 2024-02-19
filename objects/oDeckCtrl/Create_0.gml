
// @desc oDeckCtrl - Create

//roomGridInc = 32;
//usingPlr = oPlrCtrl.players[0];
players = [oPlrCtrl.players[0]];

//currentDir = undefined;

trigger = true;
num = DECKS.HOLD;
current = instance_create_layer(oMapMarker.x,oMapMarker.y,"lMain",oHold);
prev = undefined


highlight = {
	keyDir : function(_obj, _arr, _max) {
		/*
		Creates an array for sequence of selection options in a radial pattern:
		0. No Direction
		1. Up
		2. Right
		3. Down
		4. Left
		5. UpLeft
		6. UpRight
		7. DownRight
		8. DownLeft
		*/
		for (var i = 0; i < _max; i++) {	 
			with _obj{
				if _arr[i].selected{
					_arr[i].colour = c_white;
					_arr[i].selected = false;
				} 
				else {
					_arr[i].colour = c_grey;
				}
			}
		}
	}
}

deckScaleMax = 1.5;
deckChangeAnim = {
	trigger : false,
	xScaleFactor : deckScaleMax,
	yScaleFactor : deckScaleMax,
	scaleInc : deckScaleMax / 50
}

//////////////////////


#region Bilge Management

for (var i = DIRS.NUMDIRS - 1; i >= 0; i--) {
	bilgeBreaches[i] = {
		active : true,
		repairCount	 : 200
	}
}

function repairBreach(_plr,_objNum,_arr) {
	if (_plr.currentItem.name == "Timber" && _plr.key.action && _objNum == DECKS.BILGE) {
		_arr[currentDir].repairCount--;	
		for (var i = 0; i < DIRS.NUMDIRS; i++) {
			if (_arr[i].repairCount <= 0) {
				_arr[i].active = false;
			}
		}
	}
}

#endregion

//////////////////////


#region Gun Deck Management

#macro numCannons 6
#macro maxShots 5
#macro shotCountMax 400
shotCount = {
	portCannonCount : irandom_range(0, shotCountMax),
	stbdCannonCount : irandom_range(0, shotCountMax)
}

cannons = {
	name : [0, "port", 0, "starboard", "aft port", "fore port", "fore starboard", "aft starboard"],
	numShots : [0, 0, maxShots, 0, maxShots,maxShots,maxShots,maxShots,maxShots],
	portOrNot : [-1, -1, true, -1, false, false, true, true, false],
}

function fireCannon(_shotCount,_portOrNot) {
	_shotCount--;
	if (_shotCount <= 0){
		for (var i = 0; i < DIRS.NUMDIRS; i++){
			var _numShots = cannons.numShots[i];
			if _portOrNot == cannons.portOrNot[i] && _numShots > 0 {
				cannons.numShots[i]--;	
			}
		}
	}
	return _shotCount;
}

function reloadCannon() {
	
}

#endregion






