matching
match: input to: stream
	| char index |
	char := input next.
	index := string indexOf: char.
	index = 0 ifTrue: [ ^ false ].
	stream push: (string at: index).
	^ true