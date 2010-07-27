matching
omitMatch: input
	(child omitMatch: input) ifFalse: [ ^ false ].
	^ super omitMatch: input