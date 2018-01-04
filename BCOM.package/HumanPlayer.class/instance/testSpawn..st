actions
testSpawn: aGame
	| player |
	units := OrderedCollection new.
	player := Heavy createForGame: aGame onCoordinates: 1 @ 1.
	self addUnit: player.
	player := Assault createForGame: aGame onCoordinates: 1 @ 6.
	self addUnit: player.
	player := Assault createForGame: aGame onCoordinates: 36 @ 6.
	self addUnit: player.
	player := Assault createForGame: aGame onCoordinates: 33 @ 9.
	self addUnit: player.
	player := Sniper createForGame: aGame onCoordinates: 60@40.
	self addUnit: player.