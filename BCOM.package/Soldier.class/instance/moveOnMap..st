actions
moveOnMap: coord
coordinates := coord.
self relocate: ((coord x -1)*64)@((coord y -1)*64).
self changed.
^ self.