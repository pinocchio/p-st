matching
parseOn: input
	(child parseOn: input) ifFalse: [ ^ false ].
	[ input skipWhitespace. child parseOn: input ] whileTrue.
	^ true