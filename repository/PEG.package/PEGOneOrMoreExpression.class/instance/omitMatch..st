matching
omitMatch: input
	| position outputPosition |
	(child omitMatch: input) ifFalse: [ ^ false ].
	^ super omitMatch: input