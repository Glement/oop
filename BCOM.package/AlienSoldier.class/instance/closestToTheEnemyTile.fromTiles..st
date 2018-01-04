AI
closestToTheEnemyTile: aGame fromTiles: array
|distance minDistance tile|
tile := self coordinatesMap.
minDistance := 1000.
distance := -1.

array do: [ :itertile |
	aGame human units do: [ :human | distance := Aux distanceBetween: human coordinatesMap and: itertile.
	(distance < minDistance) ifTrue: [ minDistance := distance. tile := itertile ] ]. ].
^ tile.