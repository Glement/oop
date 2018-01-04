calculating
getTrajectoryTo: targetCoordinates InGame: aGame
	| aMap targetTile path ancestors distances queue tile neighbs pathBuilt path2 |
	aMap := aGame map.
	targetTile := aMap at: targetCoordinates.
	pathBuilt := false.
	path := nil.
	((targetTile isFreeInGame: aGame) not or: targetTile isCover)
		ifTrue: [ ^ nil ].
	targetCoordinates = self coordinatesMap
		ifTrue: [ ^ nil ].
	aMap markUndef.
	ancestors := Dictionary new.
	distances := Dictionary new.
	queue := Queue new.
	(aMap at: self coordinatesMap) pathfindingFlag: #open.
	queue push: (aMap at: self coordinatesMap).
	distances at: self coordinatesMap put: 0 asInteger.
	[ queue isEmpty or: pathBuilt ]
		whileFalse: [ tile := queue pop. neighbs := tile getNeighboursOnMap: aMap.
			neighbs do: [ :neighbour | 
				neighbour isNotNil
					ifTrue: [ (neighbour pathfindingFlag = #undef and: (neighbour isFreeInGame: aGame))
							ifTrue: [ (distances at: tile coordinatesMap) + 1 > moveRange
									ifTrue: [ ^ nil ].
								neighbour pathfindingFlag: #open.
								distances at: neighbour coordinatesMap put: ((distances at: tile coordinatesMap) + 1) asInteger.
								ancestors at: neighbour coordinatesMap put: tile coordinatesMap.
								queue push: neighbour.
								neighbour coordinatesMap = targetCoordinates
									ifTrue: [ pathBuilt := true ] ] ] ].
			tile pathfindingFlag: #closed ].
	path := Stack new.
	tile := targetCoordinates.
	[ tile isNotNil ]
		whileTrue: [ path push: tile.
			tile := ancestors at: tile ifAbsent: [ nil ] ].
	path pop.
	path2 := OrderedCollection new.
	path do: [ :acoord | path2 add: (aGame map at: acoord) coordinates ].
	^ path2