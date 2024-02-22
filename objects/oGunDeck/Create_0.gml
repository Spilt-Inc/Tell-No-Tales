
/// @desc oGunDeck - Create


image_speed = 0;
image_index = DECKS.GUNDECK;
xScaleOrig = 6;
yScaleOrig = 10;
image_xscale = 6;
image_yscale = 10;

roomGridInc = (sprite_width / xScaleOrig) / 2;

cannonPreset = {
	name : [0,0, "Mid Starboard",0,"Mid Port","Fore Port","Fore Starboard","Aft Starboard","Aft Port"],
	x : [0, 0,3,0,-3, -3,3,3,-3],
	y : [0, 0,0,0,0, -8,-8,8,8], 
	width : [0, 0,3,0,3, 3,3,3,3],
	height : [0, 0,2,0,2, 2,2,2,2],
	subImg : [0, 0,2,0,2, 2,2,2,2]
}

preset = [
	{
		pos: "up",
		name: null,
	},
		{
		pos: "upRight",
		name: "fore starboard",
	},
	{
		pos: "right",
		name: "mid starboard",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		pos: "downRight",
		name: "aft starboard,
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		pos: "down",
		name: null,
	},
	{
		pos: "downLeft",
		name: "aft port"
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		pos: "left",
		name: "mid port",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		pos: "upLeft",
		name: "fore port",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
{
		pos: "none",
		name: null,
	},
]

createSelectStats(cannonPreset,roomGridInc,DIRS.NUMDIRS);

//function drawGunDeck(){
//	for (var i = DIRS.NUMDIRS - 1; i >= 0; i--){
//		draw_sprite_ext(sCargo,3,selectStats[i].x,selectStats[i].y,selectStats[i].xScale,selectStats[i].yScale,0,selectStats[i].colour,1);
//	}
//}





