matching
scanPushCharacter: character
	self atEnd ifTrue: [ ^ false ].
	(collection at: position + 1) asInteger = character ifFalse: [ ^ false ].
	stack push: character asCharacter.
	position := position + 1.
	^ true