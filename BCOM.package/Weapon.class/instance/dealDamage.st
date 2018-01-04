actions
dealDamage
|dice|
dice := 100 atRandom.
(criticalChance > dice)
ifTrue: [ ^ (self getCriticalDamage) ]
ifFalse: [ ^ (self getDamage ) ].