matching
omitMatch: input
	[ input skipWhitespace.
	child omitMatch: input ] whileTrue.
	^ true