actions
pop
|first|
(self isEmpty)
ifTrue: [ ^nil. ]
ifFalse: [ first := que first. que removeFirst. ^ first. ]