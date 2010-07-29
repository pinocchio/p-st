matching
omitMatch: input
	| char |
	char := input peek.
	(string indexOf: char) = 0 ifTrue: [ ^ false ].
	input forward.
	^ true