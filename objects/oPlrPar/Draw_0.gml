
/// @desc oPlrPar - Draw


var _yInc = 32;

draw_text(oStatsMarker.x, oStatsMarker.y, "Current item: " + currentItem.name);
draw_set_colour(c_red);
draw_text(oStatsMarker.x, oStatsMarker.y + (1 * _yInc), "Amount: " + string(floor(currentItem.amount)));
draw_text(oStatsMarker.x, oStatsMarker.y + (3 * _yInc), "Damage: " + string(floor(oDeckCtrl.shipDamage)));
draw_text(oStatsMarker.x, oStatsMarker.y + (4 * _yInc), "In Bucket: " + string(floor(oDeckCtrl.bucketContents)));








