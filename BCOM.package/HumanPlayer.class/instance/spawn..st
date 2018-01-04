actions
spawn: aGame
| player |
units := OrderedCollection new.
player:= Heavy createForGame: aGame onCoordinates: (13@14). 
self addUnit: player.
player:= Assault createForGame: aGame onCoordinates: (15@14).
self addUnit: player.
player:= Sniper createForGame: aGame onCoordinates: (13@16).
self addUnit: player.
player:= Support createForGame: aGame onCoordinates: (15@16). 
self addUnit: player.
player:= Assault createForGame: aGame onCoordinates: (13@18).
self addUnit: player.
player:= Support createForGame: aGame onCoordinates: (15@18).
self addUnit: player.