calculating
hitChanceTo: target onMap: aMap
|chance targetCoord x y x1 y1 steep coverTileX coverTileY facingTileX facingTileY distance tmp error itery itertile|
	chance := 0.
	targetCoord := target coordinatesMap.
	distance := (Aux distanceBetween: coordinatesMap and: targetCoord) asInteger.
 
	facingTileX := nil.
	facingTileY := nil.
	coverTileX := nil.
	coverTileY := nil.
	
	(distance > shootRange)
		ifTrue: [ ^ chance ].
	(weapon rounds > 0)
		ifFalse: [ ^ chance ].
 
	(targetCoord x > coordinatesMap x)
		ifTrue: [ facingTileX := aMap at: ((targetCoord x - 1)@(targetCoord y)).
			coverTileX := aMap at: ((coordinatesMap x + 1)@(coordinatesMap y)) ].
 
	(targetCoord x < coordinatesMap x)
		ifTrue: [ facingTileX := aMap at: ((targetCoord x + 1)@(targetCoord y)).
			coverTileX := aMap at: ((coordinatesMap x - 1)@(coordinatesMap y)) ].
 
	(targetCoord y > coordinatesMap y)
		ifTrue: [ facingTileY := aMap at: ((targetCoord x)@(targetCoord y - 1)).
			coverTileY := aMap at: ((coordinatesMap x)@(coordinatesMap y + 1)) ].
 
	(targetCoord y < coordinatesMap y)
		ifTrue: [ facingTileY := aMap at: ((targetCoord x)@(targetCoord y + 1)).
			coverTileY := aMap at: ((coordinatesMap x)@(coordinatesMap y - 1)) ].
 
	x := coordinatesMap x.
	y := coordinatesMap y.
	x1 := targetCoord x.
	y1 := targetCoord y.
 
	steep := (y1 - y) abs > (x1 - x) abs.
 
	(steep)
		ifTrue: [ 
			tmp := y.
			y := x.
			x := tmp.
			tmp := y1.
			y1 := x1.
			x1 := tmp ].
	(x > x1)
		ifTrue: [ tmp := x.
			x := x1.
			x1 := tmp.
			tmp := y.
			y := y1.
			y1 := tmp ].
 
	distance := (x1 - x) @ ((y1 - y) abs).
 
	(facingTileX isNotNil and: [facingTileY isNotNil])
		ifTrue: [ 
			(facingTileX isFullCover and: facingTileY isFullCover)
			ifTrue: [ ^ chance ] ].
 
	error := (distance x asFloat) / 2.
	tmp := (y < y1)
		ifTrue: [ 1 ]
		ifFalse: [ -1 ].
 
	itery := y.
 
	x to: x1 do: [ :iterx | 
		itertile := (steep
			ifTrue: [ aMap at: (itery@iterx) ]
			ifFalse: [ aMap at: (iterx@itery) ]).
 
		(((facingTileX isNotNil and: [itertile coordinatesMap = facingTileX coordinatesMap])
			or:
				(facingTileY isNotNil and: [itertile coordinatesMap = facingTileY coordinatesMap]))
			or:
				((coverTileX isNotNil and: [itertile coordinatesMap = coverTileX coordinatesMap])
			or:
				(coverTileY isNotNil and: [itertile coordinatesMap = coverTileY coordinatesMap])))
			ifFalse: [ (itertile isFullCover) ifTrue: [ ^ chance ] ].
 
			error := error - distance y.
			(error < 0)
			ifTrue: [ itery := itery + tmp.
						 error := error + distance x ] ].
 
	distance := (Aux distanceBetween: coordinatesMap and: targetCoord) asInteger.
	chance := precision - ((distance/3) asInteger).
 
	(distance <= 5)
		ifTrue: [ chance := chance - ((8 - distance) * 5) ].
 
	((facingTileX isNotNil and: [facingTileX isFullCover])
		xor: (facingTileY isNotNil and: [facingTileY isFullCover]))
		ifTrue: [ chance := chance - 40 ]
		ifFalse: [
			((facingTileX isNotNil and: [facingTileX isCover])
				or: (facingTileY isNotNil and: [facingTileY isCover]))
				ifTrue: [ chance := chance - 20 ] ].
 
	chance := chance + weapon precisionModifier.
	
	chance:= chance min: 100.
	chance:= chance max: 0.
	
	^ chance