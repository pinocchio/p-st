matching
omitMatch: input
	input peek = char ifTrue: [ ^ false ].
	^ true