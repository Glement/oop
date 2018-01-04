actions
testSpawn: aGame
	| player |
	units := OrderedCollection new.
	player := AlienSoldier createForGame: aGame onCoordinates: 2 @ 1.
	self addUnit: player.
	player := AlienSoldier createForGame: aGame onCoordinates: 20 @ 1.
	self addUnit: player.
	player := AlienSoldier createForGame: aGame onCoordinates: 16 @ 18.
	self addUnit: player.
	player := AlienSoldier createForGame: aGame onCoordinates: 21 @ 20.
	self addUnit: player.
	player := AlienSoldier createForGame: aGame onCoordinates: 10 @ 1.
	self addUnit: player.
	^ self