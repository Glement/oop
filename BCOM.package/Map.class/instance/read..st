reading
read: aGame
	| file line ch tile |
	file := FileStream fileNamed: 'map.txt'.
	tile := nil.
	1 to: 40 do: [ :y | 
		line := file nextLine.
		1 to: 60 do: [ :x | 
			tile := nil.
			ch := (line at: x) asCharacter.
			tile := Tile getByType: ch.
			tile isNil
				ifFalse: [ tile coordinatesMap: x @ y.
					tile addEventHandler: (TileEventListener new bcomGame: aGame).
					aGame space map addChild: tile.
					tile place: x @ y.
					(tiles at: y) add: tile ] ] ].
	file close.
	^ self