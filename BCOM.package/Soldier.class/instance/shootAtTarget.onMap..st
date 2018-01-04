actions
shootAtTarget: aTarget onMap: aMap
|percentage dice damage|
percentage := self hitChanceTo: aTarget onMap: aMap.
dice := 100 atRandom.
((percentage <= 0) or: (self AP < self weapon APForShoot))
ifTrue: [ ^ false ]
ifFalse: 
	[
		(percentage >= dice)
		ifTrue:
		[
			damage := weapon dealDamage.
			aTarget takeDamage: damage.
			(weapon getArmorPierce)
			ifTrue: [ aTarget looseArmor ].
		] 
	].
AP := 0.
weapon makeShoot.
^ true.