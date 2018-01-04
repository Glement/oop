initialization
buildUp
	map := Map new read: self.
	humanPlayer spawn: self.
	alienPlayer spawn: self.
	currentSoldier := 1.
	accesibleTile := (humanPlayer unitWithIndex: 1) getAccessibleTilesInGame: self.
	(humanPlayer unitWithIndex: 1) showStats.
	self light: accesibleTile.
	(humanPlayer unitWithIndex: 1) background: (humanPlayer unitWithIndex: 1) backMarked.
	self calculate.
	^ self