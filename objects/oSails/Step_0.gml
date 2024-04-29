
/// @desc oSails - Step


//game_set_speed(5,gamespeed_fps);

var _roomGridInc = oConstant.roomGridInc;
var _usingPlrKey = oDeckCtrl.usingPlr.key

selectedSail = keyInputList(_usingPlrKey.upPrs, _usingPlrKey.dnPrs, selectedSail);

if (median(selectedSail,0,numSails - 1) !=selectedSail) {
	selectedSail += ((sign(selectedSail) * -1) * numSails)
}
selectStats[selectedSail].selected = true;

sailsAnim(_roomGridInc);

camAdjust();

