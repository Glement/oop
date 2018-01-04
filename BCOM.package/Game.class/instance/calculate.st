visual properties
calculate
|soldier|
soldier := self human unitWithIndex: currentSoldier.
self alien units do: [ :enemy| enemy updateHealth: (soldier hitChanceTo: enemy onMap: self map) ].
^ self.