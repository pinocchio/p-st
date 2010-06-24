matching
omitMatch: input
	| match |
	match := child omitMatch: input.
	match ifNil: [ self consume ifTrue: [ input forward ]. ^ true ].
	input backward.
	^ nil