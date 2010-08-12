accessing
readCharacter
	| character |
	character := readline readCharacter.
	(actions
		at: character asInteger
		ifAbsent: [ ^ readline write: character ]) value