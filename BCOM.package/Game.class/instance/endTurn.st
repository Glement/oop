actions
endTurn
	(humanPlayer unitWithIndex: currentSoldier ) hideStats.
	(humanPlayer unitWithIndex: currentSoldier) AP: 2.
	(humanPlayer unitWithIndex: currentSoldier) background: ((humanPlayer unitWithIndex: 	currentSoldier) backUnmarked).
	currentSoldier := currentSoldier + 1.
	self dark:accesibleTile.
	(humanPlayer unitWithIndex: currentSoldier) isNil
	ifTrue: 
	[ self botTurn  .
	(playersArray do: [:player | 
		(player visit: endGame) 
		ifTrue:[^ nil]]).
	currentSoldier :=1.
	].
	(humanPlayer unitWithIndex: currentSoldier ) showStats.
	(humanPlayer unitWithIndex: currentSoldier) background: ((humanPlayer unitWithIndex: 	currentSoldier) backMarked).
	accesibleTile := (humanPlayer unitWithIndex: currentSoldier) getAccessibleTilesInGame: self.
	self calculate.
	self light: accesibleTile.
	^ nil.