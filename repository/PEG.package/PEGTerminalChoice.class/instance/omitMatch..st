matching
omitMatch: input
	| char |
	char := input next.
	(string includes: char) ifFalse: [ ^ false ].
	^ true