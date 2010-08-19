matching
scanCharacter: character
	self atEnd ifTrue: [ ^ false ].
	(collection at: position + 1) = character ifFalse: [ ^ false ].
	position := position + 1.
	^ true