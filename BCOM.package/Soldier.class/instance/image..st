accessing
image: link
	image:= ImageReadWriter formFromFileNamed: link.
	self buildBack.
	^ self.