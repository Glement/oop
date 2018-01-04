actions
chooseSoldier: soldier
	(soldier fraction = (humanPlayer unitWithIndex: currentSoldier  ) fraction)
	ifTrue:
	[^ nil].
	(humanPlayer unitWithIndex: currentSoldier ) weapon rounds < 1
	ifTrue:[ ^ nil.].
	((humanPlayer unitWithIndex: currentSoldier ) shootAtTarget: soldier onMap: self 	map)
		ifFalse: [ ^ nil ].
	(alienPlayer units) removeAllSuchThat: [:sold|
		sold health <1].
	self endTurn.
	