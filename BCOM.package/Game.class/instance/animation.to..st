visual properties
animation: element to: coordinate
   |trans rotation| 
	rotation:=0.
	trans:=BlNumberTransition new
       from: ((element coordinates x -1)*64)@((element coordinates y -1)*64)  ;
       to: ((coordinate x -1)*64)@((coordinate y -1)*64);
       onStepDo: [ :aPosition | element relocate: aPosition.
		((element coordinates x-1)*64 < aPosition  x)
	ifTrue: [
		rotation:=-90. 
		element transform
		rotateBy: 90;
		apply. ].
		((element coordinates x-1)*64 > aPosition  x)
	ifTrue: [ 
		rotation:=-270. 
		element transform
		rotateBy: 270;
		apply. ].
		((element coordinates y-1)*64 < aPosition  y)
	ifTrue: [ 
		rotation:=-180. 
		element transform
		rotateBy: 180;
		apply. ].
		((element coordinates y-1)*64 > aPosition  y)
	ifTrue: [ 
		element transform
		rotateBy: 0;
		apply. ].
	element text transform 
	rotateBy: rotation;
	apply.
	element coordinates: (aPosition x/64+1)@(aPosition y/64+1).];
       target: element.
	element coordinates: coordinate.
	^ trans.