initialization
initialize
	super initialize.
	self size: self tileSize.
	isCover := false.
	isFullCover := false.
	self imageMarked:'grassTileMarked.png'.
	self image: 'grassTile.png'.