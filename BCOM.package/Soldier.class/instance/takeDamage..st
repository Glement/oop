actions
takeDamage: aDamage
	| dmg |
	dmg := aDamage - self armor.
	dmg := 0 max: dmg.
	health := health - aDamage.
	health < 1
		ifTrue: [ self die ].
	self updateHealth.
	^ self