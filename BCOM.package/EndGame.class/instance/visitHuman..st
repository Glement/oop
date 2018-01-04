actions
visitHuman: aHuman
		(aHuman unitWithIndex: 1) isNil
	ifTrue:
		[
			bcomGame space map removeFromParent.
			bcomGame space interface  removeFromParent.
			bcomGame space grid background: (BlBackground builder image: (ImageReadWriter formFromFileNamed: 'lost.png'); build).
			bcomGame space grid zIndex: 9999.
			^ true.
		].
	^ false.