accessing
imageMarked: link
	image:= ImageReadWriter formFromFileNamed: link.
	self buildBackMarked.
	^ self.