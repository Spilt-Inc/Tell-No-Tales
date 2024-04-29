
/// @desc oConstant - Create


numPlayers = 4;
roomGridInc = 32;
#macro numDirs 8
#macro numCargo 4
//#macro numDecks 5
#macro numSails 3

#region Enums

enum DIRS {
	NONE,
	UP,
	RIGHT,
	DOWN,
	LEFT,
	UPLEFT,
	UPRIGHT,
	DOWNRIGHT,
	DOWNLEFT,
	NUMDIRS
}

enum DECKS{
	BILGE = 0,
	HOLD = 1,
	GUNDECK = 2,
	MAINDECK = 3,
	SAILS = 4,
	NUMDECKS = 5
}

enum PLRITEMS {
	BUCKET,
	TIMBER,
	CANNONBALLS,
	SAILCLOTH,
	GROG
}

#endregion

