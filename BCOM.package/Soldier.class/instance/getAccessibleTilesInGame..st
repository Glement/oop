calculating
getAccessibleTilesInGame: aGame
	| aMap ancestors distances queue tile array neighbs |
	aMap := aGame map.
	aMap markUndef.
	ancestors := Dictionary new.
	distances := Dictionary new.
	queue := Queue new.
	array := OrderedCollection new.
	(aMap at: self coordinatesMap) pathfindingFlag: #open.
	queue push: (aMap at: self coordinatesMap).
	distances at: self coordinatesMap put: 0 asInteger.
	[ queue isEmpty ]
		whileFalse: [ tile := queue pop.
			neighbs := tile getNeighboursOnMap: aMap.
			neighbs do: [ :neighbour |
				neighbour isNotNil
					ifTrue: [ ((neighbour pathfindingFlag = #undef and: (neighbour isFreeInGame: aGame)) and: (distances at: tile coordinatesMap) + 1 < moveRange)
							ifTrue: [ neighbour pathfindingFlag: #open.
								distances at: neighbour coordinatesMap put: ((distances at: tile coordinatesMap) + 1) asInteger.
								ancestors at: neighbour coordinatesMap put: tile coordinatesMap.
								queue push: neighbour.
								neighbour isCover
									ifFalse: [ array add: neighbour coordinatesMap ] ] ] ].
			tile pathfindingFlag: #closed ].
	^ array