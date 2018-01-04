initialization
initialize
super initialize.
class := #AlienSoldier.
health := 18.
armor := 2.
precision := 70.
moveRange := 10.
shootRange := 16.
weapon := AlienBlaster new.
fraction := #Aliens.
self healthText.
self imageMarked: 'alienMarked.png'.
self image: 'alien.png'.
^ self.