matching
parseOn: input
	[ input skipWhitespace.
	child parseOn: input ] whileTrue.
	^ true