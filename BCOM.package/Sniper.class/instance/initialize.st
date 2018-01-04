initialization
initialize
super initialize.
class := #Sniper.
health := 10.
armor := 0.
precision := 70 + (20 atRandom).
weapon := SniperRifle new.
moveRange := 9.
shootRange := 26.
self healthText.
self imageMarked: 'soldierSelected.png'.
self image: 'soldier.png'.
^ self.