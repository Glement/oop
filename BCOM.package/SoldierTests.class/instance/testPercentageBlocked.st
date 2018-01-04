tests
testPercentageBlocked
	| game value |
	game := Game new testInstance.
	value := (game human unitWithIndex: 3) hitChanceTo: (game human unitWithIndex: 4) onMap: game map.
	self assert: value equals: 0.