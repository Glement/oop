tests
testPercentageNoRounds
	| game value |
	game := Game new testInstance.
	1 to: 5 do: [ :x | 
		(game alien unitWithIndex: 3) weapon makeShoot.
		(game alien unitWithIndex: 4) weapon makeShoot ].
	value := (game alien unitWithIndex: 3) hitChanceTo: (game alien unitWithIndex: 4) onMap: game map.
	self assert: value equals: 0.
	value := (game alien unitWithIndex: 4) hitChanceTo: (game alien unitWithIndex: 3) onMap: game map.
	self assert: value equals: 0.