initialization
testInstance
	map := Map new readForTests.
	humanPlayer testSpawn: self.
	alienPlayer testSpawn: self.
	currentSoldier := 1.
	^ self