initialization
initialize
	super initialize.
	self size: self tileSize.
	isCover := true.
	isFullCover := false.
	self imageMarked:'concretePartCoverMarked.png'.
	self image: 'concretePartCover.png'.