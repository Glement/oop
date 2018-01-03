# BI-OOP
Turn-based XCOM-like strategy.

24.11.2017
We wrote description of classes, and choosed tiels for graphics.
1.12.2017
Nothing significant were done.
8.12.2017
Auxiliary classes for game calculations, like Queue and Aux class.
15.12.2017
Gameplay decisions, learning how to use Bloc to draw.
22.12.2017
Reading game map from file, pathfinding algorithm for game characters, characters and weapons API. Learning how to use Bloc for game controls.
29.12.2017
Using of Bresenham's algorithm for shoot chance calculations, main game structure building.
5.1.2017
Aliens min-max AI. Final polishing. Project presentation.

Graphics and controls are made via Bloc and it's MVC model. The package is split into 8 tags: Aux, Core, Listeners, Map, Players, Soldiers, Tests and Weapons.
Game is the essential game class. It contains all nececcary game information, like a game map, game characters and an instance of BcomSpace, which is used for drawing and controls. Game object can be initialized into 2 ways. buildUp initialization method is used for preparing fuctional game instance for launching and playing. testInstance is used to particially initialize Game for tests. Tile pics reading can take some time, so testInstance use special readForTest method to read map without reading tile pictures.
