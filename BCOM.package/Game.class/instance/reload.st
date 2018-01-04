actions
reload
	(humanPlayer unitWithIndex: currentSoldier ) weapon reload.
	(humanPlayer unitWithIndex: currentSoldier ) AP: (humanPlayer unitWithIndex: currentSoldier ) AP -1.
	(humanPlayer unitWithIndex: currentSoldier ) AP <1
	ifTrue:[ ^self endTurn.].
	self calculate.
	(humanPlayer unitWithIndex: currentSoldier ) showStats.