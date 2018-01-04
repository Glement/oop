actions
spawn: aGame
| player |
units := OrderedCollection new.
player:=AlienSoldier createForGame: aGame onCoordinates: (47@26).
self addUnit: player.
player:=AlienSoldier createForGame: aGame onCoordinates: (45@26).
self addUnit: player.
player:=AlienSoldier createForGame: aGame onCoordinates: (47@24).
self addUnit: player.
player:=AlienSoldier createForGame: aGame onCoordinates: (45@24).
self addUnit: player.
player:=AlienSoldier createForGame: aGame onCoordinates: (47@22).
self addUnit: player.
player:=AlienSoldier createForGame: aGame onCoordinates: (45@22).
self addUnit: player.
^ self.