matching
parseOn: input
	| char |
	(string indexOf: (char := input peek)) = 0 ifTrue: [ ^ false ].
	input stack push: char.
	input forward.
	^ true