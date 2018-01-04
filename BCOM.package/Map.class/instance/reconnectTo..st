reading
reconnectTo: aGame
	| tile line |
	1 to: 40 do: [ :y | 
		line := tiles at: y.
		1 to: 60 do: [ :x | 
			tile := line at: x.
			tile isNil
				ifFalse: [ 
					tile removeFromParent.
					aGame space map addChild: tile.
					tile place: x @ y ] ] ].
	^ self