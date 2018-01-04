initialization
initialize
super initialize.
class := #Support.
health := 15.
armor := 1.
precision := 70 + (5 atRandom).
weapon := Carabine new.
moveRange := 10.
shootRange := 14.
self healthText.
self imageMarked: 'soldierSelected.png'.
self image: 'soldier.png'.
^ self.