visual properties
right
	| moving phasing |
	phasing := 0.
	moving := map at: (1@1).
	moving := (((moving coordinates) x - 1) * 64) @ (((moving coordinates) y - 1) * 64).
	(moving  x <= -256)
		ifTrue: [ phasing:=4. ]
		ifFalse: [ phasing:=(moving  x / -64). ].
	map tiles
		do:
			[ :a | a do: [ :atile | atile place: (atile coordinates x + phasing) @ (atile coordinates y ) ]].
	humanPlayer units
		do: [ :aplayer | 
			aplayer
				moveOnMap: (aplayer coordinates x + phasing) @ (aplayer coordinates y) ].
	alienPlayer units
		do: [ :aplayer | 
			aplayer
				moveOnMap: (aplayer coordinates x + phasing) @ (aplayer coordinates y) ].