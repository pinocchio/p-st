matching
privateMatch: input
	| char |
	char := input next.
	char ifNil: [ ^ char ].
	(char >= start and: [ char <= stop ])
		ifTrue: [ ^ char asString ].
	^ nil