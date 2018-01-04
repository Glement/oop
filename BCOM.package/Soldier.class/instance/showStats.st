visual properties
showStats
	| statText |
	statText:=BrRopedText string:'Class ', (class) asString, '  AP=',(self AP)asString  ,'  Ammo=' , (self weapon rounds)asString, '  Armor=', (self armor) asString.
	self stats text: statText.
	self stats visibility: BlVisibilityVisible new.