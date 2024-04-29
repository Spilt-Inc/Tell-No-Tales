
// @desc oDeckCtrl - Create


//game_set_speed(2,gamespeed_fps);

usingPlr = oPlrCtrl.players[0];
currentDir = undefined;
deckPrevYDist = 0;

deckObj = {
	trigger : true,
	num : DECKS.HOLD,
	current : instance_create_layer(oMapMarker.x,oMapMarker.y,"lMain",oHold),
	prev : undefined
}

//highlight = {
//	keyDir : function(_obj, _arr, _max) {
//		/*
//		Creates an array for sequence of selection options in a radial pattern:
//		0. No Direction
//		1. Up
//		2. Right
//		3. Down
//		4. Left
//		5. UpLeft
//		6. UpRight
//		7. DownRight
//		8. DownLeft
//		*/
//		for (var i = 0; i < _max; i++) {	 
//			with _obj{
//				if oDeckCtrl.deckObj.num != DECKS.SAILS {
//					if _arr[i].selected{
//						//_arr[i].selected = false;
//					} 
//					else {
//						_arr[i].colour = c_grey;
//					}
//				}
//			}
//		}
//	}
//}

////Deck Change Animation
yDistMax = 500;
yDist = yDistMax;
yInc = 30;
deckChangeAnim = {
	trigger : false,
	fadeGo : false,
	alpha : 1,
	prevYDist : 0,
	prevYDistFinal : 0
}

//////////////////////


#region Damage

shipDamage = 0;
shipDamagePrev = shipDamage;
shipDamageMax = 10;
damageCountMax = 500;
damageCount = damageCountMax;
bilgeDamageGo = false;
sailsDamageGo = false;
bucketContentsMax = 1;
bucketContents = 0;
function shipHitAdd() {
	damageCount--;
	if damageCount <= 0 {
		bilgeDamageGo = choose(true,false);
		sailsDamageGo = choose(true,false);
		damageCount = irandom_range(0,damageCountMax);
	}
}
function shipDamageAdd() {
	shipDamagePrev = shipDamage;
	for (var i = 1; i < DIRS.NUMDIRS; i++) {
		if bilgeBreaches[i].active {
			shipDamage += 0.001;	
		}
	}
}
function shipHeal() {
	if usingPlr.key.actionPrs && deckObj.num == DECKS.BILGE && usingPlr.currentItem.name == "Bucket" {
		shipDamage = median(0, shipDamage - (bucketContentsMax - bucketContents));
		bucketContents = bucketContentsMax;
	}
	if usingPlr.key.actionPrs && usingPlr.currentItem.name == "Bucket" && deckObj.num == DECKS.MAINDECK {
		bucketContents = 0;
	}
}

#endregion

//////////////////////


#region Bilge Management

#macro repairCountMax 200
stageAnimGo = [1, 2, 3];

for (var i = DIRS.NUMDIRS - 1; i >= 0; i--) {
	bilgeBreaches[i] = {
		active : true,
		repairCount	 : repairCountMax
	}
}

function createBreach() {
	if bilgeDamageGo {
		bilgeBreaches[irandom_range(1,DIRS.NUMDIRS - 1)].active = true;
		bilgeDamageGo = false;
	}
}

function repairBreach(_plr,_objNum,_arr) {
	if (_plr.currentItem.name == "Timber") && (_plr.currentItem.amount > 0) && (_plr.key.action) && (_objNum == DECKS.BILGE) {
		_arr[currentDir].repairCount--;	
		for (var i = 1; i < DIRS.NUMDIRS; i++) {
			if (_arr[i].repairCount <= 0) && (_arr[i].active == true) {
				_arr[i].active = false;
				_plr.currentItem.amount--;
				_arr[currentDir].repairCount = repairCountMax;		
			}
		}
	}
}

//function shipDamageAdd() {
//	for (var i = 1; i < DIRS.NUMDIRS; i++) {
//		if bilgeBreaches[i].active {
//			shipDamage += 0.001;	
//		}
//	}
//}

#endregion

//////////////////////


#region Gun Deck Management

#macro numCannons 6
#macro maxShots 5
#macro shotCountMax 500

shotCount = {
	portCannonCount : irandom_range(0, shotCountMax),
	stbdCannonCount : irandom_range(0, shotCountMax)
}

cannons = {
	name : [0, "port", 0, "starboard", "aft port", "fore port", "fore starboard", "aft starboard"],
	numShots : [0, 0, maxShots, 0, maxShots,maxShots,maxShots,maxShots,maxShots],
	portOrNot : [-1, -1, true, -1, false, false, true, true, false],
	animGo : [0, 0,false,0,false, false,false,false,false],
	animCount : [0, 0,10,0,10, 10,10,10,10,]
}

function fireCannon(_shotCount,_portOrNot) {
	_shotCount--;
	if (_shotCount <= 0){
		for (var i = 0; i < DIRS.NUMDIRS; i++){
			var _numShots = cannons.numShots[i];
			if _portOrNot == cannons.portOrNot[i] && _numShots > 0 {
				cannons.animGo[i] = true;
				cannons.numShots[i]--;	
				oHealthBar.hp -= 10;
			}
		}
	}
	return _shotCount;
}

function reloadCannon(_plr) {
	if _plr.currentItem.name == "Cannonballs" && _plr.currentItem.amount > 0 && cannons.numShots[currentDir] < maxShots && _plr.key.actionPrs && deckObj.num == DECKS.GUNDECK {
		cannons.numShots[currentDir]++;
		_plr.currentItem.amount--;
	}
}

#endregion

//////////////////////


#region Sails Management

maxSailsTotalDamage = 100;
minSailsHitDamage = 5;
maxSailsHitDamage = 20;

for (var i = numSails - 1; i >= 0; i--) {
	sails[i] = {
		damage : 0	
	}
}

function createSailDamage() {
	if sailsDamageGo {
		var _sailDamage = irandom_range(0,numSails - 1);
		var _hitDamage = irandom_range(minSailsHitDamage,maxSailsHitDamage);
		if sails[_sailDamage].damage <= maxSailsTotalDamage{
			sails[_sailDamage].damage += _hitDamage;
		}
		sailsDamageGo = false;
	}
}

function repairSail(_plr,_sailNum) {
	var _sailsDamage = sails[_sailNum].damage;
	if _plr.currentItem.name == "Sailcloth" && _plr.currentItem.amount > 1 && (median(1,maxSailsTotalDamage,_sailsDamage) == _sailsDamage) && _plr.key.action && deckObj.num == DECKS.SAILS{
		sails[_sailNum].damage -= 0.1;
		_plr.currentItem.amount -= 0.1;
	}
}

#endregion






