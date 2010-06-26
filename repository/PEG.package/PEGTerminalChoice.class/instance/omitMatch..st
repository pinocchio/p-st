matching
omitMatch: input
	| char |
	char := input peek.
	(string includes: char) ifFalse: [ ^ false ].
	input forward.
	^ true