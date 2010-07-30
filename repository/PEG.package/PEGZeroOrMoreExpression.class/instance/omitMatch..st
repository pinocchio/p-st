matching
omitMatch: input
	[ input omitSkipWhitespace.
	child omitMatch: input ] whileTrue.
	^ true