matching
scanPushCharacter: character
	self atEnd ifTrue: [ ^ false ].
	(collection at: position + 1) = character ifFalse: [ ^ false ].
	stack push: character.
	position := position + 1.
	^ true