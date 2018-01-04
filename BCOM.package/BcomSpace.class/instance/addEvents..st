adding
addEvents: aGame
	left addEventHandler: (RightEventListener new bcomGame: aGame).
	interface addChild: left.
	left relocate: 0@0.
	right addEventHandler: (LeftEventListener new bcomGame: aGame).
	interface addChild: right.
	right relocate: 64@0.
	down addEventHandler: (UpEventListener new bcomGame: aGame).
	interface addChild: down.
	down relocate: 96@0.
	up addEventHandler: (DownEventListener new bcomGame: aGame).
	interface addChild: up.
	up relocate: 32@0.
	reload text: (BrRopedText string: 'Reload').
	endTurn text: (BrRopedText string: 'End turn').
	reload addEventHandler: (ReloadEventListener new bcomGame: aGame).
	endTurn addEventHandler: (EndTurnEventListener new bcomGame: aGame).