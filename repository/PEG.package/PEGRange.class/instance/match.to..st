matching
match: input to: stream
	| char charValue |
	char := input next.
	char ifNil: [ ^ false ].
	charValue := char asInteger.
	(charValue < start or: [ charValue > stop ]) ifTrue: [ ^ false ].
	stream push: char.
	^ true