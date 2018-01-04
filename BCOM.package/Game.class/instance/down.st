visual properties
down
	| moving phasing |
	phasing := 0.
	moving := map at: 1 @ 1.
	moving := (((moving coordinates) x - 1) * 64) @ (((moving coordinates) y - 1) * 64).
	(moving  y <= -256)
		ifTrue: [ phasing:=4. ]
		ifFalse: [ phasing:=(moving  y) / -64. ].
	map tiles
		do:
			[ :a | a do: [ :atile | atile place: (atile coordinates x) @ (atile coordinates y + phasing) ]].
	humanPlayer units
		do: [ :aplayer | 
			aplayer
				moveOnMap: (aplayer coordinates x) @ (aplayer coordinates y + phasing) ].
	alienPlayer units
		do: [ :aplayer | 
			aplayer
				moveOnMap: (aplayer coordinates x) @ (aplayer coordinates y + phasing) ]