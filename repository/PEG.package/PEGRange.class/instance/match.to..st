matching
match: input to: stream
	| char |
	char := input peek.
	char ifNil: [ ^ false ].
	(char >= start and: [ char <= stop ])
		ifTrue: [ stream push: char. input forward. ^ true ].
	^ false