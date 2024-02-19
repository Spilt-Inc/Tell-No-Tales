
/// @desc oSails - Step


selectedSail = keyInputList(oDeckCtrl.usingPlr,selectedSail);
if (median(selectedSail,0,numSails - 1) !=selectedSail) {
	selectedSail += ((sign(selectedSail) * -1) * numSails)
}
selectStats[selectedSail].selected = true;


