accessing
getNeighboursOnMap: aMap
	| neighbour stack|
	stack := Stack new.
	1 to: 4 do: [ :index | 
	neighbour := nil.
	
	index = 4
		ifTrue: [ neighbour := aMap at: (self coordinatesMap x - 1) @ self coordinatesMap y ].
	index = 2
		ifTrue: [ neighbour := aMap at: (self coordinatesMap x + 1) @ self coordinatesMap y ].
	index = 1
		ifTrue: [ neighbour := aMap at: self coordinatesMap x @ (self coordinatesMap y - 1) ].
	index = 3
		ifTrue: [ neighbour := aMap at: self coordinatesMap x @ (self coordinatesMap y + 1) ].
	
	neighbour isNotNil
	ifTrue: [ stack push: neighbour ].
	].
	^ stack