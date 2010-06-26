matching
omitMatch: input
	| char |
	char := input peek.
	char ifNil: [ ^ false ].
	(char >= start and: [ char <= stop ])
		ifTrue: [ input forward. ^ true ].
	^ false