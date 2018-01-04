accessing
at: coordinates
(((coordinates x > 0) and: (coordinates x < 61)) and: ((coordinates y > 0) and: (coordinates y < 41)))
ifTrue: [^((tiles at: coordinates y) at: coordinates x)]
ifFalse: [ ^nil. ]