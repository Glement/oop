visual properties
healthText
| brText |
	text := BlTextElement new.
	brText:=BrRopedText string:((health asString ), 'HP').
	text text: (brText ).
	text size: 64@64.
	self addChild: text.