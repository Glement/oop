initialization
initialize
	super initialize.
	self size: self soldierSize.
	AP := 2.
	state:= #intact.
	stats:=BlTextElement  new
	size: 384@64.
	^ self.