tests
testPercentageCountSimpleCase
	| game value |
	game := Game new testInstance.
	value := (game alien unitWithIndex: 3) hitChanceTo: (game alien unitWithIndex: 4) onMap: game map.
	self assert: value equals: 30.
	value := (game alien unitWithIndex: 4) hitChanceTo: (game alien unitWithIndex: 3) onMap: game map.
	self assert: value equals: 50.
	value := (game alien unitWithIndex: 1) hitChanceTo: (game alien unitWithIndex: 5) onMap: game map.
	self assert: value equals: 67.
	value := (game alien unitWithIndex: 5) hitChanceTo: (game alien unitWithIndex: 1) onMap: game map.
	self assert: value equals: 67