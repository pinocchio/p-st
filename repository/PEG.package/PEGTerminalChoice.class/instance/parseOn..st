matching
parseOn: input
	| char |
	char := input peek.
	(string indexOf: char) = 0 ifTrue: [ ^ false ].
	input stack push: char.
	input forward.
	^ true