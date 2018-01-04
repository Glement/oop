tests
testPathfinding
	| game array |
	game := Game new testInstance.
	array := (game human unitWithIndex: 1) getTrajectoryTo: 1 @ 5 InGame: game.
	self assert: (array at: 1) equals: 1 @ 2.
	self assert: (array at: 2) equals: 1 @ 3.
	self assert: (array at: 3) equals: 1 @ 4.
	self assert: (array at: 4) equals: 1 @ 5.
	self assert: array size equals: 4.
	array := (game human unitWithIndex: 1) getTrajectoryTo: 1 @ 6 InGame: game.
	self assert: array isNil.