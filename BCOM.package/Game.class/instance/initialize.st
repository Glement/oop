initialization
initialize
	super initialize.
	space := BcomSpace new.
	space addEvents: self.
	humanPlayer := HumanPlayer new.
	alienPlayer := AlienPlayer new.
	endGame     := EndGame new.
	playersArray :=OrderedCollection new.
	endGame bcomGame: self.
	playersArray add: humanPlayer.
	playersArray add: alienPlayer.
	^ self