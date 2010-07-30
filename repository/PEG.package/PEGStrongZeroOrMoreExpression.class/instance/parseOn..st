matching
parseOn: input
	[ (child parseOn: input) ] whileTrue.
	^ true