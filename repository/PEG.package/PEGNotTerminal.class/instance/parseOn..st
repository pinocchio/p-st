matching
parseOn: input
	input peek = char ifTrue: [ ^ false ].
	^ true