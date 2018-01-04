actions
chooseTile: tile
	| trajectory check moveAnimation |
	check := 0.
	accesibleTile
		do: [ :a | 
			a = tile coordinatesMap
				ifTrue: [ check := 1 ] ].
	check = 1
		ifFalse: [ ^ nil ].
	trajectory := (humanPlayer unitWithIndex: currentSoldier)
		getTrajectoryTo: tile coordinatesMap
		InGame: self.
	trajectory isNil
		ifTrue: [ ^ nil ].
	moveAnimation := BlSequentialAnimation new
		addAll:
			(trajectory
				collect: [ :tTile | self animation: (humanPlayer unitWithIndex: currentSoldier) to: tTile ]).
	moveAnimation start.
	(humanPlayer unitWithIndex: currentSoldier)
		coordinatesMap: tile coordinatesMap.
	(humanPlayer unitWithIndex: currentSoldier)
		AP: (humanPlayer unitWithIndex: currentSoldier) AP - 1.
	(humanPlayer unitWithIndex: currentSoldier) AP < 1
		ifTrue: [ ^ self endTurn.  ].
	self dark: accesibleTile.
	(humanPlayer unitWithIndex: currentSoldier ) showStats.
	(humanPlayer unitWithIndex: currentSoldier) background: ((humanPlayer unitWithIndex: 	currentSoldier) backMarked).
	accesibleTile := (humanPlayer unitWithIndex: currentSoldier) getAccessibleTilesInGame: self.
	self calculate.
	self light: accesibleTile.