initialization
initialize
	super initialize.
	self size: self tileSize.
	isCover := false.
	isFullCover := false.
	self imageMarked:'concreteTileMarked.png'.
	self image: 'concreteTile.png'.