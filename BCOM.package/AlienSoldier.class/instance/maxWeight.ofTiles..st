AI
maxWeight: aGame ofTiles: array
|humanChances alienChances defaultCoordinates maxWeight maxWeightTile enemyFound|
defaultCoordinates := self coordinates.
maxWeight := -10000.
enemyFound := false.
array isNil ifTrue: [ ^ nil. ].
maxWeightTile := (array at: 1).
array do: [ :coord | humanChances := 0. alienChances := 0.
	self moveOnMap: coord.
	aGame human units do: [ :human | humanChances := humanChances + (human hitChanceTo: self onMap: aGame map).
		alienChances := alienChances + (self hitChanceTo: human onMap: aGame map).  ].
	((humanChances = 0) and: (alienChances = 0)) ifFalse: [ enemyFound := true ].
	((alienChances - humanChances) > maxWeight) ifTrue: [ maxWeight := alienChances - humanChances. maxWeightTile := coord ]
	 ].
self moveOnMap: defaultCoordinates.
enemyFound ifFalse: [ maxWeightTile := self closestToTheEnemyTile: aGame fromTiles: array ].
^ maxWeightTile.