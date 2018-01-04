accessing
isFreeInGame: aGame
|aliens humans|
aliens := aGame alien units.
humans := aGame human units.

(isFullCover) ifTrue: [ ^ false ].
aliens do: [ :a | (a coordinates = coordinates ) ifTrue: [ ^ false ] ].
humans do: [ :h | (h coordinates = coordinates ) ifTrue: [ ^ false ] ].

^ true.