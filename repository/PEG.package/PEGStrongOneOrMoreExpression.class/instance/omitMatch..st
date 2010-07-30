matching
omitMatch: input
	(child omitMatch: input) ifFalse: [ ^ false ].
	[ child omitMatch: input ] whileTrue.
	^ true