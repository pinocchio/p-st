matching
parseOn: input
	| position outputPosition |
	(child parseOn: input) ifFalse: [ ^ false ].
	^ super parseOn: input