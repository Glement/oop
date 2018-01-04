initialization
initialize
super initialize.
class := #Heavy.
health := 17.
armor := 2.
precision := 60+(10 atRandom).
weapon := AssaultRifle new.
shootRange := 13.
moveRange := 8.
self healthText.
self imageMarked: 'soldierSelected.png'.
self image: 'soldier.png'.
^ self.