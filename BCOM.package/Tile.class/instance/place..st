accessing
place: newCoordinates
coordinates := newCoordinates.
self relocate: ((coordinates x -1)*64)@((coordinates y -1)* 64).
^ self. 