matching
omitMatch: input
	(child omitMatch: input) ifFalse: [ ^ false ].
	[ input omitSkipWhitespace.
	child omitMatch: input ] whileTrue.
	^ true