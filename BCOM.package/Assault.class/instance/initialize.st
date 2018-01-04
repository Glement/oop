initialization
initialize
super initialize.
class := #Assault.
health := 19.
armor := 2.
precision := 65 + (10 atRandom).
weapon := Shotgun new.
moveRange := 9.
shootRange := 13.
self healthText.
self imageMarked: 'soldierSelected.png'.
self image: 'soldier.png'.
^ self.