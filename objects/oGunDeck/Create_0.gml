
/// @desc oGunDeck - Create

image_speed = 0;
image_index = DECKS.GUNDECK;

// xScaleOrig = 6;
unitsWide = 6;

// yScaleOrig
unitsHigh = 10;

image_xscale = 6;
image_yscale = 10;

sprite_width = 384;
sprite_height = 640;

unitLength = (sprite_width / xScaleOrig) / 2;
// unscaled unitLength = 32

spriteWidth = (unitLength * 2) * unitsWide;
spriteHeight = (unitLength * 2) * unitsHigh;



cannonPreset = {
	name : [0,0, "Mid Starboard",0,"Mid Port","Fore Port","Fore Starboard","Aft Starboard","Aft Port"],
	x : [0, 0,3,0,-3, -3,3,3,-3],
	y : [0, 0,0,0,0, -8,-8,8,8], 
	width : [0, 0,3,0,3, 3,3,3,3],
	height : [0, 0,2,0,2, 2,2,2,2],
	subImg : [0, 0,2,0,2, 2,2,2,2]
}

areas = [
	{
		keyDir: "up",
		name: null,
	},
		{
		keyDir: "upRight",
		name: "fore starboard",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		keyDir: "right",
		name: "mid starboard",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		keyDir: "downRight",
		name: "aft starboard",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		keyDir: "down",
		name: null,
	},
	{
		keyDir: "downLeft",
		name: "aft port"
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		keyDir: "left",
		name: "mid port",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
	{
		keyDir: "upLeft",
		name: "fore port",
		x: 0, 
		y: 0,
		width: 10,
		height: 10
	},
{
		keyDir: "none",
		name: null,
	},
]

createSelectStats(cannonPreset,roomGridInc,DIRS.NUMDIRS);

//function drawGunDeck(){
//	for (var i = DIRS.NUMDIRS - 1; i >= 0; i--){
//		draw_sprite_ext(sCargo,3,selectStats[i].x,selectStats[i].y,selectStats[i].xScale,selectStats[i].yScale,0,selectStats[i].colour,1);
//	}
//}





