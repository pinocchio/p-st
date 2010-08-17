inserting
write: character
	| oldParses |
	text add: character.
	oldParses := parses.
	parses := self parses.
	oldParses
		ifTrue: [ parses ifFalse: [ output errorColor ] ]
		ifFalse: [ parses ifTrue: [ ^ self repaint ]].

	output << character