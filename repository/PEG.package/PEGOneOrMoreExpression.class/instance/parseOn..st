matching
parseOn: input
	(child parseOn: input) ifFalse: [ ^ false ].
	^ super parseOn: input