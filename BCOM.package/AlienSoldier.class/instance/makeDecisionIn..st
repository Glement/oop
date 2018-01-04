AI
makeDecisionIn: aGame
|accessibleTiles maxWeightTile anim target shot|
AP := 2.
(self weapon rounds = 0) ifTrue: [ self weapon reload. AP := AP - 1 ].
accessibleTiles := self getAccessibleTilesInGame: aGame.
maxWeightTile := self maxWeight: aGame ofTiles: accessibleTiles.
accessibleTiles := self getTrajectoryTo: maxWeightTile InGame: aGame.
accessibleTiles isNil ifFalse: [ anim := BlSequentialAnimation new addAll: (accessibleTiles collect: [ :tTile | aGame animation: self to: tTile ]).
anim start.
self coordinatesMap: maxWeightTile.
AP := AP - 1 ].
(AP > 0) ifTrue: [ target := self getPriorityTarget: aGame. (target = 0) not ifTrue: [ target := aGame human unitWithIndex: target. 
		shot := self shootAtTarget: target onMap: aGame map. shot ifTrue: [ AP:=0 ] ] ].
(aGame human units) removeAllSuchThat: [:sold | sold health <1].
^ self.