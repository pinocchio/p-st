matching
scanCharacter: character
	self atEnd ifTrue: [ ^ false ].
	(collection at: position + 1) asInteger = character ifFalse: [ ^ false ].
	position := position + 1.
	^ true