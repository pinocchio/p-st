matching
omitMatch: input
	(child omitMatch: input) ifFalse: [ ^ false ].
	[ input skipWhitespace. child omitMatch: input ] whileTrue.
	^ true