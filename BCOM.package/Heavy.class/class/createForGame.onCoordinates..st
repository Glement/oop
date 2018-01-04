instance creation
createForGame: aGame onCoordinates: coordinates
|player|
player:=self new.
player addEventHandler: ((SoldierEventListener new) bcomGame: aGame).
aGame space map addChild: player.
aGame space interface addChild: player stats.
player stats relocate: 128@0.
player stats visibility: BlVisibilityHidden new.
player moveOnMap: coordinates.
player coordinatesMap: coordinates.
^ player.