visual properties
updateHealth: hitChance
	| brText |
	brText:=BrRopedText string:((health asString ), 'HP ', hitChance asString, '%').
	text text: (brText ).