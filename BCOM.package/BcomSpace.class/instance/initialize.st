initialization
initialize
	super initialize.
	endTurn:=BlTextElement new.
	endTurn background: Color red.
	reload :=BlTextElement new.
	reload background: Color gray.
	map:=BlElement new 
	size: 1280@768.
	interface :=BlElement new 
	size: 1280@128.
	interface background: Color gray.
	grid:=BlElement new
	size: 1280@896.
	self windowExtent: 1280@896.
	self root addChild: grid.
	grid addChild: map.
	map relocate: 0@0.
	grid addChild: interface.
	interface relocate: 0@768.
	left:=BlElement new.
	left background: (self backBuild: 'left.png').
	left size: 32@32.
	up:=BlElement new.
	up background: (self backBuild: 'up.png').
	up size: 32@32.
	down:=BlElement new.
	down background: (self backBuild: 'down.png').
	down size: 32@32.
	right:=BlElement new.
	right background: (self backBuild: 'right.png').
	right size: 32@32.
	interface addChild: reload.
	reload size: 64@32.
	reload relocate: 640@0.
	interface addChild: endTurn.
	endTurn  size: 64@32.
	endTurn relocate: 704@0.