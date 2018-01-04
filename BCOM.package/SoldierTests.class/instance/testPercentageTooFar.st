tests
testPercentageTooFar
	| game value |
	game := Game new testInstance.
	value := (game alien unitWithIndex: 1) hitChanceTo: (game alien unitWithIndex: 2) onMap: game map.
	self assert: value equals: 0.
	value := (game alien unitWithIndex: 2) hitChanceTo: (game alien unitWithIndex: 1) onMap: game map.
	self assert: value equals: 0.