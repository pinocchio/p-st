matching
parseOn: input
	| char index |
	char := input peek.
	index := string indexOf: char.
	index = 0 ifTrue: [ ^ false ].
	input stack push: (string at: index).
	input forward.
	^ true