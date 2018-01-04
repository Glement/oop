initialization
initialize
	super initialize.
	self size: self tileSize.
	isCover := true.
	isFullCover := true.
	self imageMarked:'brickWallTileMarked.png'.
	self image: 'brickWallTile.png'.