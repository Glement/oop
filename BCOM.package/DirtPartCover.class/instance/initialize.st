initialization
initialize
	super initialize.
	self size: self tileSize.
	isCover := true.
	isFullCover := false.
	self imageMarked:'dirtPartCoverMarked.png'.
	self image: 'dirtPartCover.png'.