Class representing a game map. Map is a collection of tiles with simple API of getting a tile with x and y coordinates and reading a map from the file. Map can be read in two modes - usual, with image loading and placing on the grid, and utility mode prefered for calculations, pathfinding and testing.

API:
at:and: - returns a tile with x and y coodinates; nil if tile doesn't exist
read: - reads a map from 'map.txt' and places tiles on the grid given as a parameter
readUtility - read a map in utility mode, without image loading and placing on the grid.
markUdef - operation over all tiles, chaging their pathfindingFlag to #undef

Game map is hardcoded to 60 x 40 size.