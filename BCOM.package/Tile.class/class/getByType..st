instance selection
getByType: aType
		(aType  = $1)
		ifTrue: [^(BrickWall new)].
		(aType  = $2)
		ifTrue: [^(ConcretePartCover new)].
		(aType  = $3)
		ifTrue: [^(ConcreteTile new) ].
		(aType  = $4)
		ifTrue: [ ^(DirtPartCover new) ].
		(aType  = $5)
		ifTrue: [ ^(GrassTile new) ].
		^ nil.
		