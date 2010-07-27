matching
parseOn: input
	| char charValue |
	char := input next.
	char ifNil: [ ^ false ].
	charValue := char asInteger.
	(charValue < start or: [ charValue > stop ]) ifTrue: [ ^ false ].
	input stack push: char.
	^ true