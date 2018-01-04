AI
getPriorityTarget: aGame
|maxHitChance targetIndex hitChance currentIndex|
currentIndex := 0.
hitChance := -1.
targetIndex := 0.
maxHitChance := -1.
aGame human units do: [ :human | currentIndex := currentIndex + 1. hitChance := self hitChanceTo: human onMap: aGame map. 
	hitChance > maxHitChance ifTrue: [ maxHitChance := hitChance. targetIndex := currentIndex. ] ].
^ targetIndex.
