inserting
write: character
	| oldParses |
	text add: character.
	oldParses := parses.
	parses := self parses.
	(oldParses and: [ parses not ]) ifTrue: [ output errorColor ].
	output << character.
	(parses and: [ oldParses not ]) ifTrue: [ self repaint ]