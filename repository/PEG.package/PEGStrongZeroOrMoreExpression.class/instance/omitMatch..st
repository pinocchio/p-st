matching
omitMatch: input
	[ child omitMatch: input ] whileTrue.
	^ true