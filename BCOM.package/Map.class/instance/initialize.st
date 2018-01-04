initialization
initialize
super initialize.
tiles := OrderedCollection new.
1 to: 40 do:
[ :y | tiles add: (OrderedCollection new) ].
^ self.