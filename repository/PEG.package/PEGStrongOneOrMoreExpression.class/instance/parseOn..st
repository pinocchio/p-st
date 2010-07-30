matching
parseOn: input
	(child parseOn: input) ifFalse: [ ^ false ].
	[ child parseOn: input ] whileTrue.
	^ true