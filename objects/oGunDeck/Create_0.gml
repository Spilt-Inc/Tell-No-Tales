/// @desc oGunDeck - Create

image_speed = 0;
image_index = DECKS.GUNDECK;

cellSize = 32 // pixels

deckHWidth_cells = 12;
deckHeight_cells = 20;

// xScaleOrig = 6
// image_xscale = 6
image_xscale = cellSize * deckWidth_cells / sprite_width;

// yScaleOrig = 12
// image_yscale = 12
image_yscale = cellSize * deckHeight_cells / sprite_height;

// DELETE ==== FROM

// sprite_width = 384;
// sprite_height = 640;

// cellSize = (sprite_width / xScaleOrig) / 2;
// cellSize = 32

// DELETE ==== TO

cannonPreset = {
	name : [0,0, "Mid Starboard",0,"Mid Port","Fore Port","Fore Starboard","Aft Starboard","Aft Port"],
	x : [0, 0,3,0,-3, -3,3,3,-3],
	y : [0, 0,0,0,0, -8,-8,8,8], 
	width : [0, 0,3,0,3, 3,3,3,3],
	height : [0, 0,2,0,2, 2,2,2,2],
	subImg : [0, 0,2,0,2, 2,2,2,2]
}

{
			name: areas[i].name,
			x : _deckObj.x + (areas[i] * roomGridInc),
			y : _deckObj.y + (areas[i] * roomGridInc),
			xScale : areas[i].width * (image_xscale / xScaleOrig),
			yScale : areas[i].height * (image_yscale / yScaleOrig),
			subImg : areas[i].subImg,
			colour : c_grey,
			selected : false

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
		xAbs: x + 0
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





