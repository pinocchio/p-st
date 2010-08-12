accessing
readCharacter
	| character |
	character := readline readCharacter.
	(actions
		at: character asInteger
		ifAbsent: [
			"self warn: character asInteger."
			^ readline write: character ]) value