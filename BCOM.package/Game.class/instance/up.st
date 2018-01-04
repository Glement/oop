visual properties
up
	| moving phasing |
	phasing := 0.
	moving := map at: 60 @ 40.
	moving := ((moving coordinates x - 1) * 64) @ ((moving coordinates y - 1) * 64).
	moving y >=960
		ifTrue: [ phasing := 4 ]
		ifFalse: [ phasing := (moving y - 704) / 64 ].
	map tiles do: [ :a | a do: [ :atile | atile place: atile coordinates x @ (atile coordinates y - phasing) ] ].
	humanPlayer units do: [ :aplayer | aplayer moveOnMap: aplayer coordinates x @ (aplayer coordinates y - phasing) ].
	alienPlayer units do: [ :aplayer | aplayer moveOnMap: aplayer coordinates x @ (aplayer coordinates y - phasing) ]